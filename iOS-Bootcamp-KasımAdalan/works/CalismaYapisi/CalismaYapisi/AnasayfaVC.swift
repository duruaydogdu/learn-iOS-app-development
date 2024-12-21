//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Duru Aydoğdu on 11.12.2024.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    // Leading - Left - Start
    // Trailing - Right - End
    
    override func viewDidLoad() { // uygulama açıldığında çalışır (1 kere çalışır)
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldin"
        print("viewDidLoad çalıştı")
    }
    
    override func viewWillAppear(_ animated: Bool) { // sayfa her göründüğünde çalışır
        print("viewWillAppear çalıştı")
        // sayfaya geri dönüldüğünde çalışır
    }
    
    override func viewWillDisappear(_ animated: Bool) { // sayfa her görünmez olduğunda çalışır
        print("viewWillDisappear çalıştı")
    }

    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Duru", yas: 22, boy: 1.70, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: "merhaba") // sender'daki tutulan şey göndereceğimiz veri??
    }
    
    // bu fonksiyon bu sayfadaki tüm geçişleri dinler
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis çalıştı")
                
                if let veri = sender as? Kisiler {
                    let gidilecekVC = segue.destination as? OyunEkraniVC // gidilecek yere erişimi sağlıyoruz
                    gidilecekVC?.kisi = veri
                }
            }
        }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("Add seçildi")
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save seçildi")
    }
}


