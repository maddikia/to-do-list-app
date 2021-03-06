//
//  CompleteToDoViewController.swift
//  ToDoListApp
//
//  Created by Madison Ramos on 6/14/21.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    var selectedToDo : ToDoCD?
    @IBOutlet weak var itemName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemName.text = selectedToDo?.name
    }
    

    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theToDo = selectedToDo {
                context.delete(theToDo)
                navigationController?.popViewController(animated: true)
            }
        }
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
