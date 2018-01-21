#import Libraries
import RPi.GPIO as GPIO
import time
import pyrebase

#Firebase Configuration
# (*) Should be changed by your own data
config = {
    "apiKey": "apiKey",
        "authDomain": "******",
            "databaseURL": "******",
                "storageBucket": "******"
}

firebase = pyrebase.initialize_app(config)

#GPIO Setup
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

//pin number
pin=17

GPIO.setup(pin, GPIO.OUT)

#Firebase Database Intialization
db = firebase.database()

#While loop to run until user kills program
while(True):
    switch = db.child("Switch").get()

    for user in switch.each():

        #Check value of child(which is 'state')
        if(user.val() == "OFF"):
            #If value is off, turn LED off
            GPIO.output(pin, False)
        else:
            #If value is not off(implies it's on), turn LED on
            GPIO.output(pin, True)

        #0.1 Second Delay
        time.sleep(0.1)
