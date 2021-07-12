//
//  ViewController.swift
//  popUpModel
//
//  Created by Macbook on 12/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnoutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPressed(_ sender: UIButton) {
        let popController = PopoverController(items: setupPopItem(), fromView: btnoutlet, direction: .down, reverseHorizontalCoordinates: true, style: .withImage, initialIndex: 1)
        print("Shown")
        popover(popController)
    }
    
    
        private func setupPopItem() ->[PopoverItem]{
            let  google = PopoverItem(title: "Google", titleColor: .clear, image: #imageLiteral(resourceName: "a1")){
            debugPrint($0.title)
        }
            let  fb = PopoverItem(title: "Facebook", titleColor: .clear, image: #imageLiteral(resourceName: "a3")){
            debugPrint($0.title)
        }
            let  twitter = PopoverItem(title: "Twitter", titleColor: .clear, image: #imageLiteral(resourceName: "a2")){
            debugPrint($0.title)
        }
            let  linkedin = PopoverItem(title: "Linkedin", titleColor: .clear, image: #imageLiteral(resourceName: "a4")){
            debugPrint($0.title)
        }
            return [google,fb,twitter,linkedin]
    
    }
    

}
