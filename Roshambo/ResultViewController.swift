//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Prakhar Maheshwari on 12/23/19.
//  Copyright © 2019 Prakhar Maheshwari. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var userSelectedValue: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        guard let userSelected = userSelectedValue else {
            print("No value Received")
            self.dismiss(animated: true, completion: nil)
            return
        }
        
        let machineSelected = randomValue()
        if userSelected == machineSelected {
            resultLabel.text = " It's a tie"
            resultImageView.image = UIImage(named: "itsATie")
        } else if userSelected == 3 && machineSelected == 1{
                resultLabel.text = "Paper Covers Rock. Machine Win!!"
                resultImageView.image = UIImage(named: "PaperCoversRock")
        } else if userSelected == 3 && machineSelected == 2{
                resultLabel.text = "Rock Crushes Scissors. You Win!!"
                resultImageView.image = UIImage(named: "RockCrushesScissors")
        } else if userSelected == 2 && machineSelected == 1{
                resultLabel.text = "Scissors Cut Paper. You Win!!"
                resultImageView.image = UIImage(named: "ScissorsCutPaper")
        } else if userSelected == 2 && machineSelected == 3{
                resultLabel.text = "Rock Crushes Scissorss. Machine Win!!"
                resultImageView.image = UIImage(named: "RockCrushesScissorss")
        } else if userSelected == 1 && machineSelected == 2{
                resultLabel.text = "Scissors Cut Paper. Machine Win!!"
                resultImageView.image = UIImage(named: "ScissorsCutPaper")
        } else if userSelected == 1 && machineSelected == 3{
                resultLabel.text = "Paper Covers Rock. You Win!!"
                resultImageView.image = UIImage(named: "PaperCoversRock")
        }
        
    }
    
    func randomValue() -> Int{
        let value = 1 + arc4random() % 3
        return Int(value)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissViewController(){
        self.dismiss(animated: true, completion: nil)
    }

}
