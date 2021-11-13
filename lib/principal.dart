import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'clientes.dart';

class TiendApp extends StatelessWidget {
  bool _showFab = true;
  bool _showNotch = true;
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Tienda',
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('BlackFolder/14.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(child: const Text('TiendApp',
              style: TextStyle(fontSize:30,
                color: Colors.black,fontFamily: 'letra',
                fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
                //decoration: TextDecoration.underline,
                //decorationColor: Colors.white,
                //decorationStyle: TextDecorationStyle.dashed
              ),
            )
            ),
          ),
          body: ListView(
            padding: const EdgeInsets.only(bottom: 80),
            children: <Widget>[
              Container(
                color: Colors.blue.withOpacity(0.5),
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                child: ListTile(
                  title: const Text(
                    'Bienvenido a nuestra App',
                    style: TextStyle(fontSize:20,
                      color: Colors.black,fontFamily: 'letra',
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
                    ),
                  ),
                  subtitle: Text('Encuentra los mejores precios y descuentos'),
                  leading: Icon(
                    Icons.add_business,
                    color: Colors.red,
                    size: 50,
                  ),
                ),
              ),
              Container(
                color: Colors.green.withOpacity(0.5),
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(30),
                child: ListTile(
                  title: const Text(
                    'Lista de marcas y productos',
                    style: TextStyle(fontSize:20,
                      color: Colors.black,fontFamily: 'letra',
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
                    ),
                  ),
                  subtitle: Text('Encuentra variedad en productos y servicios'),
                  leading: Icon(
                    Icons.add_shopping_cart_sharp,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurpleAccent.withOpacity(0.5),
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(30),
                child: ListTile(
                  title: const Text(
                    'Informacion y caracteristicas',
                    style: TextStyle(fontSize:20,
                      color: Colors.black,fontFamily: 'letra',
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
                    ),
                  ),
                  subtitle: Text('Conoce los detalles y opciones disponibles'),
                  leading: Icon(
                    Icons.assignment,
                    color: Colors.purpleAccent,
                    size: 50,
                  ),
                ),
              ),
              Container(
                color: Colors.redAccent.withOpacity(0.5),
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(30),
                child: ListTile(
                  title: const Text(
                    'Registrese Aqui',
                    style: TextStyle(fontSize:20,
                      color: Colors.black,fontFamily: 'letra',
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
                    ),
                  ),
                  subtitle: Text('Registrate y obten multiples beneficios'),
                  leading: Icon(
                    Icons.add_reaction_rounded,
                    color: Colors.black,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: _showFab
              ? FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Clientes()),
              );
            },
            child: const Icon(Icons.add),
            tooltip: 'Agregar Nuevo Usuario',
          )
              : null,
          floatingActionButtonLocation: _fabLocation,
          bottomNavigationBar: _TiendApp(
            fabLocation: _fabLocation,
            shape: _showNotch ? const CircularNotchedRectangle() : null,
          ),
        ),
      ),
    );
  }
}

class _TiendApp extends StatelessWidget {
  const _TiendApp({
    this.fabLocation = FloatingActionButtonLocation.centerDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations =
  <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Colors.black,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Menu',
              icon: const Icon(Icons.menu,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>menu()),
                );
              },
            ),
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              tooltip: 'Buscar',
              icon: const Icon(Icons.search,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favoritos',
              icon: const Icon(Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(30),
                child: ListTile(
                  title: const Text(
                    'Configuracion',
                    style: TextStyle(fontSize:20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
                    ),
                  ),
                  leading: Icon(
                    Icons.brightness_7_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}