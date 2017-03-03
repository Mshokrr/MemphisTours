//
//  PageVC.swift
//  Memphis Tours
//
//  Created by Mohamed Shokr on 3/3/17.
//  Copyright © 2017 Mohamed Shokr. All rights reserved.
//

import Foundation
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
        return UIFont(name: "SanFranciscoDisplay-Regular", size: 15.0)
    }
    
    class func miTextStyle2Font() -> UIFont? {
        return UIFont(name: "SanFranciscoDisplay-Bold", size: 17.5)
    }
    
    class func miTextStyle3Font() -> UIFont? {
        return UIFont(name: "SanFranciscoDisplay-Bold", size: 15.0)
    }
    
    class func miTextStyle4Font() -> UIFont? {
        return UIFont(name: "SanFranciscoDisplay-Bold", size: 25.0)
    }
    
    class func miTextStyle5Font() -> UIFont? {
        return UIFont(name: "SanFranciscoDisplay-Light", size: 25.0)
    }
    
    class func miTextStyle6Font() -> UIFont? {
        return UIFont(name: "SanFranciscoDisplay-Light", size: 20.0)
    }
    
    class func miTextStyle7Font() -> UIFont? {
        return UIFont(name: "SanFranciscoDisplay-Bold", size: 20.0)
    }
    
}

class PageVC: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    lazy var VCArr: [UIViewController] = {
        return [self.VCInstance(name: "FirstVC"),
                self.VCInstance(name: "SecondVC"),
                self.VCInstance(name: "ThirdVC")]
    }()
    
    private func VCInstance(name: String) -> UIViewController{
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        
        if let firstVC = VCArr.first{
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
        // MEMPHIS TOURS label
        
        let nameLabel = UILabel()
        nameLabel.text = "MEMPHIS"
        nameLabel.textColor = UIColor.white
        nameLabel.font = UIFont.miTextStyle4Font()
        nameLabel.frame = CGRect(x: 39.5, y: 32, width: 163, height: 29.5)
        nameLabel.clipsToBounds = true
        self.view.addSubview(nameLabel)
        
        let nameLabel2 = UILabel()
        nameLabel2.text = "TOURS"
        nameLabel2.textColor = UIColor.white
        nameLabel2.font = UIFont.miTextStyle5Font()
        nameLabel2.frame = CGRect(x: 39.5, y: 61.5, width: 163, height: 29.5)
        nameLabel2.clipsToBounds = true
        self.view.addSubview(nameLabel2)
        
        // REGISTER and LOGIN button
        
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
        
        // SKIP button
        
        let skipButton = UIButton(type: .custom)
        skipButton.setTitle("SKIP", for: .normal)
        skipButton.setTitleColor(UIColor.white, for: .normal)
        skipButton.frame = CGRect(x: 296, y: 40.5, width: 54, height: 17.5)
        skipButton.clipsToBounds = true
        self.view.addSubview(skipButton)
    }
    
    // REGISTER and LOGIN buttons actions
    
    func buttonAction(sender: UIButton!) {
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 || btnsendtag.tag == 2 {
            let locationViewController: LocationViewController = LocationViewController()
            let controller = storyboard?.instantiateViewController(withIdentifier: "location") as! LocationViewController
            present(controller, animated : true, completion: nil)
            
        }
    }

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        for view in self.view.subviews {
            if view is UIScrollView {
                view.frame = UIScreen.main.bounds
            }
            else if view is UIPageControl {
                view.backgroundColor = UIColor.clear
                view.frame.origin.y -= 95
            }
        }
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
        guard let viewControllerIndex = VCArr.index(of: viewController) else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else {
            return VCArr.last
        }
        guard VCArr.count > previousIndex else {
            return nil
        }
        return VCArr[previousIndex]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
        guard let viewControllerIndex = VCArr.index(of: viewController) else {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
        guard nextIndex < VCArr.count else {
            return VCArr.first
        }
        guard VCArr.count > nextIndex else {
            return nil
        }
        return VCArr[nextIndex]
        
    }
    
    public func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return VCArr.count
    }
    
    public func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = VCArr.index(of: firstViewController) else {
                return 0
        }
        return firstViewControllerIndex
    }
    
    
}
