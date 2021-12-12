part of widgets;

class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);

    final products = productData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,

      itemBuilder: (ctx, i)=> ChangeNotifierProvider.value(
        //create: (_) => products[i],
        value:  products[i],
        child: ProductItem(),
      ),

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}