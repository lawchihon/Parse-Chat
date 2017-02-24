//
//  LoginViewController.swift
//  Parse Chat
//
//  Created by John Law on 23/2/2017.
//  Copyright © 2017 Chi Hon Law. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func signUp(_ sender: Any) {
        let user = PFUser()
        user.username = emailText.text
        user.password = passwordText.text
        user.email = emailText.text
        
        
        user.signUpInBackground { (succeeded, error) in
            if let error = error {
                let errorString = error.localizedDescription
                // Show the errorString somewhere and let the user try again.
                
                let alertController = UIAlertController(title: "Error", message: errorString, preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
                
            } else {
                // Hooray! Let them use the app now.
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let chatView = mainStoryboard.instantiateViewController(withIdentifier: "chatView")
                self.present(chatView, animated: true, completion: nil)
            }
        }
    }

    @IBAction func login(_ sender: Any) {
        let user = PFUser()
        user.username = emailText.text!
        user.password = passwordText.text!
        user.email = emailText.text!
        
        
        PFUser.logInWithUsername(inBackground: user.username!, password: user.password!) {
            (succeeded, error) in
            if let error = error {
                let errorString = error.localizedDescription
                // Show the errorString somewhere and let the user try again.
                
                let alertController = UIAlertController(title: "Error", message: errorString, preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
                
            } else {
                // Hooray! Let them use the app now.
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let chatView = mainStoryboard.instantiateViewController(withIdentifier: "chatView")
                self.present(chatView, animated: true, completion: nil)
            }
        }
    }

}
