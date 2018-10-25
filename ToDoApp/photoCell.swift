import UIKit

class photoCell: UITableViewCell {
    @IBOutlet weak var icon: UIImageView!
    
    var task: String? {
        didSet {
            if let task = task {
                icon.image = UIImage(named: task)
                icon.contentMode = .scaleAspectFit
            }
        }
    }
}
