void main() {
  //asal sayı kontrolü
  void primeNumControl(int n) {
    for (var i = 1; i <= n; i++) {
      bool prime = true;

      if (i == 1) {
        prime = false;
      } else if (i == 2) {
        prime = true;
      } else {
        for (var j = 2; j < i; j++) {
          if (i % j == 0) {
            prime = false;
            break;
          }
        }
      }
      if (prime) {
        print("$i asal");
      } else {
        print("$i asal değil");
      }
    }
  }

  primeNumControl(5);
}
