//
//  ViewController.swift
//  Scene-Trans01-Re
//
//  Created by 이재백 on 2016. 12. 13..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func moveNext(_ sender: Any) {
        
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        uvc.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        
        self.present(uvc, animated: true)
    }
}

