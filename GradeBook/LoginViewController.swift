//
//  LoginViewController.swift
//  GradebookExample
//
//  Created by Moe Wilson on 5/11/15.
//  Copyright (c) 2015 John Bellardo. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {
    @IBOutlet var urlTextField : UITextField!
    @IBOutlet var nameTextField : UITextField!
    @IBOutlet var passwordTextField : UITextField!
    
    //let shareData = ShareData.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        urlTextField.resignFirstResponder()
        nameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    @IBAction func AutoFillTapped(sender : AnyObject){
        urlTextField.text = "https://users.csc.calpoly.edu/~bellardo/cgi-bin/test/grades.json"
        nameTextField.text = "test"
        passwordTextField.text = "sadf35cx90"
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "login" {
           // self.shareData.password = passwordTextField.text
           // self.shareData.url = urlTextField.text
            //self.shareData.username = nameTextField.text
            //var d = segue.destinationViewController as ViewController
            /*if let destination = segue.destinationViewController as? ViewController {
            destination.password = passwordTextField.text
            destination.username = nameTextField.text
            destination.url = urlTextField.text
            }*/
        }
    }
    
}
