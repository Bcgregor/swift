//
//  ViewController.swift
//  Scene-CustomSegue
//
//  Created by 이재백 on 2016. 12. 14..
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier=="custom_segue") {
            NSLog("커스텀 세그가 실행됩니다")
            //커스텀 세그가 실행될 때 처리할 내용을 여기에 작성
        } else if (segue.identifier=="action_segue") {
            NSLog("액션 세그가 실행됩니다")
        } else {
            NSLog("알 수 없는 세그입니다.")
        }
    }
    
    @IBAction func gotoPage1(_sender: UIStoryboardSegue) {
        
    }
}

