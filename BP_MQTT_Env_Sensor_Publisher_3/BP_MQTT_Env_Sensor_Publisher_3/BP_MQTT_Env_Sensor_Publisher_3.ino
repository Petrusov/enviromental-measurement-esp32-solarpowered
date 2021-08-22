//Bakalářský projekt  - měření enviromentálních veličin jako jsou teplota, atmosférická vlhkost, tlak a koncentrace plynů
//----------------------------------------------------------------------------------------------------------------------------------
//Knihovna pro WIFI a MQTT
#include <WiFi.h>
#include <PubSubClient.h>
#include <Wire.h>

//Knihovna pro BMP180
#include <Adafruit_BMP085.h>

//Knihovna pro HTU21D
#include <SparkFunHTU21D.h>


// Zde se definuje přepočet s na us, pro funkci deep sleep
uint64_t uS_TO_S_FACTOR = 1000000; 
// 10 minut = 600 sekund
uint64_t TIME_TO_SLEEP = 600; 

// Připojení k Wifi
const char* ssid = "SSID";
const char* password = "password";

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
int korekce = 22;

float tempBMP;
float pressureBMP;
float altitudeBMP;
float tempHTU;
float humiHTU;
double dewpoint;
double dewp;


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

senzorHTU.begin();

if (!senzorBMP.begin()) {
  Serial.println("Nemohu najít BMP180 senzor!");
  while (1) {}
}

if (!client.connected()) {
    reconnect();
  }
  client.loop();

// Napětí
   getBatVoltage();
   
    // Convert the value to a char array
    char BatVoltString[8];
    dtostrf(BatVoltage, 1, 2, BatVoltString);
    Serial.print("Napětí baterie (upravené): ");
    Serial.println(BatVoltString);
    client.publish("esp32/batvoltage", BatVoltString);

    getSolarVoltage();
    
    // Convert the value to a char array
    char SolString[8];
    dtostrf(SolarVoltage, 1, 2, SolString);
    Serial.print("Napětí panelu (upravené): ");
    Serial.println(SolString);
    client.publish("esp32/solvoltage", SolString);

//Teplota, tlak, výška BMP
    getBMPreadings();
    // Convert the value to a char array
    char BMPString[8];

    dtostrf(pressureBMP, 1, 2, BMPString);
    Serial.print("Tlak BMP: ");
    Serial.println(BMPString);
    client.publish("esp32/pressureBMP", BMPString);
/*    
    dtostrf(altitudeBMP, 1, 2, BMPString);
    Serial.print("Výška BMP: ");
    Serial.println(BMPString);
    client.publish("esp32/altitudeBMP", BMPString);
*/
//Teplota, vlhkost HTU
    getHTUreadings();
    // Convert the value to a char array
    char HTUString[8];
    dtostrf(tempHTU, 1, 2, HTUString);
    Serial.print("Teplota HTU: ");
    Serial.println(HTUString);
    client.publish("esp32/tempHTU", HTUString);
    
    dtostrf(humiHTU, 1, 2, HTUString);
    Serial.print("Vlhkost HTU: ");
    Serial.println(HTUString);
    client.publish("esp32/humidityHTU", HTUString);

    calcDefPoint(tempDS, humiHTU);
   Serial.println(dewpoint);
    char DPString[8];
    dtostrf(dewpoint, 5, 2, DPString);
    Serial.print("Rosný bod: ");
    Serial.println(DPString);
    client.publish("esp32/dewpoint", DPString);
  
  // Vše provedeno, aktivuje se deep sleep, odečítá se čas od startu programu
  
   delay(500);
 // Serial.print("Čas: ");Serial.println(myTime);
  
  Serial.println("Vše vyčteno a publikováno a teď jdu spát");
  unsigned long myTime = millis();
  esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR - myTime);
  esp_deep_sleep_start(); 
}

void loop() {
  // nikdy se sem program nedostane, protože ESP32 usne
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
  Serial.println("IP adresa: ");
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
  Serial.print("Napětí: ");
  Serial.println(BatVoltage);
  Serial.print("Hodnota vstupu: ");
  Serial.println(BatValue);
}

void getSolarVoltage(){
  SolarValue = analogRead(SOL);
  SolarVoltage = SolarValue * (7.12 / 4095.0);
  Serial.print("Napětí na vstupu sol.panelu: ");
  Serial.println(SolarVoltage);
  Serial.print("Hodnota U solárního panelu: ");
  Serial.println(SolarValue);
}

void getBMPreadings(){
 // tempBMP = senzorBMP.readTemperature(); 
  pressureBMP =  (senzorBMP.readPressure()+korekce*100)/100;
//  altitudeBMP =  senzorBMP.readAltitude();
/*  Serial.print("Teplota BMP: ");
  Serial.print(tempBMP);
*/  Serial.print("Tlak BMP: ");
  Serial.print(pressureBMP);
 /* Serial.print("Výška BMP: ");
  Serial.print(altitudeBMP);
 */ 
 }

 void getHTUreadings(){
 // tempHTU = senzorHTU.readTemperature(); 
  humiHTU =  senzorHTU.readHumidity();
 
/*  Serial.print("Teplota HTU: ");
  Serial.print(tempHTU);
*/  
  Serial.print("Vlhkost (relativní): ");
  Serial.print(humiHTU);
 }

  void calcDefPoint(float tempDS, float humiHTU){
  double gamma = log(humiHTU / 100) + ((17.62 * tempDS) / (243.5 + tempDS));
  double dewpoint = 243.5 * gamma / (17.62 - gamma);
 
  Serial.print("Rosný bod: ");
  Serial.println(dewpoint);
  char DPString[8];
    dtostrf(dewpoint, 5, 2, DPString);
    Serial.print("Rosný bod: ");
    Serial.println(DPString);
    client.publish("esp32/dewpoint", DPString);
 }
