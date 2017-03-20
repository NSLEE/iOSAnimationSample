//
//  RepeatViewController.swift
//  iOSAnimationSample
//
//  Created by KOLee on 2017/3/19.
//  Copyright © 2017年 menglong. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController {
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var blueView: UIView!
    
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
            self.greenView.center.x = self.view.bounds.width - self.greenView.center.x
        })
        
        UIView.animate(withDuration: 1, delay: 0, options: UIViewAnimationOptions.repeat, animations: {
            self.redView.center.x = self.view.bounds.width - self.redView.center.x
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, options:.autoreverse, animations: {
            self.blueView.center.x = self.view.bounds.width - self.blueView.center.x
        }, completion: nil)
        
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
