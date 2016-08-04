//  ViewController.swift
//  MartinsSample
//
//  Created by MMi5 on 03/08/16.
//  Copyright © 2016 MMi5. All rights reserved.


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SearchResults: UISearchBar!
    @IBAction func BarcodeScanner(sender: AnyObject) {
    print("Its working")
        self.navigationController?.pushViewController(scannerViewController() as UIViewController, animated:true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.init(hue: 351, saturation: 100, brightness: 96, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        let logo = UIImage(named: "logo1.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        self.SearchResults.layer.borderColor = UIColor.init(hue: 351, saturation: 100, brightness: 96, alpha: 1).CGColor
        self.SearchResults.layer.borderWidth = 1
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

