//
//  PositionViewController.swift
//  iOSAnimationSample
//
//  Created by KOLee on 2017/3/18.
//  Copyright © 2017年 menglong. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var greenSquare: UIView!
    
    @IBOutlet weak var redSquare: UIView!
    
    @IBOutlet weak var blueSquare: UIView!
    
    var firstName = "lee"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = "i fuck you"

        
        print("lalala ",name,firstName)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        UIView.animate(withDuration: 1, animations: {
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
            
            self.clickChangeColor(myView: self.greenSquare)
        }) { (Bool) in
            self.greenSquare.backgroundColor = UIColor.black
        }
        
        
        UIView.animate(withDuration: 1, delay: 0.5, options:UIViewAnimationOptions.showHideTransitionViews, animations: {
            self.redSquare.center.y = self.view.bounds.height - self.redSquare.center.y;
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay:1, options:UIViewAnimationOptions.showHideTransitionViews, animations: {
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            self.blueSquare.center.y = self.view.bounds.height - self.blueSquare.center.y
        }, completion: nil)
    
        
    }
    
    
    
    func clickChangeColor(myView: UIView) -> Void {
        self.greenSquare.backgroundColor = UIColor.red;
        
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
