int gassensor = A1;
int buzzer = 13;
void setup()
{
	pinMode(A1, INPUT);
	pinMode(buzzer, OUTPUT);
	Serial.begin(9600);
}
void loop()
{
	int SensorValue=analogRead(gasSensor);
    Serial.print("GAS LEVEL:");
    Serial.println(SensorValue);
 	delay(1000);
    if(SensorValue>250)
    {
		digitalWrite(buzzer, HIGH);
 	}
 	else
 	{
    	digitalWrite(buzzer,LOW);
	}
}