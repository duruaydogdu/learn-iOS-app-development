//
//  EntryViewController.swift
//  TodoList-App
//
//  Created by Duru Aydoğdu on 28.12.2024.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!
    
    var update: (() -> Void)? // yeni bir görev kaydedildikten sonra bu closure çağrılır ve görev listesinin ana ekranda (viewcontroller) güncellenmesini sağlar.

    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask)) // kullanıcı save butonuna bastığında saveTask metodu çağrılır.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        
        return true  // kullanıcı klavyede enter tuşuna bastığında saveTask metodu çağrılır.
    }
    
    @objc func saveTask() {
        
        guard let text = field.text, !text.isEmpty else { // field'dan metin alma işlemi, eğer field boşsa veya nil ise işlem yapılmıyor.
            return
        }
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else { // kayıtlı sayıyı kontrol etme işlemi, userdefaultstan count anahtarına bağlı değeri alır.
            return
        }
        
        let newCount = count + 1
        
        UserDefaults().set(newCount, forKey: "count") // userdefaultsa kaydetme işlemi
        UserDefaults().set(text, forKey: "task_ \(newCount)")
        
        update?()
        
        navigationController?.popViewController(animated: true) // kullanıcıyı entryviewcontroller ekranından bir önceki ekrana (viewcontroller) döndürür.
    }

}
