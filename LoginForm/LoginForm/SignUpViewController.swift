//
//  SignUpViewController.swift
//  LoginForm
//
//  Created by Mohamed Farouk Code95 on 8/6/16.
//  Copyright © 2016 Mohamed Farouk Code95. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    @IBOutlet weak var EmaiField: UITextField!
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passswordField: UITextField!
    @IBAction func signup(sender: AnyObject) {
        guard let email = EmaiField.text where email != "" else {
            let alert = UIAlertController(title: "error", message: nil, preferredStyle:UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title:"ok",style:UIAlertActionStyle.Default,handler:nil ))
            
            //show the alert
            self.presentViewController(alert, animated: true, completion: nil)
            
            return
        }
        guard let name = usernameField.text where name != "" else {
            let alert = UIAlertController(title: "error", message: nil, preferredStyle:UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title:"ok",style:UIAlertActionStyle.Default,handler:nil ))
            
            //show the alert
            self.presentViewController(alert, animated: true, completion: nil)
            return
        }
        guard let password = usernameField.text where password != "" else {
            let alert = UIAlertController(title: "error", message: nil, preferredStyle:UIAlertControllerStyle.Alert)
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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        var scene=segue.destinationViewController as! UserViewController
        scene.user=usernameField.text
    }
    

}
