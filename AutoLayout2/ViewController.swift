//
//  ViewController.swift
//  AutoLayout2
//
//  Created by Shin Hyuk on 10/25/16.
//  Copyright © 2016 HuyBui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtPassword.isSecureTextEntry = true
        txtUser.placeholder = "👤username"
        txtPassword.placeholder = "🔐password"
        
        btnLogin.setUpView(doBoTron: 10, doRongVien: 3, mauSacVien: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
        btnRegister.setUpView(doBoTron: 10, doRongVien: 3, mauSacVien: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
    }
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension UIView {
    func setUpView (doBoTron: CGFloat, doRongVien:CGFloat, mauSacVien:UIColor) {
        self.layer.cornerRadius = doBoTron
        self.layer.borderWidth = doRongVien
        self.layer.borderColor = mauSacVien.cgColor
        
    }

}
