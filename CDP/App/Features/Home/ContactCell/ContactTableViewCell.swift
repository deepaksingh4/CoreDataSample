//
//  ContactTableViewCell.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/27/22.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhoneNmber: UILabel!
    var contact : ContactModel? {
        didSet{
            self.lblName.text = contact?.name
            self.lblPhoneNmber.text = contact?.phoneNumber
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
