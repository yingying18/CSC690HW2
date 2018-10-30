import UIKit

class EditViewController: UIViewController {
    @IBOutlet var editInput: UITextField!
    @IBAction func updatePressed(_ sender: Any){
        if(editInput.text != ""){
            list.remove(at: intask)
            list.insert(editInput.text!, at: 0)
            editInput.text = ""
            task.remove(at: intask)
            task.insert("incomplete", at: 0)
        }
    }
    
    @IBAction func completePressed(_ sender: Any) {
        let completeItem = list[intask]
        list.remove(at: intask)
        list.append(completeItem)
        task.remove(at: intask)
        task.append("complete")
    }
    
    @IBAction func incompletePressed(_ sender: Any) {
        let incompleteItem = list[intask]
        list.remove(at: intask)
        list.insert(incompleteItem, at: 0)
        task.remove(at: intask)
        task.insert("incomplete", at: 0)
    }
}
