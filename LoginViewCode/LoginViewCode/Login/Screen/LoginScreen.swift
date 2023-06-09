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
    
    //metodo construtor
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
        self.addSubview(self.loginLabel)
        self.addSubview(self.logoAppImageView)
        
        
        
        self.setUpConstraints()
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
            self.logoAppImageView.heightAnchor.constraint(equalToConstant: 100)
            
        ])
    }

}
