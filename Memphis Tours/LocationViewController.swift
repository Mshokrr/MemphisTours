//
//  LocationViewController.swift
//  Memphis Tours
//
//  Created by Mohamed Shokr on 3/1/17.
//  Copyright © 2017 Mohamed Shokr. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locationPermissionButton = UIButton()
        locationPermissionButton.setTitle("LOCATION PERMISSION", for: .normal)
        locationPermissionButton.titleLabel?.font = UIFont.miTextStyle3Font()
        locationPermissionButton.frame = CGRect(x: 87.5, y: 556, width: 200, height: 45)
        locationPermissionButton.layer.cornerRadius = 25
        locationPermissionButton.clipsToBounds = true
        locationPermissionButton.backgroundColor = UIColor.miBlueberry
        self.view.addSubview(locationPermissionButton)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
