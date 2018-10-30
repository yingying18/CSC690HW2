import UIKit

class EditItem: UIViewController {
    @IBOutlet var editInput: UITextField!
    @IBAction func updatePressed(_ sender: Any){
        if(editInput.text != ""){
            list.remove(at: intask)
            list.insert(editInput.text!, at: intask)
            editInput.text = ""
            task.remove(at: intask)
            task.insert("incomplete", at: intask)
        }
    }
    
    @IBAction func completePressed(_ sender: Any) {
        task.remove(at: intask)
        task.insert("complete", at: intask)
    }
    
    @IBAction func incompletePressed(_ sender: Any) {
        task.remove(at: intask)
        task.insert("incomplete", at: intask)
    }
}
