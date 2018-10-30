import XCTest
@testable import ToDoApp

class photoCellTests: XCTestCase {

    func textExample() {
        let item = photoCell()
        let status = UIImage(named: "incomplete")
        
        let result = item.icon.image
        
        XCTAssertEqual(status, result)
    }

}
