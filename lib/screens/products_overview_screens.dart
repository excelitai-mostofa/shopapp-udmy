part of screens;


enum FilterOption{
 Favorite,
 All,
}


class ProductOverviewScreens extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final productsContainer = Provider.of<Products>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),

        actions: [

          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(child: Text('Only Favorite'), value: FilterOption.Favorite,),
              const PopupMenuItem(child: Text('Show All'), value: FilterOption.All,),
            ],

            onSelected: (FilterOption selectedValue){
              if(selectedValue == FilterOption.Favorite){
                productsContainer.showFavoritesOnly();
              }
              else{
                productsContainer.showAll();
              }
              },
          )
        ],
      ),


      body: ProductsGrid(),


    );
  }
}