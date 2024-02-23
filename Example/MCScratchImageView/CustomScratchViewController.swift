//
//  CustomScratchViewController.swift
//  TrScratchImageView
//
//  Created by bknds on 2017/12/28.
//  Copyright © 2017年 bknds. All rights reserved.
//

import UIKit

class CustomScratchViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scratchImageView: TrScratchImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        setupView()
    }
    
    func setupView() {
        imageView.image = UIImage(named: "bonus2.png")
        
        scratchImageView!.setMaskImage(UIImage(named: "bonus2-scratch.png")!, spotRadius: 100)
        scratchImageView!.delegate = self
    }
    
    @IBAction func scratchedHandler(_ sender: UIButton) {
        scratchImageView.scratchAll()
        print("Scratched")
        sender.isEnabled = false
    }
    
}

extension CustomScratchViewController: TrScratchImageViewDelegate {
    
    func TrScratchImageView(_ TrScratchImageView: TrScratchImageView, didChangeProgress progress: CGFloat) {
        print("Progress did changed: " + String(format: "%.2f", progress))
    }
    
}
