void main() {
  int factorialCalculation(int m) {
    int result = 1;
    for (var i = 2; i <= m; i++) {
      result *= i;
    }
    return result;
  }

  print("fonksiyon sonucu: ${factorialCalculation(4)}");
}
