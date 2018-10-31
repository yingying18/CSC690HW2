import UIKit

var list = [String] ()
var task = [String] ()
var intask = 0

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var myTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let x = UserDefaults.standard.object(forKey: "todolist") {list = x as! [String]}
        if let x = UserDefaults.standard.object(forKey: "completion?") {task = x as! [String]}
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell") as! photoCell
        cell.textLabel?.text = list[indexPath.row]
        cell.task = task[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            list.remove(at: indexPath.row)
            UserDefaults.standard.set(list, forKey: "todolist")
            UserDefaults.standard.set(task, forKey: "completion?")
            myTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        intask = list.index(of: list[indexPath.row])!
        performSegue(withIdentifier: "switch", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

