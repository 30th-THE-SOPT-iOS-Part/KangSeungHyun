//
//  ViewController.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/04/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    
    @IBOutlet weak var inputEmail: UITextField!
    
    @IBAction func logIn(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController else { return }
        

        
        guard let name = inputEmail.text else { return }
        nextVC.name = "\(name)님, 인스타그램에 오신것을 환영합니다."
        nextVC.navigation = self.navigationController
        
        self.present(nextVC, animated: true)
    }
}

