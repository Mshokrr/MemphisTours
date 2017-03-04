//
//  FirstVC.swift
//  Memphis Tours
//
//  Created by Mohamed Shokr on 3/3/17.
//  Copyright © 2017 Mohamed Shokr. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    let (screenWidth, screenHeight) = UIScreen.main.applicationFrame.wh
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1.jpg")!)
        
        var customString = "Find incredible places you will love"
        var customMutableString = NSMutableAttributedString()
        
        customMutableString = NSMutableAttributedString(
            string : customString,
            attributes : [
                NSFontAttributeName: UIFont.miTextStyle8Font(),
                NSForegroundColorAttributeName : UIColor.white
            ]
        )
        
        customMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.miRedPink, range: NSRange(location:32, length: 4))
        
        let customStringLabel = UILabel()
        customStringLabel.attributedText = customMutableString
        // Had to change the y and height parameters due to the difference from the prototype for the font
        customStringLabel.frame = CGRect(x: screenWidth*0.105, y: screenHeight*0.438, width: 227.8, height: 110)
        customStringLabel.clipsToBounds = true
        customStringLabel.lineBreakMode = .byWordWrapping
        customStringLabel.numberOfLines = 0
        self.view.addSubview(customStringLabel)

        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Discovr helps you to find exciting things you will love, no matter where you go."
        descriptionLabel.frame = CGRect(x: screenWidth*0.105, y: screenHeight*0.63, width: 190.5, height: 54)
        descriptionLabel.clipsToBounds = true
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.miTextStyleFont()
        descriptionLabel.textColor = UIColor.white
        self.view.addSubview(descriptionLabel)

    }
  
}
