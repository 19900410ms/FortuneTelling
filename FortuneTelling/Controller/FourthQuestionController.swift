import UIKit

class FourthQuestionController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    var fourthCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.layer.cornerRadius = 15.0
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            
            fourthCount = fourthCount + 20
            
        } else if (sender as AnyObject).tag == 2 {
            
            fourthCount = fourthCount + 10
            
        } else if (sender as AnyObject).tag == 3 {
            
            fourthCount = fourthCount + 5
            
        } else if (sender as AnyObject).tag == 4 {
            
            fourthCount = fourthCount + 15
        }
        
        print(fourthCount)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "fifth" {
            
            let nextVC = segue.destination as! FifthQuestionController
            
            nextVC.fifthCount = fourthCount
        }
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
