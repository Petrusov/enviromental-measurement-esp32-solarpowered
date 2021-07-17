//Bakalářský projekt  - měření enviromentálních veličin jako jsou teplota, atmosférická vlhkost, tlak a koncentrace plynů
//----------------------------------------------------------------------------------------------------------------------------------
//Knihovna pro WIFI a MQTT
#include <WiFi.h>
#include <PubSubClient.h>
#include <Wire.h>

//Knihovna pro DS18B20
#include <OneWire.h>
#include <DallasTemperature.h>

//Knihovna pro BMP180
#include <Adafruit_BMP085.h>

//Knihovna pro HTU21D
#include <SparkFunHTU21D.h>


// Připojení k Wifi
const char* ssid = "whatever2";
const char* password = "antilopa0";

// Adresa MQTT Brokeru:
//const char* mqtt_server = "192.168.1.9";
const char* mqtt_server = "192.168.1.9";

WiFiClient espClient;
PubSubClient client(espClient);

long lastMsg = 0;
char msg[50];
int value = 0;

int BatValue = 0;
int SolarValue = 0;
float BatVoltage = 0;
float SolarVoltage = 0;
const int BAT = 34;
const int SOL = 35;
int alt = 214;

float tempDS;
float tempBMP;
float pressureBMP;
float altitudeBMP;
float pressureSLBMP;
float tempHTU;
float humiHTU;
double dewpoint;
double dewp;

//DT definice
/*#define ONE_WIRE_BUS 4
OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature senzorDS(&oneWire);
*/
//BMP180 definice
Adafruit_BMP085 senzorBMP;

//HTU21D definice
HTU21D senzorHTU;

void setup() {
  // Spustí sériovou konzoli pro výpis
  Serial.begin(115200);

setup_wifi();
  client.setServer(mqtt_server, 1883);
//  client.setCallback(callback);

//senzorDS.begin();

senzorHTU.begin();

if (!senzorBMP.begin()) {
  Serial.println("Nemohu najít BMP180 senzor!");
  while (1) {}
 }

}

void loop() {
if (!client.connected()) {
    reconnect();
  }
  client.loop();

  long now = millis();
  if (now - lastMsg > 120000) {
    lastMsg = now;

// Napětí
   getBatVoltage();
   
   getSolarVoltage();
    
//Teplota Dallas
//    getDSReadings();  //vadný senzor, vyřazeno dočasně
    // Convert the value to a char array

//tlak BMP
    getBMPreadings();
      
//vlhkost HTU
    getHTUreadings();

//Rosný bod    
    calcDefPoint(tempHTU, humiHTU);

 }
}


void setup_wifi() {
  delay(10);
  // Připojení k WIFI (nutné)
  Serial.println();
  Serial.print("Připojen k: ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi připojena");
  Serial.print("IP adresa: ");
  Serial.println(WiFi.localIP());
}

void reconnect() {
  // 
  while (!client.connected()) {
    Serial.println("Pokus o připojení k MQTT Brokeru");
    // Pokus o připojení
    if (client.connect("ESP8266Client")) {
      Serial.println("připojen...");
      // Subscribe (pro případné povely)
      client.subscribe("esp32/output");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" pokus o připojení za 5 sekund");
      delay(5000);
    }
  }
} 

void getBatVoltage(){
  BatValue = analogRead(BAT);
  BatVoltage = BatValue * (7.12 / 4095.0);
 
  char BatVoltString[8];
    dtostrf(BatVoltage, 5, 2, BatVoltString);
    Serial.print("Napětí baterie (upravené): ");
    Serial.println(BatVoltString);
    client.publish("esp32/batvoltage", BatVoltString);
}

void getSolarVoltage(){
  SolarValue = analogRead(SOL);
  SolarVoltage = SolarValue * (7.12 / 4095.0);
  char SolString[8];
    dtostrf(SolarVoltage, 5, 2, SolString);
    Serial.print("Napětí panelu (upravené): ");
    Serial.println(SolString);
    client.publish("esp32/solvoltage", SolString);
}
/*
void getDSReadings(){
  senzorDS.requestTemperatures(); 
  tempDS = senzorDS.getTempCByIndex(0); // Teplota v C
  char DSString[8];
    dtostrf(tempDS, 5, 2, DSString);
    Serial.print("Teplota: ");
    Serial.println(DSString);
    client.publish("esp32/tempDS", DSString);  
}
*/
void getBMPreadings(){

    pressureBMP =  (senzorBMP.readPressure())/100.00; //+korekce*100.00)/100.00
    char BMPString[10];
    dtostrf(pressureBMP, 7, 2, BMPString);
    Serial.print("Tlak BMP: ");
    Serial.println(BMPString);
    client.publish("esp32/pressureBMP", BMPString);
     altitudeBMP = (senzorBMP.readAltitude());
    Serial.print("Výška: ");
    Serial.println(altitudeBMP);
     tempBMP = (senzorBMP.readTemperature());
    Serial.print("Teplota BMP: ");
    Serial.println(tempBMP);

    pressureSLBMP =  (senzorBMP.readSealevelPressure(alt))/100.00; 
    dtostrf(pressureSLBMP, 7, 2, BMPString);
    Serial.print("Tlak podle hladiny moře: ");
    Serial.println(BMPString);
    client.publish("esp32/pressuresealevel", BMPString);
/*    */
 }

 void getHTUreadings(){
    tempHTU = senzorHTU.readTemperature();
    char HTUString[8];
    dtostrf(tempHTU, 5, 2, HTUString);
    Serial.print("Teplota HTU: ");
    Serial.println(HTUString);
    client.publish("esp32/tempHTU", HTUString);
    
    humiHTU =  senzorHTU.readHumidity();
    dtostrf(humiHTU, 5, 2, HTUString);
    Serial.print("Vlhkost HTU: ");
    Serial.println(HTUString);
    client.publish("esp32/humidityHTU", HTUString);
 }

  void calcDefPoint(float tempHTU, float humiHTU){
  double gamma = log(humiHTU / 100) + ((17.62 * tempHTU) / (243.5 + tempHTU));
  double dewpoint = 243.5 * gamma / (17.62 - gamma);
 
  char DPString[8];
    dtostrf(dewpoint, 5, 2, DPString);
    Serial.print("Rosný bod: ");
    Serial.println(DPString);
    client.publish("esp32/dewpoint", DPString);
 }
