 /* Senseur à Hall Effect 
 
 Allume ou éteind une LED connectée sur la pin digitale 13 en fonction  
 de l'activation d'un senseur à Effet Hall US5881LUA sensible au champ 
 magnétique.
 
 Le senseur Effet Hall US5881LUA est disponible chez MC Hobby
    http://shop.mchobby.be/product.php?id_product=86 
 Les aimants surpuissant de Rare Earth sont aussi disponibles chez MC Hobby
    http://shop.mchobby.be/product.php?id_product=87 
 .
 
 Le circuit:
 * LED connectée à la masse (GND) et à la pin 13 par l'intermédiaire d'une résistance de 330 Ohms.
 * Le senseur Effet Hall US5881LUA est connecté comme suit:
     Pin 1: +5v
     Pin 2: Masse/GND
     Pin 3: +5V via une résistance pull-up de 10 KOhms
            MAIS AUSSI
            sur la PIN 2 d'Arduino (pour lecture du senseur)
 * Exemple de circuit, plan sur 
     http://mchobby.be/wiki/index.php?title=Senseur_à_Effet_Hall

 created 2012
 by Meurisse D. - http://www.MCHobby.be (vente de matériel et Kit)
 Licence BY-CC-SA 
 Mentionner explicitement "MCHobby vente de matériel et Kit" .

 */

//const int ledPin = D2; 
const int hallPin = A4;

int sensorValue; 

void setup(){
  pinMode( 2, OUTPUT ); 
  pinMode( hallPin, INPUT );
}

void loop() {
  // lecture du capteur a Effet Hall
  sensorValue = digitalRead( hallPin );
  
  // senseurValue = HIGH sans aimant
  // senseurValue = LOW  quand POLE SUD aimant
  sensorValue = not( sensorValue );
  
  // Allumer eteindre la LED
  digitalWrite( 2, sensorValue );
}
