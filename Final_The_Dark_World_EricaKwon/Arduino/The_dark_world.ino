//Arduino Sketch
// Button 1 kommt an Pin 2, Button 2 an Pin 10
const int buttonPin1 = 13;
const int buttonPin2 = 12;
 const int buttonPin3 = 11;
  const int buttonPin11 = 10;
   const int buttonPin22 = 9;
   const int buttonPin33 = 8;
   const int buttonPin111 = 7;
      const int buttonPin222 = 6;
         const int buttonPin333 = 5;
         const int buttonPin4 = 4;
 
// Zum Zwischenspeichern der Button-Zustände
int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;
int buttonState11 = 0;
int buttonState22 = 0;
int buttonState33 = 0;
int buttonState111 = 0;
int buttonState222 = 0;
int buttonState333 = 0;
int buttonState4 = 0;

 
// Enthält den String, der an den PC geschickt wird
String data;
 
// Serielle Schnittstelle einrichten, pinModes setzen
void setup() {
  Serial.begin(9600);
  pinMode(buttonPin1, INPUT);
  pinMode(buttonPin2, INPUT);  
  pinMode(buttonPin3, INPUT);
  pinMode(buttonPin11, INPUT);
  pinMode(buttonPin22, INPUT);
  pinMode(buttonPin33, INPUT);
    pinMode(buttonPin111, INPUT);
        pinMode(buttonPin222, INPUT);
            pinMode(buttonPin333, INPUT);
            pinMode(buttonPin4, INPUT);
}
 
 
void loop() {
  // Beise Buttons auslesen
  buttonState1 = digitalRead(buttonPin1);
  buttonState2 = digitalRead(buttonPin2); 
  buttonState3 = digitalRead(buttonPin3);  
  buttonState11 = digitalRead(buttonPin11);
  buttonState22 = digitalRead(buttonPin22); 
  buttonState33 = digitalRead(buttonPin33);  
   buttonState111 = digitalRead(buttonPin111);  
      buttonState222 = digitalRead(buttonPin222);  
         buttonState333 = digitalRead(buttonPin333);  
         buttonState4 = digitalRead(buttonPin4);  
  data = normalizeData(buttonState1, buttonState2,buttonState3,buttonState11, buttonState22,buttonState33,buttonState111,buttonState222,buttonState333,buttonState4);
  Serial.println(data);


}
 
String normalizeData(int b1, int b2, int b3,int b11, int b22, int b33,int b111,int b222,int b333,int b4) {
 
  String B1string = String(b1);
  String B2string = String(b2);
  String B3string = String(b3);
  String B11string = String(b11);
  String B22string = String(b22);
  String B33string = String(b33);
    String B111string = String(b111);
        String B222string = String(b222);
            String B333string = String(b333);
            String B4string = String(b4);
 
  // Erzeugt Werte wie S00E, S10E, S01E, S11E
  String ret = String("S") + B1string + B2string+ B3string  +B11string + B22string+ B33string  +B111string +B222string +B333string+B4string  + String("E");
  return ret;
}
