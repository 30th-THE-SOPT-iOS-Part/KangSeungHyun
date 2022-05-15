//
//  FourthViewController.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/04/08.
//

import UIKit

class FourthViewController: UIViewController {
    var name: String?
    var navigation: UINavigationController?
    var password: String?


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.welcome.text = name
    }
    
    @IBOutlet weak var welcome: UILabel!
    
    @IBAction func loginOtherAccount(_ sender: Any) {
        self.navigation?.popToRootViewController(animated: true)
        self.dismiss(animated:true)

    }
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func moveToTabBar(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TapBar", bundle: nil)
        
        guard let nextVC = storyboard.instantiateViewController(withIdentifier: "TabBarController") as? TabBarController else { return }
        
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true)
    }
    
//    @IBAction func backButtonDidTap(_ sender: Any) {
//        self.navigation?.popToRootViewController(animated: true)
//        self.dismiss(animated:true)
//
//
//    }
    
    func signUpButtonTapped(_sender: Any){
        signUp()
    }
    


}

extension FourthViewController {
    func signUp(){
        guard let name = name else {return}
//        guard let email = email else {return}
        guard let password = password else {return}
        
        //여기 로직부터 이제 문제인건데, text field 에는 제대로 들어옴.
        UserService.shared.signUp(
        name: "ZaidKang",
        email: name,
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

