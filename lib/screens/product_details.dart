part of screens;

class ProductDetailScreen extends StatelessWidget {
  //const ProductDetailScreen({Key? key}) : super(key: key);

  // final String title;
  //
  // ProductDetailScreen(this.title);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context , listen: false).findById(productId);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
