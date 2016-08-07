//
//  LoginViewController.swift
//  LoginForm
//
//  Created by Mohamed Farouk Code95 on 8/6/16.
//  Copyright © 2016 Mohamed Farouk Code95. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    var flag :Bool=true
    @IBAction func Loginto(sender: AnyObject) {
        
        guard let name = usernameText.text where name != "" else {
            
            let alert = UIAlertController(title: "error", message: nil, preferredStyle:UIAlertControllerStyle.Alert)
            
            //add ok button
            alert.addAction(UIAlertAction(title:"ok",style:UIAlertActionStyle.Default,handler:nil ))
            
            //show the alert
            self.presentViewController(alert, animated: true, completion: nil)
            return
        }
        guard let password = usernameText.text where password != "" else {
            let alert = UIAlertController(title: "error", message: nil, preferredStyle:UIAlertControllerStyle.Alert)
            
            //add ok button
            alert.addAction(UIAlertAction(title:"ok",style:UIAlertActionStyle.Default,handler:nil ))
            
            //show the alert
            self.presentViewController(alert, animated: true, completion: nil)
            return
        }
        
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Home") as! UIViewController
            self.presentViewController(viewController, animated: true, completion: nil)
        })
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
self.view.endEditing(true)
    
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if  segue.destinationViewController.isEqual(UserViewController){
                  let thirdScene=segue.destinationViewController as! UserViewController
                  thirdScene.user=usernameText.text
                
            }
            
            
            
            
            // Get the new view controller using segue.destinationViewController.
            // Pass the selected object to the new view controller.
           // if flag{
        //   var thirdScene=segue.destinationViewController as! UserViewController
         //  thirdScene.user=usernameText.text
           // }
            
            
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
