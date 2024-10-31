import UIKit

class Araba {
    var renk: String?
    var hiz: Int?
    var calisiyorMu: Bool?
    
    // tek tek değer atama yaptığımız senaryoda bu şekilde bir init kullanımı yapmamız gerekiyor.
    init(){
        print("Boş init metodu çalıştı.")
    }
    
    // bu yapı sayesinde tek tek değer atama ile uğraşılmaz.
    init(renk:String,hiz:Int,calisiyorMu:Bool){
        self.renk = renk // self bulunduğu sınıfı temsil ediyor.
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu
        print("Dolu init metodu çalıştı.")
    }
    
    func calistir(){
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz!+=kacKm // hiz = hiz + kacKm
    }
    
    func yavasla(){
        hiz!-=kacKm
    }
    
    func bilgiAl(){
        print("---------------------")
        print("Renk        :\(renk!)")
        print("Hız         :\(hiz!)")
        print("Çalışıyor mu:\(calisiyorMu!)")
    
    // nesne oluşturma
    var bmw = Araba()
    
    // değer atama
    bmw.renk = "Kırmızı"
    bmw.hiz = 100
    bmw.calisiyorMu = true
        
    // değer okuma
    bmw.bilgiAl()
    bmw.calistir()
    bmw.hizlan(kacKm: 50)
}
