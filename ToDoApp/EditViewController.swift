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
            
            UserDefaults.standard.set(list, forKey: "todolist")
            UserDefaults.standard.set(task, forKey: "completion?")
        }
        
    }
    
    @IBAction func completePressed(_ sender: Any) {
        if (task[intask] != "complete") {
            let completeItem = list[intask]
            list.remove(at: intask)
            list.append(completeItem)
            task.remove(at: intask)
            task.append("complete")
            
            UserDefaults.standard.set(list, forKey: "todolist")
            UserDefaults.standard.set(task, forKey: "completion?")
        }
    }
    
    @IBAction func incompletePressed(_ sender: Any) {
        if (task[intask] != "incomplete") {
            let incompleteItem = list[intask]
            list.remove(at: intask)
            list.insert(incompleteItem, at: 0)
            task.remove(at: intask)
            task.insert("incomplete", at: 0)
            
            UserDefaults.standard.set(list, forKey: "todolist")
            UserDefaults.standard.set(task, forKey: "completion?")
        }
    }
}
