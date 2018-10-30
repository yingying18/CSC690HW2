import UIKit

class CreateViewController: UIViewController {

    @IBOutlet var input: UITextField!
    
    @IBAction func createPressed(_ sender: Any) {
        if(input.text != ""){
            list.insert(input.text!, at: 0)
            task.insert("incomplete", at: 0)
            input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

