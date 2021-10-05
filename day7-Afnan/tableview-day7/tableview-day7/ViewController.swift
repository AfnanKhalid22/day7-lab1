//
//  ViewController.swift
//  tableview-day7
//
//  Created by Fno Khalid on 27/02/1443 AH.
//

import UIKit


let emojis = [ "👾" , "👻" , "🤓" , "🤖" ]


class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let afnancell = tableview.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! viewcell
        
        afnancell.label1.text = emojis[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            afnancell.label1.backgroundColor = UIColor.systemPink
        } else {
            afnancell.label1.backgroundColor = UIColor.systemYellow
        }
        
        return afnancell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoje = emojis[indexPath.row]
        
        let alertcontroller = UIAlertController(title: "warning!!👾 \(emoje)"
                                                , message: "we haved hacked you 😬✌🏻 !!! "
                                                , preferredStyle: UIAlertController.Style.alert
        )
        
        alertcontroller.addAction(
            UIAlertAction(title: "pay500", style: UIAlertAction.Style.default, handler: { Action in print("hahahah😂")
            })
            
        )
        
        self.present(alertcontroller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
    }
}


class viewcell : UITableViewCell {
    
    @IBOutlet weak var label1: UILabel!
}
