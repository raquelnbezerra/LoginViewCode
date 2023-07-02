//
//  LoginScreen.swift
//  LoginViewCode
//
//  Created by quirino on 09/06/23.
//

import UIKit

class LoginScreen: UIView {


    lazy var loginLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    lazy var logoAppImageView:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var emailTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no //auto correção do teclado
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.placeholder = "Digite seu E-mail"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var passawordTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no //auto correção do teclado
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.isSecureTextEntry = true
        textField.placeholder = "Digite sua senha"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var loginButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 3/255, green: 58/255, blue: 51/255, alpha: 1.0)
        return button
    }()
    
    lazy var registerButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Não tem conta? Cadastre-se", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    //metodo construtor
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackground()
        self.configSuperView()
        self.setUpConstraints()

    }
        
    private func configBackground(){
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
        
        
    private func configSuperView(){
        self.addSubview(self.loginLabel)
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passawordTextField)
        self.addSubview(self.loginButton)
        self.addSubview(self.registerButton)
    }
    
    public func configTextFieldDelegate(delegate:UITextFieldDelegate){
        self.emailTextField.delegate = delegate
        self.passawordTextField.delegate = delegate
    }
     
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //equalTo:
    //basear em um determinado elemento
    
    //constant:
    //me afastar/ aproximar do elemento referente(equalTo)
    
    //equalToConstant:
    //setando um valor fixo para um determinado elemento.
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            self.loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 20),
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            
            self.logoAppImageView.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor,constant: 20),
            self.logoAppImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 160),
            self.logoAppImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -160),
            self.logoAppImageView.heightAnchor.constraint(equalToConstant: 100),
            
            
            self.emailTextField.topAnchor.constraint(equalTo: self.logoAppImageView.bottomAnchor,constant: 20),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            
            self.passawordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor,constant: 20),
            self.passawordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            self.passawordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            self.passawordTextField.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
            
            
            self.loginButton.topAnchor.constraint(equalTo: self.passawordTextField.bottomAnchor,constant: 15),
            self.loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            self.loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            self.loginButton.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
            
            
            self.registerButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor,constant: 15),
            self.registerButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            self.registerButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            self.registerButton.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
        ])
    }

}
