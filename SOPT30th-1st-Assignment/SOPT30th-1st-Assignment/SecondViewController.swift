//
//  SecondViewController.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/04/08.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveThirdController(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else { return }
        

        
        nextVC.name = inputName.text
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBOutlet weak var inputName: UITextField!

}

