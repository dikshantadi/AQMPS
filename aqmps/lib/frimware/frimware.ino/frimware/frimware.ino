#include <SPI.h>
#include <LoRa.h>
#include <SDS011.h>

// LoRa pins
#define SS_PIN 8    // Chip select (NSS)
#define RST_PIN 7   // Reset (RST)
#define DIO0_PIN 9  // DIO0 (Interrupt pin)

// SDS011 sensor pins
#define SDS_RX 2
#define SDS_TX 3

// Initialize SDS011 sensor and LoRa module
SDS011 mySDS;
float pm25, pm10;

void setup() {
  // Start Serial Monitor
  Serial.begin(9600);
  while (!Serial);
  Serial.println("SDS011 Sensor + LoRa Sender");

  // Initialize LoRa
  LoRa.setPins(SS_PIN, RST_PIN, DIO0_PIN);
  if (!LoRa.begin(915E6)) {  // Use 915 MHz (adjust based on region)
    Serial.println("LoRa initialization failed!");
    while (1);
  }
  Serial.println("LoRa Initialized");

  // Initialize SDS011 sensor
  mySDS.begin(SDS_RX, SDS_TX);
  mySDS.wakeup();  // Wake up the sensor for data reading
  delay(3000);  // Wait for sensor initialization
  Serial.println("SDS011 Sensor Initialized");
}

void loop() {
  // Read PM2.5 and PM10 data from SDS011 sensor
  int error = mySDS.read(&pm25, &pm10);
  
  if (!error) {
    // Display the sensor data on Serial Monitor
    Serial.print("PM2.5: ");
    Serial.print(pm25);
    Serial.print(" µg/m³, PM10: ");
    Serial.print(pm10);
    Serial.println(" µg/m³");

    // Send the data over LoRa
    String message = String(pm25) + "," + String(pm10);  // Format as "PM25,PM10"
    LoRa.beginPacket();
    LoRa.print(message);  // Send data as packet
    LoRa.endPacket();

    Serial.println("Data sent via LoRa");
  } else {
    Serial.println("Failed to read from SDS011");
  }

  delay(5000);  // Wait 5 seconds before sending again
}

