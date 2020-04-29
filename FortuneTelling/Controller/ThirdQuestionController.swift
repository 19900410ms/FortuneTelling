import UIKit

class ThirdQuestionController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    var thirdCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.layer.cornerRadius = 15.0
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            
            thirdCount = thirdCount + 10
            
        } else if (sender as AnyObject).tag == 2 {
            
            thirdCount = thirdCount + 15
            
        } else if (sender as AnyObject).tag == 3 {
            
            thirdCount = thirdCount + 5
            
        } else if (sender as AnyObject).tag == 4 {
            
            thirdCount = thirdCount + 20
        }
        
        print(thirdCount)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "fourth" {
            
            let nextVC = segue.destination as! FourthQuestionController
            
            nextVC.fourthCount = thirdCount
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
