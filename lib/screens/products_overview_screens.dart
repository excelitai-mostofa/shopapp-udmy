part of screens;


class ProductOverviewScreens extends StatelessWidget {
  //const ProductOverviewScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),


      body: ProductsGrid(),


    );
  }
}


