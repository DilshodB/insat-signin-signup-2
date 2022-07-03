//
//  SignInVC.swift
//  insat signin signup
//
//  Created by 1 1 on 02/07/22.
//

import UIKit

class SignInVC: PARENTClass {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

//   MARK - METHODS
    
    func oppened(){
        let vc = SignUpVC(nibName: "SignUpVC", bundle: nil)
        self.present(vc, animated: true, completion:  nil)
    }
    
    
    
    
//    MARK - ACTION
    
    
    @IBAction func onSignIN(_ sender: Any) {
        sceneDelegate().cellHome()
    }
    
    
    @IBAction func OnSignUP(_ sender: Any) {
        oppened()
    }
    

}
