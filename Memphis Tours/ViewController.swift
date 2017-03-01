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
        return UIFont(name: ".SFNSDisplay-Bold", size: 20.0)
    }
    
    class func miTextStyle2Font() -> UIFont? {
        return UIFont(name: ".SFNSText-Bold", size: 25.0)
    }
    
    class func miTextStyle3Font() -> UIFont? {
        return UIFont(name: ".SFNSText-Light", size: 25.0)
    }
    
    class func miTextStyle4Font() -> UIFont? {
        return UIFont(name: ".SFNSDisplay-Bold", size: 20.0)
    }
    
    class func miTextStyle5Font() -> UIFont? {
        return UIFont(name: ".SFNSDisplay-Bold", size: 17.5)
    }

    class func miTextStyle6Font() -> UIFont? {
        return UIFont(name: ".SF NS Display", size: 15.0)
    }
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let registerButton = UIButton(type: .custom)
        registerButton.setTitle("REGISTER", for: .normal)
        registerButton.frame = CGRect(x: 0, y: 608, width: 187.5, height: 59)
        registerButton.clipsToBounds = true
        registerButton.backgroundColor = UIColor.miBlueberryTwo
        self.view.addSubview(registerButton)
        
        let loginButton = UIButton(type: .custom)
        loginButton.setTitle("LOGIN", for: .normal)
        loginButton.titleLabel?.font = UIFont.miTextStyle5Font()
        loginButton.frame = CGRect(x: 187.5, y: 608, width: 187.5, height: 59)
        loginButton.clipsToBounds = true
        loginButton.backgroundColor = UIColor.miBlueberryTwo
        self.view.addSubview(loginButton)
        
        let skipLabel = UILabel()
        skipLabel.text = "SKIP"
        skipLabel.font = UIFont.miTextStyle6Font()
        skipLabel.frame = CGRect(x: 296, y: 40.5, width: 54, height: 17.5)
        skipLabel.clipsToBounds = true
        self.view.addSubview(skipLabel)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

