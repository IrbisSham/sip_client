// import 'package:dataclass/dataclass.dart';
import 'package:flutter/material.dart';
import 'presentation/custom_icons.dart';

List<Contact> contacts = [
  Contact(id: 1, name: "Иван", surName: "Петров", secName: "Кожугетович", tel: '8-435-236-23-63', email: 'ivan@gh.rt', imgName: 'girl.gif'),
  Contact(id: 2, name: "Сергей", surName: "Кашин", secName: "Михайлович", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'owl.jpg'),
  Contact(id: 3, name: "Денис", surName: "Клинцкевич", tel: '8-432-236-23-63', email: 'klinz@gh.rt', imgName: 'rainbow.gif'),
  Contact(id: 4, name: "Освальд", surName: "Сидоров", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'owl.jpg'),
  Contact(id: 5, name: "Олег", surName: "Михайлов", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'tiger.jpg'),
  Contact(id: 6, name: "Анатолий", surName: "Еремеев", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'owl.jpg'),
  Contact(id: 7, name: "Дмитрий", surName: "Сьюридзе", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'tiger.jpg'),
  Contact(id: 8, name: "Борис", surName: "Байков", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'girl.gif'),
  Contact(id: 9, name: "Константин", surName: "Ухабин", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'owl.jpg'),
  Contact(id: 10, name: "Виктор", surName: "Цымбалюк", secName: "Рюрикович", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'rainbow.gif'),
  Contact(id: 10, name: "Виктор", surName: "Цымбалюк", secName: "Рюрикович", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'rainbow.gif'),
  Contact(id: 10, name: "Виктор", surName: "Цымбалюк", secName: "Рюрикович", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'rainbow.gif'),
  Contact(id: 10, name: "Виктор", surName: "Цымбалюк", secName: "Рюрикович", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'rainbow.gif'),
  Contact(id: 10, name: "Виктор", surName: "Цымбалюк", secName: "Рюрикович", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'rainbow.gif'),
  Contact(id: 10, name: "Виктор", surName: "Цымбалюк", secName: "Рюрикович", tel: '8-432-236-23-63', email: 'kasha@gh.rt', imgName: 'rainbow.gif'),
];

void main() {
  runApp(MyApp());
}

// @dataClass
class Contact {
  final int id;
  final String name;
  final String surName;
  final String? secName;
  final String tel;
  final String email;
  final String? dept;
  final String? imgName;


//<editor-fold desc="Data Methods" defaultstate="collapsed">


  const Contact({
    required this.id,
    required this.name,
    required this.surName,
    this.secName,
    required this.tel,
    required this.email,
    this.dept,
    this.imgName,
  });


  Contact copyWith({
    required int id,
    required String name,
    required String surName,
    String? secName,
    required String tel,
    required String email,
    String? dept,
    String? imgName,
  }) {
    if ((identical(id, this.id)) &&
        (identical(name, this.name)) &&
        (identical(surName, this.surName)) &&
        (secName == null || identical(secName, this.secName)) &&
        (identical(tel, this.tel)) &&
        (identical(email, this.email)) &&
        (dept == null || identical(dept, this.dept)) &&
        (imgName == null || identical(imgName, this.imgName))) {
      return this;
    }

    return new Contact(
      id: this.id,
      name: this.name,
      surName: this.surName,
      secName: secName ?? this.secName,
      tel: this.tel,
      email: this.email,
      dept: dept ?? this.dept,
      imgName: imgName ?? this.imgName,
    );
  }

  String display() {
    return "$surName $name ${secName ?? ''}";
  }

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, surName: $surName, secName: $secName, tel: $tel, email: $email, dept: $dept, imgName: $imgName}';
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is Contact &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              surName == other.surName &&
              secName == other.secName &&
              tel == other.tel &&
              email == other.email &&
              dept == other.dept &&
              imgName == other.imgName
          );


  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      surName.hashCode ^
      secName.hashCode ^
      tel.hashCode ^
      email.hashCode ^
      dept.hashCode ^
      imgName.hashCode;


  factory Contact.fromMap(Map<String, dynamic> map) {
    return new Contact(
      id: map['id'] as int,
      name: map['name'] as String,
      surName: map['surName'] as String,
      secName: map['secName'] as String?,
      tel: map['tel'] as String,
      email: map['email'] as String,
      dept: map['dept'] as String?,
      imgName: map['imgName'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'name': this.name,
      'surName': this.surName,
      'secName': this.secName,
      'tel': this.tel,
      'email': this.email,
      'dept': this.dept,
      'imgName': this.imgName,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Stack(
          children: [
            MaterialApp(
              title: 'SIP Client',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                primaryColor: const Color(0xFF2196f3),
                accentColor: const Color(0xFF2196f3),
                canvasColor: const Color(0xFFfafafa),
              ),
              home: HomePage(),
            ),
            AddContactView(),
          ],
        ),
    );
  }
}

