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
        
        // 画面サイズを取得
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        
        // 点数によって背景・結果・テキストを条件分岐
        if resultCount == 100 {
            
            resultLabel.text = "いぬ"
            resultDetailField.text = "あなたの前世は忠誠心が強くみんなから愛される存在のいぬ。食事は自分で用意する必要はなく昼寝をしていても決まった時間に食事ができました！！"
            
            imageView.image = UIImage(named: "result-1")
            
        } else if resultCount >= 80 {
            
            resultLabel.text = "ミツバチ"
            resultDetailField.text = "あなたの前世は働き者のミツバチ。群れのリーダーのために毎日奴隷のように働かさせられながらも懸命に生きていました！！"
            
            imageView.image = UIImage(named: "result-2")
            
        } else if resultCount >= 60 {
            
            resultLabel.text = "サル"
            resultDetailField.text = "あなたの前世はサル。これと言って言うことのない普通の生活を送っていました！！"
            
            imageView.image = UIImage(named: "result-3")
            
        } else if resultCount >= 40 {
            
            resultLabel.text = "サメ"
            resultDetailField.text = "あなたの前世は他の生物の危険を脅かすサメ。目に映るものを片っ端から噛みちり、周囲の生物から恐れられていました！！"
            
            imageView.image = UIImage(named: "result-4")
            
        } else if resultCount < 40 {
            
            resultLabel.text = "ゴキブリ"
            resultDetailField.text = "あなたの前世は人類にとって最強の敵であるゴキブリ。生ゴミを食いあさり、時折民家に進入しては叩かれ、卵を大量に産むことで脅威を確立してきました！！"
            
            imageView.image = UIImage(named: "result-5")
            
        }
        
        imageView.contentMode = .scaleAspectFill
        
        self.view.addSubview(imageView)
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
