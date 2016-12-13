//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by 이재백 on 2016. 12. 13..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController {
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    @IBAction func back2(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
    }
}
