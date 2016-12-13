//
//  SecondVC.swift
//  Scene-Trans01-Re
//
//  Created by 이재백 on 2016. 12. 13..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController {
    
    @IBAction func dismiss(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
