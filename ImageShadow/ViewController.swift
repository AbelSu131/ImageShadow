//
//  ViewController.swift
//  ImageShadow
//
//  Created by abel on 15/10/14.
//  Copyright © 2015年 abel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initView()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func initView(){
        let image1 = UIImageView(frame: CGRectMake(20,50,self.view.frame.width-50,180))
        image1.image = UIImage(named: "sea.jpg")
        self.view.addSubview(image1)
        //为图片添加阴影
        image1.layer.shadowOpacity = 0.8//设置阴影透明度
        image1.layer.shadowColor = UIColor.blackColor().CGColor
        image1.layer.shadowOffset = CGSize(width: 2, height: 2)//设置阴影偏移量
        
        
        
        let image2 = UIImageView(image: UIImage(named: "wenzi"))
        image2.frame = CGRectMake(50, 230, self.view.frame.width-100, 200)
        self.view.addSubview(image2)
        //为图片添加阴影（透明背景）
        image2.layer.shadowOpacity = 0.8
        image2.layer.shadowColor = UIColor.blackColor().CGColor
        image2.layer.shadowOffset = CGSize(width: 6, height: 6)
        image2.layer.shadowRadius = 1
        
        
        
        let button = UIButton(frame: CGRectMake(79, 400, 200, 45))
        button.backgroundColor = UIColor(red:0.02, green:0.48, blue:1, alpha:1)
        //设置圆角
        button.layer.borderColor = UIColor.whiteColor().CGColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 10
        button.setTitle("I am Abel", forState: UIControlState.Normal)//设置按钮标题
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)//设置按钮标题颜色
        self.view.addSubview(button)
        //为按钮添加阴影
        button.layer.shadowOpacity = 0.8
        button.layer.shadowColor = UIColor.blackColor().CGColor
        button.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        
        
        
        
    }


}

