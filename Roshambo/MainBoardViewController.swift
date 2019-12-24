//
//  MainBoardViewController.swift
//  Roshambo
//
//  Created by Prakhar Maheshwari on 12/23/19.
//  Copyright © 2019 Prakhar Maheshwari. All rights reserved.
//

import UIKit

class MainBoardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rockButtonPressed(_ sender: UIButton) {
        let controller: ResultViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.userSelectedValue = 3
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func paperButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "paperSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultViewController
        if segue.identifier == "scissorSegue"{
            controller.userSelectedValue = 2
            print("scissorSegue")
        }else if segue.identifier == "paperSegue"{
             controller.userSelectedValue = 1
            print("paperSegue")
        }
    }
    
}

