//
//  LocationViewController.swift
//  Memphis Tours
//
//  Created by Mohamed Shokr on 3/2/17.
//  Copyright © 2017 Mohamed Shokr. All rights reserved.
//

import UIKit
import CoreLocation

class LocationVC: UIViewController, CLLocationManagerDelegate{
    
    var locationManager: CLLocationManager!
    var customString = "Let's help you discover"
    var customMutableString = NSMutableAttributedString()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        
        let backgroundImg = UIImage(named: "worldMapBg.jpg")
        let backgroundImgView = UIImageView(image: backgroundImg)
        backgroundImgView.alpha = 0.5
        self.view.addSubview(backgroundImgView)
        
        // World Map
        
        let worldMap = UILabel()
        worldMap.backgroundColor = UIColor(patternImage: UIImage(named: "worldMap.png")!)
        worldMap.frame = CGRect(x: 29.4, y: 116, width: 316.1, height: 111.4)
        self.view.addSubview(worldMap)
        
        // Custom string to bold part of the label text
        
        customMutableString = NSMutableAttributedString(
            string : customString,
            attributes : [NSFontAttributeName: UIFont.miTextStyle6Font()]
        )
        customMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:0, length: 23))
        customMutableString.addAttribute(NSFontAttributeName, value: UIFont.miTextStyle7Font(), range: NSRange(location:15, length: 8))
        
        let customStringLabel = UILabel()
        customStringLabel.attributedText = customMutableString
        customStringLabel.textAlignment = NSTextAlignment.center
        customStringLabel.frame = CGRect(x: 52.5, y: 248, width: 270, height: 23.5)
        self.view.addSubview(customStringLabel)
        
        // Rest of the string
        
        let customStringLabel2 = UILabel()
        customStringLabel2.text = "things around you"
        customStringLabel2.textAlignment = NSTextAlignment.center
        customStringLabel2.frame = CGRect(x: 52.5, y: 271.5, width: 270, height: 23.5)
        customStringLabel2.font = UIFont.miTextStyle6Font()
        customStringLabel2.textColor = UIColor.white
        customStringLabel2.clipsToBounds = true
        self.view.addSubview(customStringLabel2)
        
        // Location Permission button

        let locationPermissionButton = UIButton()
        locationPermissionButton.setTitle("Location permission", for: .normal)
        locationPermissionButton.titleLabel?.font = UIFont.miTextStyle3Font()
        locationPermissionButton.frame = CGRect(x: 87.5, y: 556, width: 200, height: 45)
        locationPermissionButton.layer.cornerRadius = 25
        locationPermissionButton.clipsToBounds = true
        locationPermissionButton.backgroundColor = UIColor.miBlueberry
        locationPermissionButton.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)
        locationPermissionButton.tag = 3
        self.view.addSubview(locationPermissionButton)
        
        // Skip button
        
        let skipButton = UIButton(type: .custom)
        skipButton.setTitle("SKIP", for: .normal)
        skipButton.setTitleColor(UIColor.white, for: .normal)
        skipButton.frame = CGRect(x: 296, y: 40.5, width: 54, height: 17.5)
        skipButton.clipsToBounds = true
        self.view.addSubview(skipButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Action for Location Permission Button .. Still not working
    
    func buttonAction2(sender: UIButton){
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 3 {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.requestWhenInUseAuthorization()
        }
    }

}
