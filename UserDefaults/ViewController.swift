//
//  ViewController.swift
//  UserDefaults
//
//  Created by Aplimovil on 12/1/15.
//  Copyright © 2015 Aplimovil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txt: UITextField!
    @IBOutlet var txtSaved: UILabel!
     var userD:NSUserDefaults!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userD = NSUserDefaults()
        
        let data:String? = userD.objectForKey("data") as? String
        txtSaved.text = data
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func save(sender: AnyObject) {
        
        userD.setObject(txt.text, forKey: "data")
        
    }

}

