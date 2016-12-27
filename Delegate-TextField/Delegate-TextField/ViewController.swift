//
//  ViewController.swift
//  Delegate-TextField
//
//  Created by 이재백 on 2016. 12. 27..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var tf: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        self.tf.resignFirstResponder()
    }
    
    @IBAction func input(_ sender: Any) {
        self.tf.becomeFirstResponder()
    }

    override func viewDidLoad() {
        /**   
         * 입력값 속성 설정
         */
        self.tf.placeholder = "값을 입력하세요" // 안내 메시지
        self.tf.keyboardType = UIKeyboardType.alphabet // 키보드 타입 영문자 패드로
        self.tf.keyboardAppearance = UIKeyboardAppearance.dark // 키보드 스타일 어둡게
        self.tf.returnKeyType = UIReturnKeyType.join // 리턴키 타입은 "Join"
        self.tf.enablesReturnKeyAutomatically = true // 리턴키 자동 활성화 "On"
        
        /**
         * 스타일 설정
         */
        // 테두리 스타일 - 직선
        self.tf.borderStyle = UITextBorderStyle.roundedRect
        
        // 배경 색상
        self.tf.backgroundColor = UIColor(white:0.87, alpha: 1.0)
        
        // 수직 방향 테스트 배열 위치 - 가운데
        self.tf.contentVerticalAlignment = .center //UIControlContentVerticalAlignment.center
        
        // 수평 방향 텍스트 배열 위치 - 가운데
        self.tf.contentHorizontalAlignment = .center // UIControlContentHorizontalAlignment.center
        
        // 테두리 색상 - 회색
        self.tf.layer.borderColor = UIColor.darkGray.cgColor
        
        // 테두리 두께 - 2.0 픽셀
        self.tf.layer.borderWidth = 2.0
    
        /**
         * 텍스트 필드를 최초 응답자로 지정
         */
        self.tf.becomeFirstResponder()
        
        
        /**
         * 델리게이트 지정
         */
        // 이를 가리켜 뷰 컨트롤러가 텍스트 필드의 델리게이트 객체로 지정되었다 고 표현한다.
        self.tf.delegate = self // 'self' is now View Controller
    }
    
    // UITextFieldDelegate 프로토콜에서 선언된 메소드들 중 하나
    
     // 텍스트필드의 편집을 시작할 때 호출
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing execute!")
        return true // false: 편집 불허
    }
    
    // 텍스트필드의 편집이 시작된 후 호출
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트필드의 편집이 시작되었습니다")
    }
    
    // 텍스트 필드의 내용이 삭제될 때 호출
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("텍스트필드의 내용이 삭제됩니다")
        return true // false: 삭제 불허
    }
    
    // 텍스트 필드의 내용이 변경될 때 호출
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("텍스트 필드의 내용이 \(string)으로 변경됩니다")
        return true // false: 내용 변경x
    }
    
    // 텍스트 필드의 리턴키가 눌러졌을 때 호출
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("텍스트필드의 리턴키가 눌러졌습니다")
        return true
    }
    
    // 텍스트필드의 편집이 종료될 때 호출
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("텍스트필드의 편집이 종료됩니다")
        return true // false: 편집 종료 x
        
    }
    
    // 텍스트필드의 편집이 종료되었을 때 호출
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        print("텍스트필드의 편집이 종료되었습니다")
    }
}

