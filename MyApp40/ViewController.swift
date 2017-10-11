//
//  ViewController.swift
//  MyApp40
//
//  Created by 謝尚霖 on 2017/10/11.
//  Copyright © 2017年 謝尚霖. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let app = UIApplication.shared.delegate as! AppDelegate

    @IBAction func changeV(_ sender: Any) {
        let usersRef = app.ref.child("users")
        
        let userA001Ref = usersRef.child("A001")
        userA001Ref.setValue(["username":"NewSunni","passwd":"888"])
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let usersRef = app.ref.child("users")
        let userA001Ref = usersRef.child("A001")
        userA001Ref.setValue(["username":"Sunni","passwd":"123456"])
        
        usersRef.child("A002").setValue(["username":"Sunni2","passwd":"123456"])
        
        usersRef.observe(DataEventType.childAdded) { (data) in
            let newref = data.ref
            print(newref.key)
           
            
        }
            
            userA001Ref.observe(DataEventType.childAdded) { (data) in
                
                let newref = data.ref
                print(newref.key)
            }
        
        
    }

   

}

