//
//  ViewController.swift
//  Lab1
//
//  Created by Camilla Moraes on 9/6/17.
//  Copyright © 2017 Camilla Moraes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Properties
    @IBOutlet weak var originalPriceField: UITextField!
    @IBOutlet weak var originalPriceLabel: UILabel!
    @IBOutlet weak var discountField: UITextField!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var salesTaxField: UITextField!
    @IBOutlet weak var salesTaxLabel: UILabel!
    @IBOutlet weak var finalPriceField: UITextView!
    @IBOutlet weak var finalPriceLabel: UILabel!
    @IBOutlet weak var instructions: UITextView!
    @IBOutlet weak var resultsField: UITextView!
    @IBOutlet weak var resultsImage: UIImageView!

    
    //Variables
    var originalPrice = 0.0
    var discountPercent = 0.0
    var salesPercent = 0.0
    var color: UIColor = .red

    //Actions
    @IBAction func priceValue(_ sender: Any) {

        originalPrice = Double((originalPriceField.text! as NSString).floatValue)
        
        if (originalPriceField.text?.isEmpty == true)
        {
            resultsField.text = ""
            let discount = originalPrice - (originalPrice * discountPercent)/100
            let finalPrice = discount + (discount*salesPercent)/100
            finalPriceField.text = "$\(String(format: "%.2f", finalPrice))"
            finalPriceField.layer.borderColor = nil
            finalPriceField.layer.borderWidth = 0
        }
        else
        {
            let discount = originalPrice - (originalPrice * discountPercent)/100
            let finalPrice = discount + (discount*salesPercent)/100
            
            finalPriceField.text = "$\(String(format: "%.2f", finalPrice))"

            instructions.text = ""
            let difference = abs(Double(originalPrice - finalPrice))
            
            if (originalPrice > finalPrice)
            {
                resultsField.text = "You could save \(String(format: "%.2f", difference)) dollars!"
                    resultsImage.image = #imageLiteral(resourceName: "happy")
                finalPriceField.layer.borderColor = nil
                finalPriceField.layer.borderWidth = 0
            }
            else if (originalPrice < finalPrice)
            {
                resultsField.text = "You would lose \(String(format: "%.2f", difference)) dollars!"
                    resultsImage.image = #imageLiteral(resourceName: "sad")
                finalPriceField.layer.borderColor = nil
                finalPriceField.layer.borderWidth = 0
            }
            else if (originalPrice == finalPrice)
            {
                resultsField.text = "You wouldn't save or lose money"
                    resultsImage.image = #imageLiteral(resourceName: "indifferent")
                finalPriceField.layer.borderColor = nil
                finalPriceField.layer.borderWidth = 0
            }
            
            if (finalPrice < 0)
            {
                instructions.text = "Reenter your information. A price cannot be negative."
                finalPriceField.layer.borderColor = UIColor.red.cgColor
                finalPriceField.layer.borderWidth = 1
            }
    }
}

    
    @IBAction func discountValue(_ sender: Any) {
        
         discountPercent = Double((discountField.text! as NSString).floatValue)
        
        if (originalPriceField.text?.isEmpty == true)
        {
            resultsField.text = ""
            let discount = originalPrice - (originalPrice * discountPercent)/100
            let finalPrice = discount + (discount*salesPercent)/100
            finalPriceField.text = "$\(String(format: "%.2f", finalPrice))"
            finalPriceField.layer.borderColor = nil
            finalPriceField.layer.borderWidth = 0
        }
        else {
            instructions.text = ""
            let discount = originalPrice - (originalPrice * discountPercent)/100
            let finalPrice = discount + (discount*salesPercent)/100
        
            finalPriceField.text = "$\(String(format: "%.2f", finalPrice))"
            
            let difference = abs(Double(originalPrice - finalPrice))
            
            if (originalPrice > finalPrice)
            {
                resultsField.text = "You could save \(String(format: "%.2f", difference)) dollars!"
                resultsImage.image = #imageLiteral(resourceName: "happy")
                finalPriceField.layer.borderColor = nil
                finalPriceField.layer.borderWidth = 0
            }
            else if (originalPrice < finalPrice)
            {
                resultsField.text = "You would lose \(String(format: "%.2f", difference)) dollars!"
                resultsImage.image = #imageLiteral(resourceName: "sad")
                finalPriceField.layer.borderColor = nil
                finalPriceField.layer.borderWidth = 0
            }
            else if (originalPrice == finalPrice)
            {
                resultsField.text = "You wouldn't save or lose money"
                resultsImage.image = #imageLiteral(resourceName: "indifferent")
                finalPriceField.layer.borderColor = nil
                finalPriceField.layer.borderWidth = 0
            }
            
            if (finalPrice < 0)
            {
                instructions.text = "Reenter your information. A price cannot be negative."
                 finalPriceField.layer.borderColor = UIColor.red.cgColor
                finalPriceField.layer.borderWidth = 1
                finalPriceField.layer.borderWidth = 0
            }
    }
}
    

    @IBAction func salesValue(_ sender: Any) {
        
            salesPercent = Double((salesTaxField.text! as NSString).floatValue)
        
        if (originalPriceField.text?.isEmpty == true) {
            resultsField.text = ""
            resultsImage.image = nil
            let discount = originalPrice - (originalPrice * discountPercent)/100
            let finalPrice = discount + (discount*salesPercent)/100
            finalPriceField.text = "$\(String(format: "%.2f", finalPrice))"
            finalPriceField.layer.borderColor = nil
            finalPriceField.layer.borderWidth = 0
        }

        else {
            let discount = originalPrice - (originalPrice * discountPercent)/100
            let finalPrice = discount + (discount*salesPercent)/100
            
            instructions.text = ""
            finalPriceField.text = "$\(String(format: "%.2f", finalPrice))"
            
            let difference = abs(Double(originalPrice - finalPrice))
            
            if (originalPrice > finalPrice)
            {
                resultsField.text = "You could save \(String(format: "%.2f", difference)) dollars!"
                resultsImage.image = #imageLiteral(resourceName: "happy")
                finalPriceField.layer.borderColor = nil
                finalPriceField.layer.borderWidth = 0
            }
            else if (originalPrice < finalPrice)
            {
                resultsField.text = "You would lose \(String(format: "%.2f", difference)) dollars!"
                resultsImage.image = #imageLiteral(resourceName: "sad")
                finalPriceField.layer.borderColor = nil
                finalPriceField.layer.borderWidth = 0
            }
            else if (originalPrice == finalPrice)
            {
                resultsField.text = "You wouldn't save or lose money"
                resultsImage.image = #imageLiteral(resourceName: "indifferent")
                finalPriceField.layer.borderColor = nil
                finalPriceField.layer.borderWidth = 0
            }
            
            if (finalPrice < 0)
            {
                instructions.text = "Reenter your information. A price cannot be negative."
                finalPriceField.layer.borderColor = UIColor.red.cgColor
                finalPriceField.layer.borderWidth = 1
            }
        }
    }

    
    @IBAction func resetButton(_ sender: Any) {
        originalPrice = 0.0
        discountPercent = 0.0
        salesPercent = 0.0
        
        originalPriceField.text = ""
        discountField.text = ""
        salesTaxField.text = ""
        finalPriceField.text = ""
        resultsField.text = ""
        instructions.text = ""
        resultsImage.image = nil
        finalPriceField.layer.borderColor = nil
        finalPriceField.layer.borderWidth = 0
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
