//
//  HomeItemsVC.swift
//  Kmong
//
//  Created by Eunseok on 2017. 12. 19..
//  Copyright © 2017년 Eunseok. All rights reserved.
//

import UIKit

class HomeItemsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var itemTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTable.dataSource = self
        itemTable.delegate = self
        itemTable.estimatedSectionHeaderHeight = 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getItems().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "items") as? ItemCell{
            let item = DataService.instance.getItems()[indexPath.row]
            cell.updateView(item: item)
            return cell
        }else{
            return ItemCell()
        }
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 25))
//        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 50, height: 50))
//        label.text = "TEST TEXT"
//        print("YOLO")
//        
//        view.addSubview(view)
//        
//        return view
//    }
//    
//    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 20
//    }
//}

}
