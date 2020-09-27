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
        choiceViewController.delegate = self

        
    }
    
    @IBAction func choose(_ sender: UIButton) {
        navigationController?.pushViewController(choiceViewController, animated: true)
    }
    
}

extension InitialViewController: ChoiceViewControllerDelegate {
    func goToWonderland() {
        imageView.image = UIImage(named: "maravilhas")
        messageLabel.text = "Bem vindo ao país das maravilhas!"
    }
    
    func goToBedroom() {
        imageView.image = UIImage(named: "bedroom")
        messageLabel.text = "Bem vindo de volta ao seu quarto!"
    }
    
    
}
