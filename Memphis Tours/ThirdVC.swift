//
//  ThirdVC.swift
//  Memphis Tours
//
//  Created by Mohamed Shokr on 3/3/17.
//  Copyright © 2017 Mohamed Shokr. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    
    let (screenWidth, screenHeight) = UIScreen.main.applicationFrame.wh

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg3.jpg")!)
        
        var customString = "The world in your pocket"
        var customMutableString = NSMutableAttributedString()
        
        customMutableString = NSMutableAttributedString(
            string : customString,
            attributes : [
                NSFontAttributeName: UIFont.miTextStyle8Font(),
                NSForegroundColorAttributeName : UIColor.white
            ]
        )
        
        customMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.miAppleGreen, range: NSRange(location:4, length: 5))
        
        let customStringLabel = UILabel()
        customStringLabel.attributedText = customMutableString
          // Had to change width for text wrapping and y to fit text
        customStringLabel.frame = CGRect(x: screenWidth*0.105, y: screenHeight*0.424, width: 150, height: 110)
        customStringLabel.clipsToBounds = true
        customStringLabel.lineBreakMode = .byWordWrapping
        customStringLabel.numberOfLines = 0
        self.view.addSubview(customStringLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Discovr learns what you like and guides you to find things all over the world. Log in to start exploring."
        descriptionLabel.frame = CGRect(x: screenWidth*0.105, y: screenHeight*0.625, width: 226.5, height: 54)
        descriptionLabel.clipsToBounds = true
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.miTextStyleFont()
        descriptionLabel.textColor = UIColor.white
        self.view.addSubview(descriptionLabel)

    }

}
