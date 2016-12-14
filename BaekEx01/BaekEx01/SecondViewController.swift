//
//  SecondViewController.swift
//  BaekEx01
//
//  Created by 이재백 on 2016. 12. 14..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func prevByPresent(_ sender: Any) {
        _ = self.presentingViewController?.dismiss(animated: true)
        
    }
    
    @IBAction func prevByPop(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func gotoPage2(_ sender: UIStoryboardSegue) {
        
    }
}
