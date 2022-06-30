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
    @IBOutlet weak var inputPassword: UITextField!
    
    @IBAction func logIn(_ sender: Any) {
        signIn()
        
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController else { return }
        


        guard let name = inputEmail.text else { return }
        nextVC.name = "\(name)님, 인스타그램에 오신것을 환영합니다."
        nextVC.navigation = self.navigationController
        
        
        
        self.present(nextVC, animated: true)
    }
    
}

extension ViewController {
    func signIn(){
        guard let email = inputEmail.text else {return}
//        guard let email = email else {return}
        guard let password = inputPassword.text else {return}
        
        //여기 로직부터 이제 문제인건데, text field 에는 제대로 들어옴.
        UserService.shared.signIn(
        name: "ZaidKang",
        email: email,
        password: password)
        {
            
            response in
            switch response {
            case .success(let data):
                guard let data = data as? LoginResponse else {return}
                print(data)
            case .requestErr(let err):
                print(err)
            
            case .pathErr:
                print("pathErr")
            
            case .serverErr:
                print("ServerErr")
                
            case .networkFail:
                print("networkFail")
            }
            
                 
            
        }
    }
}

