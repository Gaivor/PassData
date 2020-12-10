//
//  ViewController.swift
//  PassData
//
//  Created by Илья Гайворонский on 10.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    @IBAction func loginTap(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
    }
}

