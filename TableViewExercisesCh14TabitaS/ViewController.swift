//
//  ViewController.swift
//  TableViewExercisesCh14TabitaS
//
//  Created by Tabita Sadiq on 2/27/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //UIViewController--This is the backbone of the screens in any app. Every screen in the app, where you interact with, or display content to the user is managed by this.
    //UITableViewDelegate--this is used when you have a table view on your screen and you want to customize how it behaves when the user interacts with it.
    //UITableViewDataSource--this is very important when table views are included on the screen. This is used to specify what data is displayed in the table.
    
    let petArray = ["cat", "dog", "parakeet", "parrot", "canary", "hamster", "horses", "cow", "fish", "monkey", "turtle", "leopard", "cheetah", "lion", "puppy", "kitten", "finch", "gerbil", "sean", "pig", "lama"]
    
    let cellID = "cellID"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        
        cell?.textLabel?.text = petArray[indexPath.row]
        return cell!
        
    }
    
    
    @IBOutlet weak var petTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petTable.dataSource = self
        petTable.delegate = self
    }


}

