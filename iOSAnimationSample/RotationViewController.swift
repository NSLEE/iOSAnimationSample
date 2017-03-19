//
//  RotationViewController.swift
//  iOSAnimationSample
//
//  Created by KOLee on 2017/3/19.
//  Copyright © 2017年 menglong. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var imagVC: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self .mutable()
        
    }
    
    
    
    func mutable() -> Void {
        
        
      UIView.animate(withDuration: 1, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
        self.imagVC.transform = self.imagVC.transform.rotated(by: CGFloat(M_PI))
      }) { (finished) in
        self.mutable()
        }
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
