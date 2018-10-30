import UIKit

class CreateViewController: UIViewController {

    @IBOutlet var input: UITextField!
    
    @IBAction func createPressed(_ sender: Any) {
        if(input.text != ""){
            list.append(input.text!)
            task.append("incomplete")
            input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

