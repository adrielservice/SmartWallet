//
//  InterfaceController.swift
//  SmartWallet WatchKit Extension
//
//  Created by David Beilis on 3/17/15.
//  Copyright (c) 2015 Adriel Service. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var imgCard1: WKInterfaceImage!
    
    @IBOutlet weak var imgCard2: WKInterfaceImage!
    
    @IBOutlet weak var imgCard3: WKInterfaceImage!
    
    @IBOutlet weak var imgCard4: WKInterfaceImage!
    
    let objects: [Int]
    var isPaying: [Bool]
    var cards: [String]
    
    override init() {
        objects = [2, 10]
        isPaying = [false, false, false, false]
        cards = ["costco.png", "ikea.png", "longos.png", "sobeys.png"]
        super.init()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func payCard(index: Int, wkImage: WKInterfaceImage) {
        if (isPaying[index] == false) {
            wkImage.setImageNamed("barcode.png")
            isPaying[index] = true;
        } else {
            wkImage.setImageNamed(cards[index]);
            isPaying[index] = false;
        }
    }
    
    @IBAction func payCard1() {
        payCard(0, wkImage: imgCard1)
    }
    
    @IBAction func payCard2() {
        payCard(1, wkImage: imgCard2)
    }
    
    @IBAction func payCard3() {
        payCard(2, wkImage: imgCard3)
    }
    
    @IBAction func payCard4() {
        payCard(3, wkImage: imgCard3)
    }
    
    @IBAction func showPages(){
        let names = objects.map { x in "page" }
        presentControllerWithNames(names, contexts: objects)
    }

}
