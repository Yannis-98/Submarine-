#include <SD.h>

  int temp_digit;
  float temp_tension;
  float temp_pression;
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
  
    temp_tension = (-0,54*temp_tension)+ 274,62;
    temp_pression = temp_tension*100;

  Serial.print("Pression (P)");
  Serial.println(temp_tension);
    myFile =SD.open("data.txt", FILE_WRITE");
    myFile.print("Température (T) :");
    myFile.println(temp_tension);
    myFile.close
    

   
  }
