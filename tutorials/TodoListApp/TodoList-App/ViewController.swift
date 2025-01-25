//
//  ViewController.swift
//  TodoList-App
//
//  Created by Duru Aydoğdu on 28.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var tasks = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tasks"
        
        tableView.delegate = self
        tableView.dataSource = self // ViewController sınıfı UITableViewDelegate ve UITableViewDataSource protokollerine uygun hale getirilir, bu tablonun veri ve davranışlarının kontrol edilmesini sağlar.
        
        if !UserDefaults().bool(forKey: "setup") {   // UserDefaults içinde bir setup anahtarı kontrol edilir.
            UserDefaults().set(true, forKey: "setup") // anahtar yoksa bu işlemler gerçekleşir.
            UserDefaults().set(0, forKey: "count")
        }
        
        // get all current saved tasks
    }
    
    func updateTasks() {
        
        tasks.removeAll()  // daha önceki görevler temizlenir.
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else { // görev sayısını UserDefaults'tan alır, sayı yoksa return ile çıkılır.
            return
        }
        
        for x in 0..<count { // count kadar döngü oluşturulur ve her bir görev için,,
            if let task = UserDefaults().value(forKey: "task_ \(x+1)") as? String { // task_x anahtarından görevi alır
                tasks.append(task) // görev varsa tasks dizisine eklenir
            }
        }
        
        tableView.reloadData() // tabloyu yeniden yükler ve yeni görevleri gösterir
    }

    @IBAction func didTapAdd() {
        let vc = storyboard?.instantiateViewController(identifier: "entry") as! EntryViewController // storyboarddan entry kimliğine sahip entryviewcontrollerı yükler.
        vc.title = "New Task"
        vc.update = {
            DispatchQueue.main.async {
                self.updateTasks()
            }
        }
        navigationController?.pushViewController(vc, animated: true) // kullanıcıyı entryviewcontroller'a yönlendirme.
    }
    
}

extension ViewController: UITableViewDelegate{
    // hücre seçimine bir aksiyon eklenecekse genellikle burada tanımlanır.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) // hücre seçimi yapıldıktan sonra seçili durumunu kaldırır, animated ile de seçim kaldırma işlemi animasyonlu gerçekleştirilmiş olur.
        
    
        let vc = storyboard?.instantiateViewController(identifier: "task") as! TaskViewController // task kimliğine sahip taskviewcontrollerı yükler
        vc.title = "New Task"
        vc.task = tasks[indexPath.row] // seçilen görevi taskviewcontrollera aktarma
        navigationController?.pushViewController(vc, animated: true) // kullanıcıyı taskviewwcontrollera yönlendirme
        
    }
}


// tablo görünümünde verileri nasıl göstereceğimizi ve tabloyu nasıl yapılandıracağımızı belirten bir protokol.
extension ViewController: UITableViewDataSource{
    // tablo görünümünde kaç satır gösterilebileceği.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // görev sayısını döndürür, tablo görünümünün kaç satır göstereceğini belirler
        return tasks.count
    }
    
    //tablo görünümünde her satırda neyin gösterileceği
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) // belleği verimli kullanmak için hücreleri yeniden kullanım
        
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
    }
    
}

