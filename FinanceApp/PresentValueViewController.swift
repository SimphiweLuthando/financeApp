//
//  PresentValueViewController.swift
//  FinanceApp
//
//  Created by Simphiwe Mbokazi on 2023/04/20.
//

import UIKit

class PresentValueViewController: UIViewController {

    @IBOutlet var iRate: UITextField!
    
    @IBOutlet var period: UITextField!
    
    @IBOutlet var fv: UITextField!
    @IBOutlet var answer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func calculatePV(_ sender: Any) {
        
        guard let intrest = Double(iRate.text!) else {return}
        guard let period = Int(period.text ?? "0") else {return}
        
        guard let fv = Double(fv.text ?? "0") else {return}
        
        let calculation = (1 / pow((1 + (intrest/100)), Double(period)))  * fv
        
        answer.text = String(calculation)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
