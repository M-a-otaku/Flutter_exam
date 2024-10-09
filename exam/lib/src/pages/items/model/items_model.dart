class ItemsModel {
 final String name;
 final int price; 
 final int id; 
 
 ItemsModel({required this.id,required this.price,required this.name});

  ItemsModel copyWith({
    int? id,
    String? name,
    int? price
  }) {
    return ItemsModel(
      id: id ?? this.id,
      name: name ?? this.name,
       price: price ?? this.price
    );
  }

}