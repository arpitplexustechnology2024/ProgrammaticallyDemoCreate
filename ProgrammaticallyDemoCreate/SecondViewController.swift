//
//  SecondViewController.swift
//  ProgrammaticallyDemoCreate
//
//  Created by Arpit iOS Dev. on 10/05/24.
//


protocol datapass {
    func data(name: String, email: String, mobileNumber: String, password: String, confimePassword: String)
}

import UIKit

class SecondViewController: UIViewController {
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 16
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "fishing buddy")
        return imageView
    }()
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor(white: 0, alpha:0.3).cgColor
        textField.placeholder = " Enter your name"
        textField.textAlignment = .left
        return textField
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor(white: 0, alpha:0.3).cgColor
        textField.placeholder = " Enter your Email Id"
        textField.textAlignment = .left
        return textField
    }()
    
    private let mobileNumberTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor(white: 0, alpha:0.3).cgColor
        textField.placeholder = " Enter your mobile number"
        textField.textAlignment = .left
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor(white: 0, alpha:0.3).cgColor
        textField.placeholder = " Enter password"
        textField.textAlignment = .left
        return textField
    }()
    
    private let confimePasswordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor(white: 0, alpha:0.3).cgColor
        textField.placeholder = " Enter confime password"
        textField.textAlignment = .left
        return textField
    }()
    
    private let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0.3527779579, alpha: 1)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    
    var name = ""
    var email = ""
    var mobileNumber = ""
    var password = ""
    var confimePassword = ""
   
    var delegate: datapass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIComponents()
        
        nameTextField.text = "\(name)"
        emailTextField.text = "\(email)"
        mobileNumberTextField.text = "\(mobileNumber)"
        passwordTextField.text = "\(password)"
        confimePasswordTextField.text = "\(confimePassword)"
    }
    
    private func setupUIComponents() {
        self.view.backgroundColor = .systemYellow
        // adding constraints to profileImageView
        view.addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        
        // adding constraints to textField
        view.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 30).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -30).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant:50).isActive = true
        nameTextField.topAnchor.constraint(equalTo:profileImageView.bottomAnchor, constant: 20).isActive = true
        
        view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 30).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -30).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant:50).isActive = true
        emailTextField.topAnchor.constraint(equalTo:nameTextField.bottomAnchor, constant: 20).isActive = true
        
        view.addSubview(mobileNumberTextField)
        mobileNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        mobileNumberTextField.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 30).isActive = true
        mobileNumberTextField.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -30).isActive = true
        mobileNumberTextField.heightAnchor.constraint(equalToConstant:50).isActive = true
        mobileNumberTextField.topAnchor.constraint(equalTo:emailTextField.bottomAnchor, constant: 20).isActive = true
        
        view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 30).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -30).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant:50).isActive = true
        passwordTextField.topAnchor.constraint(equalTo:mobileNumberTextField.bottomAnchor, constant: 20).isActive = true
        
        view.addSubview(confimePasswordTextField)
        confimePasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        confimePasswordTextField.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 30).isActive = true
        confimePasswordTextField.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -30).isActive = true
        confimePasswordTextField.heightAnchor.constraint(equalToConstant:50).isActive = true
        confimePasswordTextField.topAnchor.constraint(equalTo:passwordTextField.bottomAnchor, constant: 20).isActive = true
        
        // adding constraints to register button
        view.addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        registerButton.topAnchor.constraint(equalTo: confimePasswordTextField.bottomAnchor, constant: 70).isActive = true
    }
    
    @objc func buttonAction(sender: UIButton!) {
        
        delegate?.data(name: self.nameTextField.text!, email: self.emailTextField.text!, mobileNumber: self.mobileNumberTextField.text!, password: self.passwordTextField.text!, confimePassword: self.confimePasswordTextField.text!)

        self.navigationController?.popViewController(animated: true)
        
    }
    
    
}
