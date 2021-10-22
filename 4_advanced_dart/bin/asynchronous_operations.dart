/* TR - Terimler
  - Future : Fonksiyon tanımlamasında fonksiyon isminden önce gelir. Metodun asenkron olarak çalışacağını ve await metodu ile karşılaştığı zaman
  çalışmasını askıya alacağını belirtir.
  - async : Fonksiyon isminden sonra gelir ve asenkron çalıştırmak istediğimiz yapılarda kullanırız, yani aynı anda birden
  fazla işlem yaptırmak için kullanırız.
  Örnek : Dosya işlemleri, İnternetten veri alırken gibi.
  - await : Sadece async fonksiyonların içinde kullanılır. Amaç asenkron işlem yaparken yarım kalan bazı kodlamalar hata oluşturabilir, hata oluşturmaması
  için await kullanılır ve asenktron işlem içinde o kodlamanın bitmesi beklenir.
--------------------------------------------------------------------------------------------------------------------
EN - Terms
  - Future : It comes before the function name in the function definition. The method will run asynchronously and when it encounters the await method
  Indicates that it will suspend its operation.
  - async : It comes after the function name and we use it in structures that we want to run asynchronously, that is, at the same time.
  We use it to do more processing.
  Example: File operations, such as retrieving data from the Internet.
  - await : Used only inside async functions. While the purpose is asynchronous processing, some unfinished coding may cause an error, not to cause an error.
  Await is used for the asynchronous operation and it is waited for the encoding to be finished.
  */
Future<void> main() async {
  print('Program started');
  print('******************');

  var data = await getDataOnDatabase();
  print('Loading...');
  print('Received data : $data');
}

Future<String> getDataOnDatabase() async {
  for (var i = 1; i <= 5; i++) {
    Future.delayed(Duration(seconds: i),
        () => print('Amount of data received : ${i * 20}'));
  }
  return Future.delayed(Duration(seconds: 5), () => 'Data');
}
