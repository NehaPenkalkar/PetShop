import UIKit

class PetDetails: UIViewController {
    
    
    @IBOutlet weak var petBrandLbl: UILabel!
    @IBOutlet weak var petNameLbl: UILabel!
    @IBOutlet weak var petGenderLbl: UILabel!
    @IBOutlet weak var petAgeLbl: UILabel!
    @IBOutlet weak var petLengthLbl: UILabel!
    @IBOutlet weak var petColorLbl: UILabel!
    @IBOutlet weak var petImage: UIImageView!
    
    var storeBrandName = ""
    var storeName = ""
    var storeGender = ""
    var storeAge = ""
    var storeLength = ""
    var storeColor = ""
    var storeImage = UIImage()
    
    let lbl = UILabel()
    let btn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petBrandLbl.text = storeBrandName
        petNameLbl.text = storeName
        petGenderLbl.text = storeGender
        petAgeLbl.text = storeAge
        petLengthLbl.text = storeLength
        petColorLbl.text = storeColor
        petImage.image = storeImage
        
        let barItem = UIBarButtonItem()
        btn.setImage(UIImage(named: "Back"), for: .normal)
        barItem.customView = btn
        self.navigationItem.leftBarButtonItem = barItem
        btn.addTarget(self, action: #selector(backPress(sender:)), for: .touchUpInside)
        
        let barItem1 = UIBarButtonItem()
        lbl.font = UIFont.boldSystemFont(ofSize: 17)
        barItem1.customView = lbl
        navigationItem.rightBarButtonItem = barItem1
        
    }
    
    @objc func backPress(sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
}
