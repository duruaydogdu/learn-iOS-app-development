import UIKit

var ogrenciAdi = "Duru"
var ogrenciYas = 22
var ogrenciBoy = 1.70
var ogrenciBasharf = "D"
var ogrenciDevamEdiyorMu = true

print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)


var urun_id:Int = 3416
var urun_adi:String = "Macbook Air"
var urun_adet:Int = 100
var urun_fiyat:Int = 34999
var urun_tedarikci:String = "Apple"

print("Ürün id        : \(urun_id)")
print("Ürün adı       : \(urun_adi)")
print("Ürün adet      : \(urun_adet)")
print("Ürün fiyat     : \(urun_fiyat) ₺")
print("Ürün tedarikçi : \(urun_tedarikci)")

// Constants - Sabitler
var sayi = 10
print(sayi)
sayi = 20
print(sayi)

let numara = 100
print(numara)
// numara = 200
// print(numara)

// Tür Dönüşümü - Type Casting
// Sayısaldan sayısala
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)

// Sayısaldan Metine
var sonuc3 = String(i)//"42"
var sonuc4 = String(d)//"56.78"
print(sonuc3)
print(sonuc4)

// Metinden sayısala
var yazi = "34."

if let sonuc5 = Int(yazi) {
    print(sonuc5)
} else {
    print("Dönüşüm hatası")
}

