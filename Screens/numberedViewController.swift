//
//  numberedViewController.swift
//  Screens
//
//  Created by Joseph Rogers on 8/6/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
//

import UIKit

class numberedViewController: UIViewController {

    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(label)
        label.textColor = .white
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 64)
        label.center = view.center
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = navigationController?.viewControllers.count {
            label.text = String(number)
            label.sizeToFit()
            tabBarItem.badgeValue = String(number)
            navigationController?.tabBarItem.badgeValue = String(number)
        }
    }
    
    @IBAction func donePressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
