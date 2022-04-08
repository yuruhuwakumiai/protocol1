//
//  ClacViewController.swift
//  Delegate
//
//  Created by RikutoSato on 2022/04/08.
//

import UIKit

class CalcViewController: UIViewController {
    private var selectNum = 0
    var delegate: PassCalucNumberProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numberButtonAction(_ sender: UIButton) {
        selectNum = sender.tag
    }
    
    @IBAction func doneButtonAction(_ sender: Any) {
        delegate?.dataDidSelect(data: selectNum)
        dismiss(animated: true)
    }
}
