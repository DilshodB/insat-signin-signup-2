//
//  HomeViewController.swift
//  insat signin signup
//
//  Created by 1 1 on 02/07/22.
//

import UIKit

class HomeViewController: PARENTClass, UITableViewDelegate, UITableViewDataSource  {
    
    

    
    @IBOutlet var TableView1: UITableView!
    var item : [Post] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()

        
    }
    
    
//    Mark - Methods
    
    func initView(){
        navigation()
        TableView1.delegate = self
        TableView1.dataSource = self
        item.append(Post(fullName: "Dilshod", img: UIImage(named: "im_post")!, profilimg: UIImage(named: "im_person")!, img2: UIImage(named: "im_post2")! ))
        item.append(Post(fullName: "Dilshod", img: UIImage(named: "im_post")!, profilimg: UIImage(named: "im_person")!, img2: UIImage(named: "im_post2")! ))
    }
    func navigation(){
        title = "INSTAGRAM"
        let left = UIImage(systemName: "arrowshape.turn.up.backward.2.fill")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image : left, style: .plain, target: self, action: #selector(leftTapped) )
        
                    
                    let appearance = UINavigationBarAppearance()

                        appearance.configureWithOpaqueBackground()
                        appearance.backgroundColor = .white

                        navigationController?.navigationBar.tintColor = .darkGray
                        navigationController?.navigationBar.standardAppearance = appearance
                        navigationController?.navigationBar.scrollEdgeAppearance = appearance
                        navigationController?.navigationBar.shadowImage = UIImage()
    }

   
    
//    Mark - Action
    
    
    @objc func leftTapped(){
        sceneDelegate().cellSignIN()
    }
    
    
//    Mark - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let items = item[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        cell.FullNameLB.text = items.fullName
        cell.imgPerson.image = items.profilimg
        cell.imgPost.image = items.img
        cell.imgPost2.image = items.img2
        
        return cell
    }
    private func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) -> Int {
        return 500
    }
    
}
