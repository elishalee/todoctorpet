

import UIKit

class MyPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

   
    @IBOutlet weak var petField: UITextField!
    
    let pets = ["고양이", "강아지", "햄스터", "토끼"]
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        petField.inputView = pickerView
        petField.textAlignment = .center
        petField.placeholder = "반려동물을 선택하세요"
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
