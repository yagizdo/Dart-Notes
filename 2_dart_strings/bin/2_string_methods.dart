void main() {
  String str1 =
      "Hello World"; // H-0,e-1,l-2,l-3,o-4 W-5,o-6,r-7,l-8,d-9 Haflerde de böyle index numaraları var.

  // TR - Stringin istediğimiz kısmını almak

  print(str1.substring(0, 7));
  print('************');

  // TR - Stringte istediğimiz kelime ya da harfi var mı diye sorgulamak.

  if (str1.contains('llo')) {
    print('It contains.');
  } else {
    print('Does not contain');
  }
  print('************');
  // TR - Stringi full büyük ve küçük harf yapmak

  // TR - Büyük Harf
  // EN - Upper Case
  print(str1.toUpperCase());

  // TR - Küçük Harf
  // EN - Lower Case
  print(str1.toLowerCase());
  print('************');

  // TR - Bir string ifadeyi parça parça ayırmak

  var list = str1.split('');

  for (var l in list) {
    print(l);
  }
  print('************');
  // TR - Bir stringin başında ki ve sonunda ki boşlukları silmek(Widespace);

  String str5 = ' Test ';
  print(str5);
  print(str5.trim());
  print('************');
  // TR - Bir string ifadenin boyunu yani kaç karakter olduğunu öğrenmek. Boşluğu da sayar boşlukta bir karakterdir.

  print('$str1 length : ${str1.length}');
  print('************');
  // TR - String ifade boş mu kontrolü

  print(str1.isEmpty);
  print('************');
}
