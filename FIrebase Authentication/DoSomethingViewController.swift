//
//  DoSomethingViewController.swift
//  FIrebase Authentication
//
//  Created by Getnet Mekuriyaw on 2/24/22.
//

import UIKit
import Firebase
class DoSomethingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // for hiding the buttun item bar 
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func logOut(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do{
            try firebaseAuth.signOut()
        }catch let signOutError as NSError{
            print("Error signing out: %@", signOutError)
        }
        //to take back the rootview controller
        navigationController?.popToRootViewController(animated: true)
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
