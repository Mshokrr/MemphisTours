//
//  ViewController.swift
//  Memphis Tours
//
//  Created by Mohamed Shokr on 2/28/17.
//  Copyright © 2017 Mohamed Shokr. All rights reserved.
//

import UIKit

// Color Pallete

extension UIColor {
    class var miBlueberry: UIColor {
        return UIColor(red: 63.0 / 255.0, green: 76.0 / 255.0, blue: 156.0 / 255.0, alpha: 1.0)
    }
    
    class var miWhite: UIColor {
        return UIColor(white: 255.0 / 255.0, alpha: 1.0)
    }
    
    class var miBlueberryTwo: UIColor {
        return UIColor(red: 74.0 / 255.0, green: 59.0 / 255.0, blue: 137.0 / 255.0, alpha: 1.0)
    }
    
    class var miBluish: UIColor {
        return UIColor(red: 41.0 / 255.0, green: 111.0 / 255.0, blue: 193.0 / 255.0, alpha: 1.0)
    }
}

// Text styles

extension UIFont {
    
    class func miTextStyleFont() -> UIFont? {
        return UIFont(name: ".SF NS Display", size: 15.0)
    }

    class func miTextStyle2Font() -> UIFont? {
        return UIFont(name: ".SFNSDisplay-Bold", size: 17.5)
    }
    
    class func miTextStyle3Font() -> UIFont? {
        return UIFont(name: ".SFNSDisplay-Bold", size: 15.0)
    }
}



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(white: 100 / 255, alpha: 1.0)
        
        
        let registerButton = UIButton(type: .custom)
        registerButton.setTitle("REGISTER", for: .normal)
        registerButton.titleLabel?.font = UIFont.miTextStyle2Font()
        registerButton.frame = CGRect(x: 0, y: 608, width: 187.5, height: 59)
        registerButton.clipsToBounds = true
        registerButton.backgroundColor = UIColor.miBlueberryTwo
        registerButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        registerButton.tag = 1
        self.view.addSubview(registerButton)

        let loginButton = UIButton(type: .custom)
        loginButton.setTitle("LOGIN", for: .normal)
        loginButton.titleLabel!.font = UIFont.miTextStyle2Font()
        loginButton.frame = CGRect(x: 187.5, y: 608, width: 187.5, height: 59)
        loginButton.clipsToBounds = true
        loginButton.backgroundColor = UIColor.miBlueberryTwo
        loginButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        loginButton.tag = 2
        self.view.addSubview(loginButton)
        
//        let skipLabel = UILabel()
//        skipLabel.text = "SKIP"
//        skipLabel.font = UIFont.miTextStyleFont()
//        skipLabel.frame = CGRect(x: 296, y: 40.5, width: 54, height: 17.5)
//        skipLabel.clipsToBounds = true
//        self.view.addSubview(skipLabel)
//        
        let skipButton = UIButton(type: .custom)
        skipButton.titleLabel?.textColor = UIColor.black
        skipButton.setTitle("SKIP", for: .normal)
        skipButton.titleLabel?.font = UIFont.miTextStyleFont()
        skipButton.frame = CGRect(x: 296, y: 40.5, width: 54, height: 17.5)
        skipButton.clipsToBounds = true
        self.view.addSubview(skipButton)
        
//        let locationPermissionButton = UIButton()
//        locationPermissionButton.setTitle("LOCATION PERMISSION", for: .normal)
//        locationPermissionButton.titleLabel?.font = UIFont.miTextStyle3Font()
//        locationPermissionButton.frame = CGRect(x: 87.5, y: 556, width: 200, height: 45)
//        locationPermissionButton.layer.cornerRadius = 25
//        locationPermissionButton.clipsToBounds = true
//        locationPermissionButton.backgroundColor = UIColor.miBlueberry
//        self.view.addSubview(locationPermissionButton)
        
        

    }
    
    func buttonAction(sender: UIButton!) {
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 || btnsendtag.tag == 2 {
            print("custom buttons")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

