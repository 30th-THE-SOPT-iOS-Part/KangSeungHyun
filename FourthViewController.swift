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

}
