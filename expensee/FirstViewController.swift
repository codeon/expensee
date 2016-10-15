//
//  FirstViewController.swift
//  expensee
//
//  Created by Kapil Garg on 10/15/16.
//  Copyright © 2016 Kapil Garg. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate {
// MARK: Properties
    
    @IBOutlet weak var expenseDesc: UITextField!
    @IBOutlet weak var expenseAmt: UITextField!
    @IBOutlet weak var expensesTable: UITableView!
    weak var expenses = [];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        expenseDesc.delegate = self;
        expenseAmt.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == expenseDesc{
            expenseDesc.text = textField.text;
        }else if textField == expenseAmt{
            expenseAmt.text = textField.text;
        }
    }
    
// MARK: Actions

    @IBAction func expenseSubmit(_ sender: UIButton) {
//        var rowCount: Int = (expenses?.count)!;
//        expensesTable.insertRows(at: rowCount, with: nil);
    }
}

