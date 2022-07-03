//
//  PostTableViewCell.swift
//  insat signin signup
//
//  Created by 1 1 on 03/07/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    
    @IBOutlet var imgPerson: UIImageView!
    
    @IBOutlet var FullNameLB: UILabel!
    
    @IBOutlet var imgPost: UIImageView!
    
    @IBOutlet var imgPost2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
