//
//  ViewController.swift
//  bisaijifen2
//
//  Created by 20151104697 on 17/4/24.
//  Copyright © 2017年 20151104697. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var defen1: UITextField!
    @IBOutlet weak var defen2: UITextField!
    @IBOutlet weak var zongfen1: UITextField!
    @IBOutlet weak var zongfen2: UITextField!
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
        if(Bdefen<30)
        {
            Bdefen = Bdefen+15;
        }
        else if(Bdefen<40)
        {
            Bdefen = Bdefen+10;
        }
        else
        {
            Bdefen = 0;
        }
        defen2.text="\(Bdefen)"
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
        end="0"
        defen1.text=end;
        defen2.text=end;
        zongfen1.text=end;
        zongfen2.text=end;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

