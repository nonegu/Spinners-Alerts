//
//  ViewController.swift
//  Spinners & Alerts
//
//  Created by Ender Güzel on 4.03.2019.
//  Copyright © 2019 Creyto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlertPressed(_ sender: UIButton) {
        
        let alertContreller = UIAlertController(title: "Hey there!", message: "Are you sure you want to do this?", preferredStyle: UIAlertController.Style.alert)
        
        alertContreller.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            print("OK button pressed")
            self.dismiss(animated: true, completion: nil)
        }))
        
        alertContreller.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
            print("Cancel button pressed")
            self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alertContreller, animated: true, completion: nil)
    }
    
    @IBAction func pauseAppPressed(_ sender: UIButton) {
        
        let activityIndicatior = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        activityIndicatior.center = self.view.center
        activityIndicatior.hidesWhenStopped = true
        activityIndicatior.style = UIActivityIndicatorView.Style.gray
        
        view.addSubview(activityIndicatior)
        activityIndicatior.startAnimating()
        
        UIApplication.shared.beginIgnoringInteractionEvents()
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

