//
//  ViewController.swift
//  ClarinetShop
//
//  Created by Yuwen Chiu on 2018/8/20.
//  Copyright © 2018年 YuwenChiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clQtyLabel: UILabel!
    @IBOutlet weak var caseQtyLabel: UILabel!
    @IBOutlet weak var collarQtyLabel: UILabel!
    @IBOutlet weak var bambooQtyLabel: UILabel!
    @IBOutlet weak var rackQtyLabel: UILabel!
    @IBOutlet weak var clothQtyLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var totalPrice: Int = 0
    
    var clQty: Int = 0
    var caseQty: Int = 0
    var collarQty: Int = 0
    var bambooQty: Int = 0
    var rackQty: Int = 0
    var clothQty: Int = 0
    
    @IBAction func clStepper(_ sender: UIStepper) {
        clQty = Int(sender.value)
        clQtyLabel.text = clQty.description
        total()
    }
    @IBAction func caseStepper(_ sender: UIStepper) {
        caseQty = Int(sender.value)
        caseQtyLabel.text = caseQty.description
        total()
    }
    @IBAction func collarStepper(_ sender: UIStepper) {
        collarQty = Int(sender.value)
        collarQtyLabel.text = collarQty.description
        total()
    }
    @IBAction func bambooStepper(_ sender: UIStepper) {
        bambooQty = Int(sender.value)
        bambooQtyLabel.text = bambooQty.description
        total()
    }
    @IBAction func rackStepper(_ sender: UIStepper) {
        rackQty = Int(sender.value)
        rackQtyLabel.text = rackQty.description
        total()
    }
    @IBAction func clothStepper(_ sender: UIStepper) {
        clothQty = Int(sender.value)
        clothQtyLabel.text = clothQty.description
        total()
    }
    
    func total(){
        totalPrice = 32000*clQty + 2700*caseQty + 1050*collarQty +
        570*bambooQty + 550*rackQty + 480*clothQty
        totalPriceLabel.text = totalPrice.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

