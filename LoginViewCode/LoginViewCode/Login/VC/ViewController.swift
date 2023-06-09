//
//  ViewController.swift
//  LoginViewCode
//
//  Created by quirino on 06/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    var loginScreen:LoginScreen?
    
    //um ciclo de vida responsavel para uma criacao deuma view... ou referenciar uma view com a outra
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
    
    //com o override: Estou sobrescrevendo um comportamento padrão já nativo da linguagem.
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }


}

