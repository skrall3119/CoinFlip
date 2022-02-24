//
//  InterfaceController.swift
//  CoinFlip WatchKit Extension
//
//  Created by Alex Janci on 2/24/22.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var flipLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    @IBAction func flipButtonPressed() {
        flipLabel.setText("Flipping the coin.")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.flipLabel.setText("Flipping the coin..")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.flipLabel.setText("Flipping the coin...")
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    let randomFlip = Bool.random()
                    if(randomFlip) {
                        self.flipLabel.setText("Heads")
                    } else {
                        self.flipLabel.setText("Tails")
                    }
                }
                
            }
        }
    }
    
}
