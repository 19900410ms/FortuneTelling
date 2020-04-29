import UIKit

class FifthQuestionController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var fifthCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.layer.cornerRadius = 15.0
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            
            fifthCount = fifthCount + 20
            
        } else if (sender as AnyObject).tag == 2 {
            
            fifthCount = fifthCount + 15
            
        } else if (sender as AnyObject).tag == 3 {
            
            fifthCount = fifthCount + 10
            
        } else if (sender as AnyObject).tag == 4 {
            
            fifthCount = fifthCount + 5
        }
        
        print(fifthCount)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! ResultController
        
        nextVC.resultCount = fifthCount
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
