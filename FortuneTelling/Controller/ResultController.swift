import UIKit

class ResultController: UIViewController {

    var resultCount = Int()
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDetailField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.layer.cornerRadius = 15.0
        resultDetailField.layer.cornerRadius = 5.0
        
        resultPublish()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }

    func resultPublish() {
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
