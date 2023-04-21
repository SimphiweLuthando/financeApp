//
//  FutureValueViewController.swift
//  FinanceApp
//
//  Created by Simphiwe Mbokazi on 2023/04/20.
//

import UIKit

class FutureValueViewController: UIViewController {

    @IBOutlet var iRate: UITextField!
    
    @IBOutlet var period: UITextField!
    
    
    @IBOutlet var presValue: UITextField!
    
    @IBOutlet var answer: UILabel!
    
    let color = UIColor(red: 60/255, green: 140/255, blue: 48/255, alpha: 1.0).cgColor
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }
    
    

    
    
    @IBAction func calculate(_ sender: Any) {
        
        guard let intrest = Double(iRate.text!) else {return}
        guard let period = Int(period.text ?? "0") else {return}
        
        guard let presValue = Double(presValue.text ?? "0") else {return}
        
        let calculation = pow((1 + (intrest/100)), Double(period)) * presValue
        
        
        
        answer.text = String(floor(calculation * 100) / 100.0)
        //Changes label color
        answer.textColor = .systemGreen
        
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
