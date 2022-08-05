//
//  ViewController.swift
//  about me - storyboard practice i
//
//  Created by scholar on 7/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcome: UILabel!
    
    @IBOutlet weak var profilePicBackground: UIImageView!
    
    @IBOutlet weak var profilePic: UIImageView!
    
    @IBOutlet weak var nameBackground: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var statsBackground: UIImageView!
    
    @IBOutlet weak var stats: UILabel!
    
    @IBOutlet weak var powerupsBackground: UIImageView!

    
    
    override func viewDidLoad() {
        profilePic.isHidden = true
        profilePicBackground.isHidden = true
        name.isHidden = true
        nameBackground.isHidden = true
        stats.isHidden = true
        statsBackground.isHidden = true
        powerupsBackground.isHidden = true
        
  
        self.profilePic.image = UIImage(imageLiteralResourceName: "babymeng")
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func revealCharacter(_ sender: UIButton) {
        profilePic.isHidden = false
        profilePicBackground.isHidden = false
        name.isHidden = false
        nameBackground.isHidden = false
        welcome.isHidden = true
        sender.alpha = 0.0
        // ^^ changes button's opacity to 0!! aka makes it disappear
    }
    
    
    @IBAction func meetCharacter(_ sender: UIButton) {
        profilePic.isHidden = false
        profilePicBackground.isHidden = false
        name.isHidden = false
        nameBackground.isHidden = false
        stats.isHidden = false
        statsBackground.isHidden = false
        powerupsBackground.isHidden = false
        welcome.isHidden = true
        sender.alpha = 0.0
    }
    
    var images:[String] = []
    var timer = Timer()
    var photoCount:Int = 0
    
    
override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
    images = ["babymeng","bunnies","hamburg"]
    profilePic.image = UIImage.init(named: "babymeng")
    timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onTransition), userInfo: nil, repeats: true)

    
}
    
    @objc func onTransition() {
        if (photoCount < images.count - 1){
            photoCount = photoCount  + 1;
        }else{
            photoCount = 0;
        }

        UIView.transition(with: self.profilePic, duration: 3.0, options: .transitionCrossDissolve, animations: {
            self.profilePic.image = UIImage.init(named: self.images[self.photoCount])
        }, completion: nil)
    }
    
    
        
   /* UIView.transition(with: self.profilePic,
                       duration: 3.0,
                       options: .transitionCrossDissolve,
                      animations: {self.profilePic.image = UIImage(imageLiteralResourceName: "bunnies")}, completion: nil)
    
    UIView.transition(with: self.profilePic,
                       duration: 3.0,
                       options: .transitionCrossDissolve,
                      animations: {self.profilePic.image = UIImage(imageLiteralResourceName: "hamburg")}, completion: nil)
    
    UIView.transition(with: <#T##UIView#>, duration: <#T##TimeInterval#>, animations: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
    }
*/
    
    
}


    
    
    
    
    

    

