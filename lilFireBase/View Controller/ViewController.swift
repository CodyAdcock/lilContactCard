//
//  ViewController.swift
//  lilFireBase
//
//  Created by Cody on 10/9/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var photo: UIImage?
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPhotoSelectVC"{
            guard let destinationVC = segue.destination as? PhotoSelectViewController else {return}
            destinationVC.delegate = self
        }
    }
    @IBAction func PostButtonTapped(_ sender: Any) {
        
        //delete this and do stuff here
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        emailTextField.text = ""
        phoneNumberTextField.text = ""
        
        
    }
    
}
extension ViewController: PhotoSelectViewControllerDelegate{
    func photoSelected(_ photo: UIImage) {
        self.photo = photo
    }
    
}
