//
//  SecondVC.swift
//  Memphis Tours
//
//  Created by Mohamed Shokr on 3/3/17.
//  Copyright © 2017 Mohamed Shokr. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2.jpg")!)
        
        var customString = "Your favorite places"
        var customMutableString = NSMutableAttributedString()
        
        customMutableString = NSMutableAttributedString(
            string : customString,
            attributes : [
                NSFontAttributeName: UIFont.miTextStyle8Font(),
                NSForegroundColorAttributeName : UIColor.white
            ]
        )
        
        customMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.miOrangish, range: NSRange(location:5, length: 8))
        
        let customStringLabel = UILabel()
        customStringLabel.attributedText = customMutableString
        // Had to change width for text wrapping and y for distance between labels
        customStringLabel.frame = CGRect(x: 39.5, y: 285, width: 150, height: 110.8)
        customStringLabel.clipsToBounds = true
        customStringLabel.lineBreakMode = .byWordWrapping
        customStringLabel.numberOfLines = 0
        self.view.addSubview(customStringLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Explore the world searching by location, interests and more on the go."
        descriptionLabel.frame = CGRect(x: 39.5, y: 403.5, width: 182.9, height: 54)
        descriptionLabel.clipsToBounds = true
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.miTextStyleFont()
        descriptionLabel.textColor = UIColor.white
        self.view.addSubview(descriptionLabel)


    }

}
