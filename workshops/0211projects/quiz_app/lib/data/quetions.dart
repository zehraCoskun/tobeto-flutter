import 'package:quiz_app/models/question_model.dart';

const questions = [
  QuestionModel("Aşağıdakilerden hangisi bir widget türüdür?",
      ["Stateful", "Constructor", "Class", "Const"], "Stateful"),
  QuestionModel(
      "Flutter nedir?",
      [
        "Bir programlama dili",
        "Bir geliştirme çerçevesi",
        "Bir işletim sistemi",
        "Bir yazılım şirketi"
      ],
      "Bir geliştirme çerçevesi"),
  QuestionModel("Flutter, hangi programlama dilini kullanır?",
      ["Java", "JavaScript", "Dart", "Python"], "Dart"),
  QuestionModel(
      "Flutter ile hangi platformlarda uygulama geliştirilebilir?",
      ["Sadece iOS", "Sadece Android", "iOS ve Android", "Yalnızca web"],
      "iOS ve Android"),
  QuestionModel(
      "Bir StatelessWidget ile bir StatefulWidget arasındaki temel fark nedir?",
      [
        "Stateful Widget durumu (state) saklayabilir, Stateless Widget saklayamaz.",
        "Stateless Widget durumu (state) saklayabilir, Stateful Widget saklayamaz.",
        "İkisi arasında temel bir fark yoktur.",
        "Stateful Widget statik içerikler için kullanılır."
      ],
      "Stateful Widget durumu (state) saklayabilir, Stateless Widget saklayamaz."),
  QuestionModel(
      "Flutter'da bir widget'ı nasıl özelleştirebilirsiniz?",
      [
        "Widget'ın içerik alanını değiştirerek",
        "Sadece constructor ile",
        "Widget'ın adını değiştirerek",
        "Mümkün değil"
      ],
      "Widget'ın içerik alanını değiştirerek"),
  QuestionModel(
      "Flutter'da 'hot reload' nedir?",
      [
        "Uygulamanızı yeniden başlatmak için kullanılan bir komut",
        "Kodunuzu değiştirmeden uygulamanın canlı olarak güncellenmesi",
        "Widget oluşturmak için kullanılan bir komut",
        "Widget'lar arasında geçiş yapmak için kullanılan bir komut"
      ],
      "Kodunuzu değiştirmeden uygulamanın canlı olarak güncellenmesi"),
  QuestionModel(
      "Flutter ile web geliştirme nasıl yapılır?",
      [
        "Sadece Dart kullanarak",
        "Flutter, web geliştirmeyi desteklemiyor",
        "Ayrı bir web projesi oluşturarak",
        "Web geliştirme için başka bir çerçeve kullanarak"
      ],
      "Ayrı bir web projesi oluşturarak"),
  QuestionModel(
      "Bir Flutter uygulamasında 'pubspec.yaml' dosyası ne işe yarar?",
      [
        "Projenin adını ve sürümünü tanımlar",
        "Uygulamanın ikonlarını belirler",
        "Kullanılan paketleri ve bağımlılıkları listeler",
        "Hiçbir şeye yaramaz"
      ],
      "Kullanılan paketleri ve bağımlılıkları listeler"),
  QuestionModel(
      "Flutter'da Widget kavramı neyi ifade eder?",
      [
        "Çerezlik",
        "Arayüz öğeleri ve yapı taşları",
        "Görsel efektler",
        "Veritabanı sorguları"
      ],
      "Arayüz öğeleri ve yapı taşları")
];


/*
Flutter'da "Widget" kavramı neyi ifade eder?
a) Çerezlik
b) Arayüz öğeleri ve yapı taşları
c) Görsel efektler
d) Veritabanı sorguları

1. Aşağıdakilerden hangisi bir widget türüdür?
   - Doğru Cevap: Stateful

2. Flutter nedir?
   - Doğru Cevap: Bir geliştirme çerçevesi

3. Flutter, hangi programlama dilini kullanır?
   - Doğru Cevap: Dart

4. Flutter ile hangi platformlarda uygulama geliştirilebilir?
   - Doğru Cevap: iOS ve Android

5. Bir StatelessWidget ile bir StatefulWidget arasındaki temel fark nedir?
   - Doğru Cevap: Stateful Widget durumu (state) saklayabilir, Stateless Widget saklayamaz.

6. Flutter'da bir widget'ı nasıl özelleştirebilirsiniz?
   - Doğru Cevap: Widget'ın içerik alanını değiştirerek

7. Flutter'da 'hot reload' nedir?
   - Doğru Cevap: Kodunuzu değiştirmeden uygulamanın canlı olarak güncellenmesi

8. Flutter ile web geliştirme nasıl yapılır?
   - Doğru Cevap: Ayrı bir web projesi oluşturarak

9. Bir Flutter uygulamasında 'pubspec.yaml' dosyası ne işe yarar?
   - Doğru Cevap: Kullanılan paketleri ve bağımlılıkları listeler

10. Flutter'da State ve Stateless Widget'lar arasındaki temel farklar nelerdir?
    - Doğru Cevap: Stateful Widget durumu (state) saklayabilir, Stateless Widget saklayamaz.

*/