//
//  ViewController.swift
//  buttonss
//
//  Created by Purushotham on 20/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onClickDecrementButton: UIButton!
    @IBOutlet weak var onClickIncrementbutton: UIButton!
    @IBOutlet weak var myScoreLabel: UILabel!
    var  Score: Int = 0
    
    @IBAction func onClickButton1IncrementAction(_ sender: Any) {
        myScoreLabel.text = String(Score)
        Score+=1
        myScoreLabel.text = String(Score)
        
    }
    
    
    @IBAction func onClickButton2DecrementAction(_ sender: Any) {
        myScoreLabel.text = String(Score)
        Score-=1
        myScoreLabel.text = String(Score)
    }
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
    }

}

