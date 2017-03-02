//
//  LocationViewController.swift
//  Memphis Tours
//
//  Created by Mohamed Shokr on 3/2/17.
//  Copyright © 2017 Mohamed Shokr. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController, CLLocationManagerDelegate{
    
    var locationManager: CLLocationManager!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        self.view.backgroundColor = UIColor(white: 100 / 255, alpha: 1.0)

        let locationPermissionButton = UIButton()
        locationPermissionButton.setTitle("LOCATION PERMISSION", for: .normal)
        locationPermissionButton.titleLabel?.font = UIFont.miTextStyle3Font()
        locationPermissionButton.frame = CGRect(x: 87.5, y: 556, width: 200, height: 45)
        locationPermissionButton.layer.cornerRadius = 25
        locationPermissionButton.clipsToBounds = true
        locationPermissionButton.backgroundColor = UIColor.miBlueberry
        locationPermissionButton.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)
        locationPermissionButton.tag = 3
        self.view.addSubview(locationPermissionButton)
        
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
    
    func buttonAction2(sender: UIButton){
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 3 {
            print("hi")
            
        }
    }

}
