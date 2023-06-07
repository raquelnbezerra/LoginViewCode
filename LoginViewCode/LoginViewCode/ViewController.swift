//
//  ViewController.swift
//  LoginViewCode
//
//  Created by quirino on 06/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var loginLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.view.addSubview(self.loginLabel)
        self.setUpConstraints()
    }
    
    private func setUpConstraints(){
        
        NSLayoutConstraint.activate([
        
            self.loginLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.loginLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    //com o override: Estou sobrescrevendo um comportamento padrão já nativo da linguagem.
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }


}

