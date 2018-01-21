//
//  ViewController.swift
//  RPi-LED
//
//  Created by Ziyad Alsamhan on 13/05/2017.
//  Copyright © 2017 Ziyad Alsamhan. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        switch(state: "ON")
        view.backgroundColor = UIColor.green
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func switch(state : String){
        let ref =  FIRDatabase.database().reference()
        let post : [String : AnyObject]=["state" : state as AnyObject ]
        ref.child("Switch").setValue(post)
    }
    
    @IBAction func touched1(_ sender: UITapGestureRecognizer) {
        if view.backgroundColor == UIColor.red{
            switch(state: "ON")
            view.backgroundColor = UIColor.green
            
        }else{
            view.backgroundColor = UIColor.red
            switch(state: "OFF")
        }
    }
    




}

