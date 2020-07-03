
import UIKit
import SwiftUI

class ContentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBSegueAction func addSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: ContentView())
    }
   
}

