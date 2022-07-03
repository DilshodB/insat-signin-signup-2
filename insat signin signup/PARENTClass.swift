//
//  PARENTClass.swift
//  insat signin signup
//
//  Created by 1 1 on 02/07/22.
//

import UIKit

class PARENTClass: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//  MARK - Methods
    
    func appDelegate()-> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    func sceneDelegate()-> SceneDelegate {
        return UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
    }
    

}
