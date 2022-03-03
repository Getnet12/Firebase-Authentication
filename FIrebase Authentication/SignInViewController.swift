//
//  SignInViewController.swift
//  FIrebase Authentication
//
//  Created by Getnet Mekuriyaw on 2/24/22.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {

    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let Error = error{
                print (error?.localizedDescription)
            }else{
                self.performSegue(withIdentifier: "onLogin", sender: self)
            }
        }
        }
     
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
