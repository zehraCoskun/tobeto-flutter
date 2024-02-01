import 'package:cloud_firestore/cloud_firestore.dart';
/* Bu sınıf Firebase Firestore'un user veritabanı bağlantısını yönetecek.
Firestore koleksiyonunu temsil etmek için _collection adında bir CollectionReference nesnesi tanımladık, dışardan kullanılmasın diye private yaptık. 
_instance (örnek demek aslında), firestore'daki users collection ile bir koleksiyon oluşturuyor. ve UserRepository.instance() metoduyla bütün uygulamada aynı koleksiyonu kullanabiliyoruz, tekrar çağırmamıza gerke kalmıyor.
create metodu ile de collection'a yeni data ekleyebiliyoruz. */

class UserRepository {
  final CollectionReference<Map<String, dynamic>> _collection;

  const UserRepository._privateConstructor(this._collection);

  static final UserRepository _instance = UserRepository._privateConstructor(
    FirebaseFirestore.instance.collection("users"),
  );

  factory UserRepository.instance() {
    return _instance;
  }

  Future<DocumentReference<Map<String, dynamic>>> create(Map<String, dynamic> data) async {
    _collection.get().then((value) => value.docs.map((e) => e.data()));
    return await _collection.add(data);
  }
}


/* Bonus :  factory ne işe yarar?

factory kelimesi, Dart dilinde bir sınıftan bir nesne oluşturulmasını kontrol etmek için kullanılan kelimedir.factory, her zaman aynı nesneyi döndüğünden veya bir önbelleğe alındığından, her çağrıda yeni bir nesne oluşturmak yerine var olan bir nesneyi geri döndürebilir. Bu, özellikle belirli koşullar altında farklı nesnelerin döndürülmesini istediğiniz durumlarda kullanışlıdır.

Burada UserRepository sınıfındaki factory metodu, _instance adlı bir örneği saklar ve her çağrıldığında bu örneği döndürür. Böylece, uygulamanızın herhangi bir yerinde UserRepository.instance() çağrıldığında aynı UserRepository örneği elde edilir. Bu, uygulama genelinde tek bir veritabanı bağlantısı sağlar ve gereksiz veritabanı bağlantılarının oluşturulmasını önler.

*/