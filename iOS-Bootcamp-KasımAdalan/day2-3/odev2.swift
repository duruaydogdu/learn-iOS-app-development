import UIKit

class Odev2 {
    
    // Parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri döndüren bir metod yaz.
    func soru1(km: Double) -> Double {
        let mile = km * 0.621
        return mile
    }
    
    // Kenarları parametre olarak girilen ve dikdörtgenin alanını hesaplayan bir metod yaz.
    func soru2(k1: Double, k2: Double) {
        let alan = k1 * k2
        print("Dikdörtgen Alanı: \(alan)")
    }
    
    // Parametre olarak girilen sayının faktöriyel değerini hesaplayıp geri döndüren metod yaz.
    func soru3(n: Int) -> Int {
        if n == 1 {
            return n
        } else {
            return n * soru3(n: n - 1)
        }
    }
    
    // Parametre olarak girilen cümle içinde kaç adet e harfi olduğunu gösteren bir metod yaz.
    func soru4(cumle: String) {
        var i = 0
        for harf in cumle {
            if harf == "e" || harf == "E" {
                i += 1
            }
        }
        print("Cümle içinde \(i) tane e harfi bulunuyor.")
    }
    
    // Parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri gönderen metodu yaz.
       func soru5(kenarSayisi: Int) -> Double {
           let acilarToplami: Double = Double((kenarSayisi - 2)) * 180.0
           let birIcAci = acilarToplami / Double(kenarSayisi)
           return birIcAci
       }
       
    // Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri dönduren metod yaz.
       func soru6(gunSayisi: Int) -> Int {
           let aylikSaat = gunSayisi * 8
           var normalMaas = 0
           var mesaiMaas = 0
           var totalMaas = 0
           if aylikSaat > 150 {
               normalMaas = 150 * 40
               mesaiMaas = (aylikSaat - 150) * 80
               totalMaas = normalMaas + mesaiMaas
           } else {
               totalMaas = aylikSaat * 40
           }
           return totalMaas
       }
       
    // Parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri dönduren metodu yaz.
       func soru7(otoparkSaaati: Int) -> Int {
           var ucret = 0
           if otoparkSaaati == 1 {
               ucret = 50
           } else {
               ucret = 50 + ((otoparkSaaati - 1) * 10)
           }
           return ucret
       }
    }
