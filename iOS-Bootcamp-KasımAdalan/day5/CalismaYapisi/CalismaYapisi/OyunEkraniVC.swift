//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Duru Aydoğdu on 11.12.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi:Kisiler? // bu ekrana gelecek olan mesajı temsilen
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            print("Kişi Adı : \(k.ad!)") // bu ekrana bir mesaj geldiği zaman m değişkenine bu mesajı aktarmış olacağız
            print("Kişi Yaş : \(k.yas!)")
            print("Kişi Boy : \(k.boy!)")
            print("Kişi Bekar : \(k.bekar!)")
        }
    }
    
    @IBAction func geriButton(_ sender: Any) {
       // navigationController?.popViewController(animated: true) // bir önceki sayfaya dönüş
        navigationController?.popToRootViewController(animated: true) // anasayfaya dönüş
    }
    
    @IBAction func bitirButton(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
}
