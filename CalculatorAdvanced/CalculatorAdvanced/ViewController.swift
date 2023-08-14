//
//  ViewController.swift
//  CalculatorAdvanced
//
//  Created by Muhammad Ziddan Hidayatullah on 07/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculateLabel: UILabel!
    var totalNumber: String = "0"
    var comaPressedCount: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        guard let currentButtonText = sender.currentTitle else {return}
        if currentButtonText == "." {
            comaPressedCount += 1
        }
        
        if totalNumber == "0" && currentButtonText != "." {
            totalNumber = currentButtonText
        } else {
            if currentButtonText == "." && comaPressedCount > 1 {return}
            
            totalNumber += currentButtonText
        }
        
        calculateLabel.text = totalNumber
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        guard let currentButtonText = sender.currentTitle else {return}
        
        switch currentButtonText {
            case "AC" :
                totalNumber = "0"
                calculateLabel.text = totalNumber
                comaPressedCount = 0
            
//            case "/" :
                
            
            default: print("safe")
        }
    }
    
}
