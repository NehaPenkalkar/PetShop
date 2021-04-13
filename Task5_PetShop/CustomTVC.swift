//
//  CustomTVC.swift
//  Task5_PetShop
//
//  Created by Neha Penkalkar on 02/03/21.
//

import UIKit

class CustomTVC: UITableViewCell {

    @IBOutlet weak var petImg: UIImageView!
    @IBOutlet weak var petBreedLbl: UILabel!
    @IBOutlet weak var petNameLbl: UILabel!
    @IBOutlet weak var petInfoLbl: UILabel!
    @IBOutlet weak var petGenderLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
