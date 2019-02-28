//
//  ViewController.swift
//  HackwichFour
//
//  Created by Ryan Muranaka on 2/28/19.
//  Copyright © 2019 Ryan Muranaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //    Declare an array and name it "myFriends"
    var myFriends  = ["Darren","Shea","Ross", "Jesse"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Create a constant called cell [local variable, only accessible in the function], each cell created it puts the name in the cell and continues the process
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        //takes each item in the array
        let text = myFriends[indexPath.row]
        //sets the cell to the text
        //textLabel [property].text[property] = text
        cell.textLabel?.text=text
        //returns the cell
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

