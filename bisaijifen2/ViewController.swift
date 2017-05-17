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
    var  end:String!=""
    var  star:String!=""
    var  Agoal:Int=0
    var  Bgoal:Int=0
    var  Atotal:Int=0
    var  Btotal:Int=0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func Ascore(_ sender: UIButton) {
        if(Agoal<30)
        {
            Agoal = Agoal+15;
        }
        else if(Agoal<40)
        {
            Agoal = Agoal+10;
        }
        else
        {
            Agoal = 0;
        }
        defen1.text="\(Agoal)"
        if(Agoal==40 && Bgoal<40)
        {
            if(Atotal==0)
            {
                Atotal=1;
                zongfen1.text="\(Atotal)"
                Atotal=0;
                zongfen1.text="0"
                zongfen2.text="0"
            }
        }
    }
    @IBAction func Bscore(_ sender: UIButton) {
        if(Bgoal<30)
        {
            Bgoal = Bgoal+15;
        }
        else if(Bgoal<40)
        {
            Bgoal = Bgoal+10;
        }
        else
        {
            Bgoal = 0;
        }
        defen2.text="\(Bgoal)"
        if(Bgoal==40 && Btotal<7)
        {
            Btotal = Btotal+1;
        }
        zongfen2.text="\(Btotal)"

    }
    @IBAction func end(_ sender: UIButton) {
        if(Atotal>Btotal)
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
    @IBAction func star(_ sender: UIButton) {
        Agoal=0;
        Bgoal=0;
        Atotal=0;
        Btotal=0;
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

