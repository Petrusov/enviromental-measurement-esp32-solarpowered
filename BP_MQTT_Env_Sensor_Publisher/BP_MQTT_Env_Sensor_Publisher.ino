//Knihovna pro WIFI a MQTT
#include <WiFi.h>
#include <PubSubClient.h>
#include <Wire.h>

//Knihovna pro DS18B20
#include <OneWire.h>
#include <DallasTemperature.h>

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

float tempDS;

//DS18B20 definice
#define ONE_WIRE_BUS 4
OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature senzorDS(&oneWire);

void setup() {
  // Spustí sériovou konzoli pro výpis
  Serial.begin(115200);

setup_wifi();
  client.setServer(mqtt_server, 1883);
//  client.setCallback(callback);

senzorDS.begin(); 
}



void loop() {

if (!client.connected()) {
    reconnect();
  }
  client.loop();

  long now = millis();
  if (now - lastMsg > 15000) {
    lastMsg = now;
    
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

    getDSReadings();
    // Convert the value to a char array
    char DSString[8];
    dtostrf(tempDS, 1, 2, DSString);
    Serial.print("Teplota: ");
    Serial.println(DSString);
    client.publish("esp32/temp", DSString);
    
  }
}
  
void setup_wifi() {
  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    if (client.connect("ESP8266Client")) {
      Serial.println("connected");
      // Subscribe
      client.subscribe("esp32/output");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(15000);
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

void getDSReadings(){
  senzorDS.requestTemperatures(); 
  tempDS = senzorDS.getTempCByIndex(0); // Teplota v C
  Serial.print("Teplota Dalas: ");
  Serial.print(tempDS);
  //Serial.print(",");
}
