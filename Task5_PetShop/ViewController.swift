//
//  ViewController.swift
//  Task5_PetShop
//
//  Created by Neha Penkalkar on 02/03/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let petBreedArr = ["Afghan Hound","American Bulldog","Auggie","Australian Terrier","Beagle","Chihuahua","Chow Chow","Dachshund","Husky","Pomerian"]
    let petNameArr = ["Tara","Oscar","Rose","Jenny","Ginger","Jimmy","Buzo","Scooby","Bravo","Cloud"]
    let petAgeArr = ["11","9","4","5","9","10","8","6","5","4"]
    let petHeightArr = ["2.0","0.9","0.8","0.9","1.2","0.9","1.0","0.9","1.1","0.8"]
    let petGenderArr = ["Female","Male","Female","Female","Male","Male","Male","Male","Male","Female"]
    let petColorArr = ["White","Brown","Black","Caramel","White","White","White","Black","White","White"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
   
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 60))
        label.backgroundColor = #colorLiteral(red: 0.629983862, green: 0.6461044847, blue: 0.9244251847, alpha: 1)
        label.text = "  List of Puppies"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = #colorLiteral(red: 0.2196886241, green: 0.009488505311, blue: 0.8539198041, alpha: 1)
        return label
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTVC") as! CustomTVC
        cell.petImg.image = UIImage(named: "\(petBreedArr[indexPath.row])")
        cell.petBreedLbl.text = petBreedArr[indexPath.row]
        cell.petNameLbl.text = petNameArr[indexPath.row]
        cell.petInfoLbl.text = "\(petAgeArr[indexPath.row]) Months Old / \(petHeightArr[indexPath.row]) feet length"
        cell.petGenderLbl.text = "Gender: \(petGenderArr[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PetDetails") as! PetDetails
        vc.storeBrandName = petBreedArr[indexPath.row]
        vc.storeName = "Name: \(petNameArr[indexPath.row]) "
        vc.storeGender = "Gender: \(petGenderArr[indexPath.row])"
        vc.storeAge = "Age: \(petAgeArr[indexPath.row]) Months"
        vc.storeLength = "Length: \(petHeightArr[indexPath.row]) feet"
        vc.storeColor = "Color: \(petColorArr[indexPath.row])"
        vc.storeImage = UIImage(named: "\(petBreedArr[indexPath.row])")!
        //present(vc, animated: true, completion: nil)
        navigationController?.pushViewController(vc, animated: true)
        vc.lbl.text = petNameArr[indexPath.row]
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

