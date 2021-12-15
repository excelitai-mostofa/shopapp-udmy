part of widgets;

class Appdrawer extends StatelessWidget {
  const Appdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Hello Friends'),
            automaticallyImplyLeading: false,
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: (){

              Navigator.of(context).pushReplacementNamed('/');
            },
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Orders'),
            onTap: (){

              Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
