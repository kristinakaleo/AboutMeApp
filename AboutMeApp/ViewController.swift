//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Кристина on 08.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logIn: UIButton!
    @IBOutlet weak var forgotUserName: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    
    let validUserName = "admin"
    let validPassword = "admin"
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.autocorrectionType = .no
        passwordTextField.autocorrectionType = .no
        passwordTextField.isSecureTextEntry = true
        
    }
    
    
    @IBAction func logInButton(_ sender: UIButton) {
    }
//        guard let enteredUserName = userNameTextField.text,
//              let enteredPassword = passwordTextField.text else {
//            return
//        }
//        if enteredUserName == validUserName && enteredPassword == validPassword {
//            performSegue(withIdentifier: "toSettingsViewController", sender: self)
//        } else {
//            print("екфефе")
//        }
//    }
//
//
    @IBAction func forgotUserNameButton(_ sender: UIButton) {
    }

//        let alertController = UIAlertController(title: "Забыли логин?", message: "Ваш логин: \(validUserName)", preferredStyle: .alert)
//
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alertController.addAction(okAction)
//
//        present(alertController, animated: true, completion: nil)
//    }
//
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
    }
//        let alertController = UIAlertController(title: "Забыли пароль?", message: "Ваш пароль: \(validPassword)", preferredStyle: .alert)
//
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alertController.addAction(okAction)
//
//        present(alertController, animated: true, completion: nil)
//    }
//}
//

override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
       if identifier == "toSettingsViewController" {
           guard let enteredUserName = userNameTextField.text,
                 let enteredPassword = passwordTextField.text else {
               return false
           }
           
           if enteredUserName == validUserName && enteredPassword == validPassword {
               return true
           } else {
               let alertController = UIAlertController(title: "Ошибка", message: "Неверные данные для входа", preferredStyle: .alert)
               let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
               alertController.addAction(okAction)
               present(alertController, animated: true, completion: nil)
               return false
           }
       }
       return true
   }
}
    
  
//}

//IBAction func unwind (for segue: UIStoryboardSegue) {
    
//}

