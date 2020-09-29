//
//  InitialViewController.swift
//  MatrixProject
//
//  Created by Jéssica Trindade on 24/09/20.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var messageLabel: UILabel!
    
    let choiceViewController = ChoiceViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        choiceViewController.goToWonderland = { [weak self] in
            self?.imageView.image = UIImage(named: "maravilhas")
            self?.messageLabel.text = "Bem vindo ao país das maravilhas"
        }
        
        choiceViewController.goToBedroom = { [weak self] in
            self?.imageView.image = UIImage(named: "bedroom")
            self?.messageLabel.text = "Bem vindo de volta ao seu quarto"
        }
    }
    
    
    @IBAction func choose(_ sender: UIButton) {
        navigationController?.pushViewController(choiceViewController, animated: true)
    }
    
}
