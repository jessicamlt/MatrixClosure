//
//  ChoiceViewController.swift
//  MatrixProject
//
//  Created by Jéssica Trindade on 24/09/20.
//

import UIKit


class ChoiceViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var blueView: UIView!
    var image = ""
    var message = ""
    
    var goToWonderland: (() -> Void)?
    var goToBedroom: (() -> Void)?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.width / 2
        redView.layer.masksToBounds = true
        blueView.layer.cornerRadius = blueView.frame.width / 2
        blueView.layer.masksToBounds = true
    }

    @IBAction func chooseRed(_ sender: Any) {
        self.goToWonderland?()
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func chooseBlue(_ sender: Any) {
        self.goToBedroom?()
        navigationController?.popViewController(animated: true)
    }
    

}
