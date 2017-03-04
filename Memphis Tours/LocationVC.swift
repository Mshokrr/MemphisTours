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
    
    let (screenWidth, screenHeight) = UIScreen.main.applicationFrame.wh
    
    var locationManager: CLLocationManager!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        
//        let backgroundImg = UIImage(named: "worldMapBg.jpg")
//        let backgroundImgView = UIImageView(image: backgroundImg)
//        backgroundImgView.alpha = 0.5
//        self.view.addSubview(backgroundImgView)
        
        // World Map
        
        let worldMap = UILabel()
        worldMap.backgroundColor = UIColor(patternImage: UIImage(named: "worldMap.png")!)
        worldMap.frame = CGRect(x: screenWidth*0.078, y: screenHeight*0.179, width: screenWidth*0.843, height: screenHeight*0.172)
        self.view.addSubview(worldMap)
        
        // Custom string to bold part of the label text
        
        var customString = "Let's help you discover things around you"
        var customMutableString = NSMutableAttributedString()
        
        customMutableString = NSMutableAttributedString(
            string : customString,
            attributes : [NSFontAttributeName: UIFont.miTextStyle6Font()]
        )
        customMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:0, length: 41))
        customMutableString.addAttribute(NSFontAttributeName, value: UIFont.miTextStyle7Font(), range: NSRange(location:15, length: 8))
        
        let customStringLabel = UILabel()
        customStringLabel.attributedText = customMutableString
        customStringLabel.textAlignment = NSTextAlignment.center
        customStringLabel.lineBreakMode = .byWordWrapping
        customStringLabel.numberOfLines = 0
        customStringLabel.frame = CGRect(x: screenWidth*0.14, y: screenHeight*0.372, width: 260, height: 60)
        self.view.addSubview(customStringLabel)
        
        // Location Permission button

        let locationPermissionButton = UIButton()
        locationPermissionButton.setTitle("Location permission", for: .normal)
        locationPermissionButton.titleLabel?.font = UIFont.miTextStyle3Font()
        locationPermissionButton.frame = CGRect(x: screenWidth*0.233, y: screenHeight*0.833, width: screenWidth*0.533, height: screenHeight*0.067)
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
        skipButton.frame = CGRect(x: screenWidth*0.789, y: screenHeight*0.061, width: screenWidth*0.144, height: screenHeight*0.026)
        skipButton.clipsToBounds = true
        self.view.addSubview(skipButton)
        
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
