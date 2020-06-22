#include <SD.h>

  int temp_digit;
  float temp_tension;
  float temp_celsius;
  int time1;

  const int tempSensor = A1;

  File myFile;

void setup() {
  // Sensor connection declarations

  

  Serial.begin(9600); //initialisation communication ordi
  pinMode(2, OUTPUT); //Initialisation communication ordi, diode d2

  ///carte SD

  if (SD.begin(4))
  {
    Serial.println("Initialisation de la carte SD");
  }
  else
  { Serial.println("Echec lors de l'installation de la carte SD");
    return;
  };
}

  

  void loop() {
    // put your main code here, to run repeatedly:


    time1= millis() / 1000.0; //temps(s)
    delay(1000);
    temp_digit = analogRead(tempSensor); // recolte les données capteurs
  
    temp_tension = (temp_digit*5.0)/1023.0;
    temp_celsius = temp_tension*100;
Serial.println(temp_digit);
  Serial.print("Température (T)");
  Serial.println(temp_celsius);

    

   
  }
