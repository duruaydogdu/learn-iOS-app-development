//
//  TaskViewController.swift
//  TodoList-App
//
//  Created by Duru Aydoğdu on 28.12.2024.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var task: String? // ana ekran tarafından seçilen görev bu değişkene atanır, nil olabileceğinden optional tanımladık

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = task // task değişkeninde tutulan görevin adı etikete (label) atanır.
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
        
    }
    
    @objc func deleteTask() {
        
        // let newCount = count - 1
        
        // UserDefaults().mutableSetValue(newCount, forKey: "count")
        // UserDefaults().mutableSetValue(nil, forKey: "tasks_ \(currentPosition)")
        
    }
    


}
