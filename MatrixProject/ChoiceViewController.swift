//
//  ChoiceViewController.swift
//  MatrixProject
//
//  Created by Jéssica Trindade on 24/09/20.
//

import UIKit

protocol ChoiceViewControllerDelegate: AnyObject {
    func goToWonderland()
    func goToBedroom()
}

class ChoiceViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var blueView: UIView!
    
    weak var delegate: ChoiceViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.width / 2
        redView.layer.masksToBounds = true
        blueView.layer.cornerRadius = blueView.frame.width / 2
        blueView.layer.masksToBounds = true
    }

    @IBAction func chooseRed(_ sender: Any) {
        delegate?.goToWonderland()
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func chooseBlue(_ sender: Any) {
        delegate?.goToBedroom()
        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
    }
    

}
