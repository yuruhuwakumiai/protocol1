//
//  ViewController.swift
//  Delegate
//
//  Created by RikutoSato on 2022/04/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func toCalcViewButtonAction(_ sender: Any) {
        let calcVC = self.storyboard?.instantiateViewController(withIdentifier: "Calc") as! CalcViewController
        calcVC.delegate = self
        present(calcVC, animated: true)
    }
}

extension ViewController: PassCalucNumberProtocol {
    func dataDidSelect(data: Int) {
        displayLabel.text = "選択した番号は\(data)"
    }
}
