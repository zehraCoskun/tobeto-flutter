/*
Verilen sayının Armstrong Sayı olup olmadığını bulan fonksiyonu yazınız ve test ediniz.

Armstrong Sayı Nedir ?
N haneli bir sayının basamaklarının n’inci üstlerinin toplamı, sayının kendisine eşitse, böyle sayılara Armstrong sayı denir.


Örneğin 407 = (4^3)+ (0^3)+(7^3) = 64+0+343 = 407  bir armstrong sayıdır. */

void main() {
  void armstrongNumber(int number) {
    int numberCopy = number;
    List<int> basamaklar = [];

    while (number > 0) {
      int basamak = number % 10;
      basamaklar.add(basamak);
      number ~/= 10;
    }
    print(basamaklar);
    int count = basamaklar.length;
    int us = 1;
    int result = 0;
    for (int basamak in basamaklar) {
      for (var i = 0; i < count; i++) {
        us *= basamak;
      }
      result += us;
      us = 1;
    }
    print(result);
    print(numberCopy);
    if (result == numberCopy) {
      print("$numberCopy armstrong bir sayıdır");
    } else {
      print("$numberCopy armstrong bir sayı değildir");
    }
  }

  armstrongNumber(407);
}
