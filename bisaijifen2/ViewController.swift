//
//  ViewController.swift
//  bisaijifen2
//
//  Created by 20151104697 on 17/4/24.
//  Copyright © 2017年 20151104697. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var defen1: UITextField!
    @IBOutlet weak var defen2: UITextField!
    @IBOutlet weak var zongfen1: UITextField!
    @IBOutlet weak var zongfen2: UITextField!
    var flagA:Int!
    var flagB:Int!
    var  Ascore:String!=""
    var  Bscore:String!=""
    var  Atotal:String!=""
    var  Btotal:String!=""
    var  end:String!=""
    var  Adefen:Int=0
    var  Bdefen:Int=0
    var  Azongfen:Int=0
    var  Bzongfen:Int=0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func Ascore(_ sender: UIButton) {
        if(Adefen<30)
        {
            Adefen = Adefen+15;
        }
        else if(Adefen<40)
        {
            Adefen = Adefen+10;
        }
        else
        {
            Adefen = 0;
        }
        defen1.text="\(Adefen)"
    }
    @IBAction func Bscore(_ sender: UIButton) {
        
    }
    @IBAction func Atotal(_ sender: UIButton) {
        if(Azongfen<7)
        {
            Azongfen = Azongfen+1;
        }
        else
        {
            Azongfen = 0;
        }
        zongfen1.text="\(Azongfen)"
    }
    @IBAction func Btotal(_ sender: UIButton) {
        if(Bzongfen<7)
        {
            Bzongfen = Bzongfen+1;
        }
        else
        {
            Bzongfen = 0;
        }
        zongfen2.text="\(Bzongfen)"
    }
    @IBAction func end(_ sender: UIButton) {
        if(Azongfen>Bzongfen)
        {
            zongfen1.text="win";
            zongfen2.text="lost";
        }
        else
        {
            zongfen1.text="lost";
            zongfen2.text="win";
        }
    }
    @IBAction func Aphoto(_ sender: Any) {
    
            flagA=1
            flagB=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //初始化图片控制器
                let picker = UIImagePickerController()
                //设置代理
                picker.delegate = self
                //指定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                //弹出控制器，显示界面
                self.present(picker, animated: true, completion: {
                    () -> Void in
                })
            }else{
                print("读取相册错误")
            }
        
    }
    @IBAction func Bphoto(_ sender: UIButton) {
        
            flagA=0
            flagB=1
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //初始化图片控制器
                let picker = UIImagePickerController()
                //设置代理
                picker.delegate = self
                //指定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                //弹出控制器，显示界面
                self.present(picker, animated: true, completion: {
                    () -> Void in
                })
            }else{
                print("读取相册错误")
            }
        
    }
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        //查看info对象
        print(info)
        //显示的图片
        let image:UIImage!
        //获取选择的原图
        image = info[UIImagePickerControllerOriginalImage] as! UIImage
        if(flagA==1){image1.image = image}
        else if(flagB==1){image2.image = image}
        //图片控制器退出
        picker.dismiss(animated: true, completion: {
            () -> Void in
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

