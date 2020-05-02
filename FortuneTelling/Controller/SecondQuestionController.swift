import UIKit

class SecondQuestionController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    var secondCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // questionLabel.layer.cornerRadius = 15.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            
            secondCount = secondCount + 5
            
        } else if (sender as AnyObject).tag == 2 {
            
            secondCount = secondCount + 10
            
        } else if (sender as AnyObject).tag == 3 {
            
            secondCount = secondCount + 15
            
        } else if (sender as AnyObject).tag == 4 {
            
            secondCount = secondCount + 20
        }
        
        print(secondCount)
        
        self.performSegue(withIdentifier: "third", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       if segue.identifier == "third" {
            
            let nextVC = segue.destination as! ThirdQuestionController
            
            nextVC.thirdCount = secondCount
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
