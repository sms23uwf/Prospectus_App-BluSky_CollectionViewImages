//
//  loViewController.swift
//  BlueSky_CollectionViewImages
//
//  Created by Steve Satterfield on 11/18/18.
//  Copyright © 2018 uwf. All rights reserved.
//

import UIKit

var selectedLOString = ""

class loViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var tblList: UITableView!
    @IBOutlet weak var btnSubmit: UIButton!
    
    var listItemArray:[loItem] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listItemArray = loData.shared.loItemArray
        
        tblList.register(UINib.init(nibName: "CheckMarkCell", bundle: nil), forCellReuseIdentifier: "CheckListIdentifier")
        
        tblList.dataSource=self
        tblList.delegate = self
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItemArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        /*if let cell = tableView.cellForRow(at: indexPath as IndexPath) {
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
        }*/
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListIdentifier") as! CheckMarkCell
        cell.lblTitle.text = listItemArray[indexPath.item].title
        cell.selectionStyle = .none
        cell.btnCheckMark.addTarget(self, action: #selector(checkMarkButtonClicked(sender:)), for: .touchUpInside)
        
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @objc func submitButtonClicked (sender:UIButton) {
        print("submitButtonClicked")
        
        for item in loData.shared.loItemArray {
            print(item.selected)
            if item.selected {
                loSelected.shared.loISelectedArray.append(item)
                selectedLOString += item.title + "\n\n"
                print(item.title)
            }
        }
        
        performSegue(withIdentifier: "showClassCreationForm", sender: nil)
    }
    
    @objc func checkMarkButtonClicked ( sender:UIButton) {
        var superview = sender.superview
        while let view = superview, !(view is UITableViewCell) {
            superview = view.superview
        }
        guard let cell = superview as? UITableViewCell else {
            print("button not in table cell")
            return
        }
        guard let indexPath = tblList.indexPath(for: cell) else {
            print("failed to get index path for cell containing button")
            return
        }
        
        
        if sender.isSelected {
            sender.isSelected = false
            listItemArray[indexPath.item].selected = false
        } else {
            sender.isSelected = true
            listItemArray[indexPath.item].selected = true
        }
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }
 
    //func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
       // let footerView = UIView(frame:)
   // }

 
}
