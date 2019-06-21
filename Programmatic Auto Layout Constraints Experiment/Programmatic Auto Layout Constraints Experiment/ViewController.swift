//
//  ViewController.swift
//  Programmatic Auto Layout Constraints Experiment
//
//  Created by John Williams III on 6/21/19.
//  Copyright © 2019 John Williams III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageViewBottle = UIImageView()
    var imageViewLogo = UIImageView()
    
    var leadingBottle: NSLayoutConstraint?
    var trailingBottle: NSLayoutConstraint?
    var topBottle: NSLayoutConstraint?
    var bottomBottle: NSLayoutConstraint?
    
    var leadingLogo: NSLayoutConstraint?
    var trailingLogo: NSLayoutConstraint?
    var topLogo: NSLayoutConstraint?
    var bottomLogo: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageViewBottle.image = UIImage(named: "riverboatredwine")
        imageViewBottle.contentMode = .scaleAspectFit
        view.addSubview(imageViewBottle) // this adds the imageView as a child of the View Controller's container view

        imageViewBottle.translatesAutoresizingMaskIntoConstraints = false

        leadingBottle = NSLayoutConstraint(item: imageViewBottle, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        
        trailingBottle = NSLayoutConstraint(item: imageViewBottle, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -10.0)
        
        topBottle = NSLayoutConstraint(item: imageViewBottle, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 300.0)
        
        bottomBottle = NSLayoutConstraint(item: imageViewBottle, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -100.0)
        
        leadingBottle?.isActive = true
        trailingBottle?.isActive = true
        topBottle?.isActive = true
        bottomBottle?.isActive = true
        
        
        imageViewLogo.image = UIImage(named: "lesBourgeosLogo")
        imageViewLogo.contentMode = .scaleAspectFit
        view.addSubview(imageViewLogo) // this adds the imageView as a child of the View Controller's container view
        
        imageViewLogo.translatesAutoresizingMaskIntoConstraints = false
        
        leadingLogo = NSLayoutConstraint(item: imageViewLogo, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)
        
        trailingLogo = NSLayoutConstraint(item: imageViewLogo, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        
        topLogo = NSLayoutConstraint(item: imageViewLogo, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 50.0)
        
        bottomLogo = NSLayoutConstraint(item: imageViewLogo, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -600.0)
        
        leadingLogo?.isActive = true
        trailingLogo?.isActive = true
        topLogo?.isActive = true
        bottomLogo?.isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

