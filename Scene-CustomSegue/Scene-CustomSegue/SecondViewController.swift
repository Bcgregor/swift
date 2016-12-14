//
//  SecondViewController.swift
//  Scene-CustomSegue
//
//  Created by 이재백 on 2016. 12. 14..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class SeocondViewController : UIViewController {
    
    @IBAction func backByPresent(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func backByShow(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
}
