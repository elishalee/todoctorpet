

import UIKit

class MyPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

   
    @IBOutlet weak var petField: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblValidationMessage: UILabel!
    
    
    // 반려동물 선택란 선택지
    let pets = ["고양이", "강아지", "햄스터", "토끼"]
    // 반려동물 선택란 변수 선언
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 반려동물 pickerView
        pickerView.delegate = self
        pickerView.dataSource = self
        
        petField.inputView = pickerView
        petField.textAlignment = .center
        petField.placeholder = "반려동물을 선택하세요"
        
        // 로그인 validation
        lblValidationMessage.isHidden = true
        
    }
    // 로그인 버튼
    func isValidEmail(emailID:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailID)
    }
    
    @IBAction func loginUser(_ sender: Any) {
        
        lblValidationMessage.isHidden = true
        
        guard let email = txtEmail.text, txtEmail.text?.count != 0 else{
                lblValidationMessage.isHidden = false
                lblValidationMessage.text = "이메일을 입력하세요"
                return
        }
        
        if isValidEmail(emailID: email) == false {
            lblValidationMessage.isHidden = false
            lblValidationMessage.text = "이메일 주소 형식으로 입력하세요"
        }
        
        guard let password = txtPassword.text, txtPassword.text?.count != 0 else{
                lblValidationMessage.isHidden = false
                lblValidationMessage.text = "비밀번호를 입력하세요"
                return
        }
        
        
    }
    
    
    
    
    // returns the number of 'columns' to display.
    @available(iOS 2.0, *)
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pets.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pets[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        petField.text = pets[row]
        petField.resignFirstResponder()
        
    }
    
    
}
