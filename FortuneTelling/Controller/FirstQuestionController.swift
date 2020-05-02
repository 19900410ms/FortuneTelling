import UIKit

class FirstQuestionController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    var firstCount:Int = 0
    
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
            
            firstCount = 15
            
        } else if (sender as AnyObject).tag == 2 {
            
            firstCount = 10
            
        } else if (sender as AnyObject).tag == 3 {
            
            firstCount = 20
            
        } else if (sender as AnyObject).tag == 4 {
            
            firstCount = 5
        }
        
        print(firstCount)
        
        self.performSegue(withIdentifier: "second", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "second" {
            
            let nextVC = segue.destination as! SecondQuestionController
            
            nextVC.secondCount = firstCount
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
