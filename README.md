# Home-automation

This project is meant to show you how to control a relay switch connected with a Raspberry Pi using your iOS device or your web browser allowing you to control any electrical device by switching it ON and OFF.

I have used in this project a relay switch on Raspberry Pi pin connected with Firebase controlled by, an iOS App, and Web client.


* **Firebase**
  
  - Initializing google Firebase.  
    After creating the Firebase project on your console you should create an object called "Switch" contains a "state" value     between "ON/OFF"

* **Raspberry Pi - relay switch**
  - Connecting the relay switch with the Raspberry Pi.
   The circuit should be like this:
  ![Image of RPi circuit](https://github.com/ZiyadAlSamhan/home-automation/blob/master/RPi/RPi_circuit.png)

   
  - Initializing python program on the (Raspberry Pi) connected with Firebase API to get data.

    [**Code**](https://github.com/ZiyadAlSamhan/home-automation/blob/master/RPi/RPi.py)


* **iOS APP**
  - Initializing Xcode project then connecting the App with Firebase.
   
    [**Code**](https://github.com/ZiyadAlSamhan/home-automation/tree/master/iOS)

* **Web Client**
  - Initializing the the web client project then connecting it with Firebase.
    
    
    [**Code**](https://github.com/ZiyadAlSamhan/home-automation/tree/master/WEB%20client)

    ![Image of Web page](https://github.com/ZiyadAlSamhan/home-automation/blob/master/WEB%20client/WebP.png)
    
    
