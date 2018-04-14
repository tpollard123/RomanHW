//
//  ThirdViewController.swift
//  hw9-multiview
//
//  Created by Tyla Pollard on 3/31/18.
//  Copyright © 2018 spelman. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView! //reference for the table view
    let numbers = ["1","2","3","4","5","6","7","8","9","10",
                   "11","12","13","14","15","16","17","18","19","20",
                    "21","22","23","24","25","26","27","28","29","30",
                    "31","32","33","34","35","36","37","38","39","40",
                    "41","42","43","44","45","46","47","48","49","50",
                    "51","52","53","54","55","56","57","58","59","60",
                    "61","62","63","64","65","66","67","68","69","70",
                    "71","72","73","74","75","76","77","78","79","80",
                    "81","82","83","84","85","86","87","88","89","90",
                    "91","92","93","94","95","96","97","98","99","100"
    ]
    let romanNum = ["I","II","III","IV","V","VI","VII","VIII","IX","X",
                    "XI","XII","XIII","XIV","XV","XVI","XVII","XVIII","XIX","XX",
                    "XXI","XXII","XXIII","XXIV","XXV","XXVI","XXVII","XXVIII","XXIX","XXX",
                    "XXXI","XXXII","XXXIII","XXXIV","XXXV","XXXVI","XXXVII","XXXVIII","XXXIX",
                    "XL","XLI","XLII","XLIII","XLIV","XLV","XLVI","XLVII","XLVIII","XLIX","L",
                    "LI","LII","LIII","LIV","LV","LVI","LVII","LVIII","LIX","LX",
                    "LXI","LXII","LXIII","LXIV","LXV","LXVI","LXVII","LXVIII","LXIX","LXX",
                    "LXXI","LXXII","LXXIV","LXXV","LXXVI","LXXVII","LXXVIII","LXXIX","LXXX",
                    "LXXXI","LXXXII","LXXXIII","LXXXIV","LXXXV","LXXXVI","LXXXVII","LXXXVIII","LXXXIX","XC",
                        "XCI","XCII","XCIII","XCIV","XCV","XCVI","XCVII","XCVIII","XCIXX","XCIXI","C"
        
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count //return the amount of rows in the table
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = numbers[indexPath.row]
        cell?.detailTextLabel?.text = romanNum[indexPath.row]
        return cell!
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
