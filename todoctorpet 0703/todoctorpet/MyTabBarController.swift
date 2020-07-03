

import UIKit

class MyTabBarController: UITabBarController {

    
    
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var pw: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myColor = UIColor.lightGray
        id.layer.borderColor = myColor.cgColor
        pw.layer.borderColor = myColor.cgColor
        
        id.layer.borderWidth = 1.0
        pw.layer.borderWidth = 1.0

        
    }
    

  

}