class Loader {
  static final Loader appLoader = Loader();
  ValueNotifier<bool> loaderShowingNotifier = ValueNotifier(false);
  ValueNotifier<String> loaderTextNotifier = ValueNotifier('error message');

  void showLoader() {
    loaderShowingNotifier.value = true;
  }

  void hideLoader() {
    loaderShowingNotifier.value = false;
  }

  void setText({required String errorMessage}) {
    loaderTextNotifier.value = errorMessage;
  }

  void setImage() {
    // same as that of setText //
  }
}

class AddContactView extends StatelessWidget {
  const AddContactView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: Loader.appLoader.loaderShowingNotifier,
      builder: (context, value, child) {
        if (value) {
          return addContactOverLayWidget();
        } else {
          return Container();
        }
      },
    );
  }

  Container addContactOverLayWidget() {
    return Container(
        color: Colors.black.withOpacity(0.5),
        width: 1020,
        height: 460,
        child: Padding(
          padding: const EdgeInsets.only(left: 340.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Card(
                    shape: RoundedRectangleBorder(side: BorderSide(width: 800)),
                    child:
                      Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.close_outlined),
                              onPressed: () {
                                Loader.appLoader.hideLoader();
                              },
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: 32,
                        // ),
                        Column(
                          children: [
                            ValueListenableBuilder<String>(
                              builder: (context, value, child) {
                                return
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 300,
                                                    child:
                                                    RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: "Add contact",
                                                            style:
                                                              TextStyle(color: Colors.orange),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  TextButton(
                                                    key:null,
                                                    onPressed: null,
                                                    child:
                                                      RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "Advanced",
                                                              style:TextStyle(
                                                                color:Colors.orange,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                  ),
                                                  TextButton(
                                                    key:null,
                                                    onPressed: null,
                                                    child:
                                                      Icon(Icons.star, size: 22),
                                                  ),
                                                  TextButton(
                                                    key:null,
                                                    onPressed: null,
                                                    child:
                                                      Icon(CustomIcons.trash_alt, size: 22),
                                                  ),
                                                  TextButton(
                                                    key:null,
                                                    onPressed: null,
                                                    child:
                                                      Icon(Icons.close, size: 22),
                                                  ),
                                                ]
                                            ),
                                              Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Stack(
                                                      children: <Widget>[
                                                        Container(
                                                          // alignment: Alignment.bottomCenter,
                                                          child:
                                                          TextButton(
                                                            key: null,
                                                            onPressed: null,
                                                            child:
                                                            RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: "Add avatar",
                                                                    style: TextStyle(
                                                                      color:Colors.white60,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            style: ButtonStyle(
                                                              padding: MaterialStateProperty.resolveWith<EdgeInsets>((states) {
                                                                return EdgeInsets.symmetric(vertical: 20.0, horizontal: 47.0);
                                                              }),
                                                              backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                                                                return Colors.black45;
                                                              }),
                                                              // backgroundColor: Colors.black45,
                                                            ),
                                                          ),
                                                          padding: new EdgeInsets.only(
                                                            top: 97.0,
                                                          ),
                                                          margin: const EdgeInsets.only(top: 10.0),
                                                        ),
                                                        Container(
                                                          child: Icon(Icons.person, size: 144, color: Colors.black26,),
                                                          decoration: BoxDecoration(
                                                              border: Border.all(width: 1, color: Colors.black26)),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: <Widget>[
                                                          Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              mainAxisSize: MainAxisSize.max,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: <Widget>[
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 100,
                                                                  child:
                                                                  RichText(
                                                                    text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text: "First name",
                                                                          style:
                                                                          TextStyle(color: Colors.black45),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 400,
                                                                  child: TextField(
                                                                    decoration:
                                                                    InputDecoration(
                                                                      hintText: 'e.g: Ivan',
                                                                      hintStyle: TextStyle(color: Colors.grey),
                                                                      filled: true,
                                                                      fillColor: Colors.white70,
                                                                      enabledBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                                                      ),
                                                                      focusedBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                                        borderSide: BorderSide(color: Colors.orange, width: 1),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ]
                                                          ),
                                                          Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              mainAxisSize: MainAxisSize.max,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: <Widget>[
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 100,
                                                                  child:
                                                                  RichText(
                                                                    text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text: "Middle name",
                                                                          style:
                                                                          TextStyle(color: Colors.black45),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 400,
                                                                  child: TextField(
                                                                    decoration:
                                                                    InputDecoration(
                                                                      hintText: 'e.g: Petrovich',
                                                                      hintStyle: TextStyle(color: Colors.grey),
                                                                      filled: true,
                                                                      fillColor: Colors.white70,
                                                                      enabledBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                                                      ),
                                                                      focusedBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                                        borderSide: BorderSide(color: Colors.orange, width: 1),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ]
                                                          ),
                                                          Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              mainAxisSize: MainAxisSize.max,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: <Widget>[
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 100,
                                                                  child:
                                                                  RichText(
                                                                    text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text: "Last name",
                                                                          style:
                                                                          TextStyle(color: Colors.black45),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 400,
                                                                  child: TextField(
                                                                    decoration:
                                                                    InputDecoration(
                                                                      hintText: 'e.g: Sidorov',
                                                                      hintStyle: TextStyle(color: Colors.grey),
                                                                      filled: true,
                                                                      fillColor: Colors.white70,
                                                                      enabledBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                                                      ),
                                                                      focusedBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                                        borderSide: BorderSide(color: Colors.orange, width: 1),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ]
                                                          ),
                                                          Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              mainAxisSize: MainAxisSize.max,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: <Widget>[
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 100,
                                                                  child:
                                                                  RichText(
                                                                    text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text: "Company",
                                                                          style:
                                                                          TextStyle(color: Colors.black45),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 400,
                                                                  child: TextField(
                                                                    decoration:
                                                                    InputDecoration(
                                                                      hintText: 'e.g: My Company Ltd.',
                                                                      hintStyle: TextStyle(color: Colors.grey),
                                                                      filled: true,
                                                                      fillColor: Colors.white70,
                                                                      enabledBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                                                      ),
                                                                      focusedBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                                        borderSide: BorderSide(color: Colors.orange, width: 1),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ]
                                                          ),
                                                          Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              mainAxisSize: MainAxisSize.max,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: <Widget>[
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 100,
                                                                  child:
                                                                  RichText(
                                                                    text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text: "Phone",
                                                                          style:
                                                                          TextStyle(color: Colors.black45),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 400,
                                                                  child: TextField(
                                                                    decoration:
                                                                    InputDecoration(
                                                                      hintText: 'e.g: 8-495-356-74-23',
                                                                      hintStyle: TextStyle(color: Colors.grey),
                                                                      filled: true,
                                                                      fillColor: Colors.white70,
                                                                      enabledBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                                                      ),
                                                                      focusedBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                                        borderSide: BorderSide(color: Colors.orange, width: 1),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ]
                                                          ),
                                                          Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              mainAxisSize: MainAxisSize.max,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: <Widget>[
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 100,
                                                                  child:
                                                                  RichText(
                                                                    text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text: "Email",
                                                                          style:
                                                                          TextStyle(color: Colors.black45),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                                                                  width: 400,
                                                                  child: TextField(
                                                                    decoration:
                                                                    InputDecoration(
                                                                      hintText: 'e.g: ivan_petrovich@tel.ru',
                                                                      hintStyle: TextStyle(color: Colors.grey),
                                                                      filled: true,
                                                                      fillColor: Colors.white70,
                                                                      enabledBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                                                      ),
                                                                      focusedBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                                        borderSide: BorderSide(color: Colors.orange, width: 1),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ]
                                                          ),
                                                        ]
                                                    ),
                                                  ]
                                              ),
                                          ]
                                      )
                                    ]
                                  );
                              },
                              valueListenable:
                              Loader.appLoader.loaderTextNotifier,
                            ),
                            // SizedBox(
                            //   height: 8,
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

enum AddContact { add, import }

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabContactRecentController;
  late final TabController _tabContactFilterController;
  late final TabController _tabContactRecentTypesController;
  bool _isContactFilterShow = true;
  bool _isContactRecentTypesShow = false;
  bool _isAddContactFormShow = false;

  @override
  void initState() {
    super.initState();
    _tabContactRecentController = TabController(length: 2, vsync: this);
    _tabContactRecentController.addListener(_handleTabContactRecentSelection);
    _tabContactFilterController = TabController(length: 3, vsync: this);
    _tabContactFilterController.addListener(_handleTabContactFilterSelection);
    _tabContactRecentTypesController = TabController(length: 3, vsync: this);
    _tabContactRecentTypesController.addListener(_handleTabRecentTypesFilterSelection);
  }

  void _handleTabContactRecentSelection() {
    setState(() {
      if (_tabContactRecentController.index == 0) {
        _isContactFilterShow = true;
        _isContactRecentTypesShow = false;
      }
      if (_tabContactRecentController.index == 1) {
        _isContactFilterShow = false;
        _isContactRecentTypesShow = true;
      }
    });
  }

  void _handleTabContactFilterSelection() {
    setState(() {

    });
  }

  void _handleTabRecentTypesFilterSelection() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIP Client'),
      ),
      body:
      SingleChildScrollView(
        child:
      //   fit: FlexFit.tight,
      //   flex: 1,
      //   child:
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.only(top: 5.0, left: 20),
                                  width: 300,
                                  child:
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Icon(Icons.check, size: 22, color: Color.fromRGBO(164, 199, 58, 100)),
                                        ),
                                        TextSpan(
                                          text: " <AccountTelephone>@ProviderName",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TextButton(key:null, onPressed: buttonSettingsPressed,
                                  child:
                                  Icon(Icons.settings, size: 22),
                                )
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.only(top: 5.0, left: 20),
                                  width: 300,
                                  child: TextField(
                                    decoration:
                                    InputDecoration(
                                      hintText: 'Enter contact here...',
                                      prefixIcon: Icon(Icons.search),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      filled: true,
                                      fillColor: Colors.white70,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        borderSide: BorderSide(color: Colors.orange, width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(key:null, onPressed: buttonAppsPressed,
                                  child:
                                  Icon(Icons.apps, size: 22),
                                )
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    width: 300,
                                    child:
                                    Flexible(
                                        child:
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child:
                                          TabBar(
                                            controller: _tabContactRecentController,
                                            indicatorColor: Colors.orange,
                                            labelColor: Colors.orange,
                                            unselectedLabelColor: Colors.grey,
                                            tabs: [
                                              Tab(
                                                  text: 'Contacts',
                                                  icon: Icon(Icons.contacts,
                                                      color: _tabContactRecentController.index == 0
                                                          ? Colors.orange
                                                          : Colors.grey)),
                                              Tab(
                                                  text: 'Recent',
                                                  icon: Icon(Icons.recent_actors,
                                                      color: _tabContactRecentController.index == 1
                                                          ? Colors.orange
                                                          : Colors.grey)),
                                            ],
                                          ),
                                        )
                                    )
                                ),
                              ]
                          ),
                          if (_isContactFilterShow) Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 300,
                                  child:
                                  TabBar(
                                    controller: _tabContactFilterController,
                                    indicatorColor: Colors.orange,
                                    labelColor: Colors.orange,
                                    unselectedLabelColor: Colors.grey,
                                    tabs: [
                                      Tab(
                                          text: 'All',
                                          icon: Icon(Icons.contact_phone,
                                              color: _tabContactFilterController.index == 0
                                                  ? Colors.orange
                                                  : Colors.grey)),
                                      Tab(
                                          text: 'Online',
                                          icon: Icon(Icons.book_online,
                                              color: _tabContactFilterController.index == 1
                                                  ? Colors.orange
                                                  : Colors.grey)),
                                      Tab(
                                          text: 'Favorites',
                                          icon: Icon(Icons.favorite,
                                              color: _tabContactFilterController.index == 2
                                                  ? Colors.orange
                                                  : Colors.grey)),
                                    ],
                                  ),
                                ),
                                PopupMenuButton<AddContact>(
                                  onSelected: (AddContact result) {
                                    setState(() {
                                      if (result == AddContact.add) {
                                        addContact();
                                      }
                                    });
                                  },
                                  child:
                                  Icon(Icons.add, size: 22),
                                  itemBuilder: (BuildContext context) => <PopupMenuEntry<AddContact>>[
                                    const PopupMenuItem<AddContact>(
                                      value: AddContact.add,
                                      child: Text('Add contact'),
                                    ),
                                    const PopupMenuItem<AddContact>(
                                      value: AddContact.import,
                                      child: Text('Import contacts'),
                                    ),
                                  ],
                                )
                              ]
                          ),
                          if (_isContactRecentTypesShow) Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 300,
                                  child:
                                  TabBar(
                                    controller: _tabContactRecentTypesController,
                                    indicatorColor: Colors.orange,
                                    labelColor: Colors.orange,
                                    unselectedLabelColor: Colors.grey,
                                    tabs: [
                                      Tab(
                                          text: 'All',
                                          icon: Icon(Icons.contact_phone,
                                              color: _tabContactRecentTypesController.index == 0
                                                  ? Colors.orange
                                                  : Colors.grey)),
                                      Tab(
                                          text: 'Calls',
                                          icon: Icon(Icons.book_online,
                                              color: _tabContactRecentTypesController.index == 1
                                                  ? Colors.orange
                                                  : Colors.grey)),
                                      Tab(
                                          text: 'Messages',
                                          icon: Icon(Icons.favorite,
                                              color: _tabContactRecentTypesController.index == 2
                                                  ? Colors.orange
                                                  : Colors.grey)),
                                    ],
                                  ),
                                ),
                                TextButton(key:null, onPressed: buttonTrashPressed,
                                  child:
                                  Icon(CustomIcons.trash_alt, size: 22),
                                )
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    width: 500,
                                    color: Colors.white,
                                    padding: EdgeInsets.all(10),
                                    child: SingleChildScrollView(
                                      physics: ScrollPhysics(),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Contacts",
                                                  style:
                                                  TextStyle(color: Colors.orange, fontWeight: FontWeight.w700, fontSize: 18.0),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(top: 5.0),
                                              child: ListView (
                                                shrinkWrap: true,
                                                // spacing: 5.0,
                                                // alignment: WrapAlignment.spaceEvenly,
                                                children: createContactList(contacts),
                                              )
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ]
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   mainAxisSize: MainAxisSize.max,
                          //   crossAxisAlignment: CrossAxisAlignment.center,
                          //   children:
                          //     createContactList(contacts),
                          // ),
                        ]
                    ),
                  ]
              ),
            ]
        ),
      ) // AddContactView(),
      );
  }

  void buttonSettingsPressed(){

  }

  void buttonAppsPressed(){

  }

  void addContact() async {
    Loader.appLoader.showLoader();
    await Future.delayed(Duration(seconds: 5));
  }

  void closeAddContact() async {
    Loader.appLoader.hideLoader();
    await Future.delayed(Duration(seconds: 5));
  }

  void importContacts(){

  }

  void buttonTrashPressed(){

  }

  @override
  void dispose() {
    _tabContactRecentController.dispose();
    _tabContactFilterController.dispose();
    super.dispose();
  }
}

Container makeGridCell(String displayName, String? imageName, String tel) {
  return Container(
    width: 500,
    child:
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imageName != null)
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/ava/'+ imageName),
                    fit: BoxFit.fitWidth),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(displayName,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18.0)
                ),
                Text(tel,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18.0, color: Colors.black26)
                ),
              ]
            )
            ,
          ],
        ),
  );
}

List<Widget> createContactList(List<Contact> contactList) {
  List<Widget> contactsWidget = <Widget>[];
  for (int i = 0; i < contactList.length; i++) {
    contactsWidget
        .add(makeGridCell(contactList[i].display(), contactList[i].imgName, contactList[i].tel));
  }
  return contactsWidget;
}
