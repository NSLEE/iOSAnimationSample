//
//  OpacityViewController.swift
//  iOSAnimationSample
//
//  Created by KOLee on 2017/3/19.
//  Copyright © 2017年 menglong. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var greenSquare: UIView!
    
    @IBOutlet weak var redSquare: UIView!
    
    @IBOutlet weak var lableText: UILabel!
    
    
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
        
        UIView.animate(withDuration: 1, animations: {
            self.greenSquare.alpha = 0.1
            
            self.redSquare.transform = CGAffineTransform.init(scaleX: 2.0, y: 2.0)
            self.lableText.textColor = UIColor.white
        })
        
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
