part of widgets;

class ProductItem extends StatelessWidget {
 // const ProductItem({Key? key}) : super(key: key);

  // final String id;
  // final String title;
  // final String imgUrl;
  //
  // ProductItem(this.id, this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {

    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),

      child: GridTile(

          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(
                  ProductDetailScreen.routeName,
                  arguments: product.id,
              );
            },
            child: Image.network(
              product.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        footer: GridTileBar(

          leading: IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.favorite),
              color: Theme.of(context).accentColor,
          ),

          backgroundColor: Colors.black54,
          title: Text(product.title, textAlign: TextAlign.center,),
          trailing: IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).accentColor,
          ),

        ),
      ),
    );
  }
}
