//
//  ViewController.swift
//  HelloWorld
//
//  Created by Tuychiev Toir on 21/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // ok alert
        let btn = UIButton()
        btn.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        btn.backgroundColor = .red
        btn.setTitle("Alert", for: .normal)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        view.addSubview(btn)
        
        // yes or no alert
        let btn2 = UIButton()
        btn2.backgroundColor = .green
        btn2.setTitle("Confirm", for: .normal)
        btn2.frame = CGRect(x: 100, y: 200, width: 100, height: 50)
        btn2.addTarget(self, action: #selector(tappedButtonTwo), for: .touchUpInside)
        view.addSubview(btn2)
        
        let btn3 = UIButton()
        btn3.backgroundColor = .brown
        btn3.setTitle("Alert with fields", for: .normal)
        btn3.frame = CGRect(x: 50, y: 300, width: 200, height: 50)
        btn3.addTarget(self, action: #selector(tappedButtonThree), for: .touchUpInside)
        view.addSubview(btn3)
        
        let btn4 = UIButton()
        btn4.backgroundColor = .blue
        btn4.setTitle("Test Alert", for: .normal)
        btn4.frame = CGRect(x: 100, y: 400, width: 100, height: 50)
        btn4.addTarget(self, action: #selector(tappedButtonFour), for: .touchUpInside)
        view.addSubview(btn4)
    }
    
    @objc func tappedButtonFour(){
        let alert = UIAlertController(title: "Hello", message: "Hello everyone!!!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .destructive, handler: { action in
            switch action.style {
                case .default:
                    print("Default")
                    break
                case .cancel:
                    print("Cancel")
                    break
                case .destructive:
                    print("Destructive")
                break
                default:
                print("action style default")
            }
        }))
        present(alert,animated: true, completion: nil)
    }
    
    @objc func tappedButtonThree(){
        let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Enter your frist name here.."
        })
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Enter your last name here..."
        })
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Enter your nickname here..."
        })
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { [weak alert] (action) -> Void in
            
            if let firstName = alert?.textFields![0].text {
                print("Your first name: \(firstName)")
            }
            
            if let lastName = alert?.textFields![2].text {
                print("Your last name: \(lastName)")
            }
            
            if let nickName = alert?.textFields![1].text {
                print("Your nickname: \(nickName)")
            }
            
        }))
        present(alert, animated: true, completion: nil)
    }
    
    @objc func tappedButtonTwo(){
        let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recommended you bring your towel before continuing", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
    
    @objc func tappedButton(){
        let alert = UIAlertController(title: "My Alert", message: "This is an alert", preferredStyle: .alert)
        
        // ok button
        let action = UIAlertAction(title: NSLocalizedString("Ok", comment: "Default action"), style: .default, handler: {_ in
            NSLog("The \"OK\" alert occurred")
        });
        alert.addAction(action)
        
        
        
        present(alert, animated: true, completion: nil)
    }
}

