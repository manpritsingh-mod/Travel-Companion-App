/// This class is used in the [main_page_item_widget] screen.
class MainPageItemModel {
  MainPageItemModel({
    this.hotelburjalarab,
    this.dubaiuniemirat,
    this.k999mmummsuqeim,
    this.id,
  }) {
    hotelburjalarab = hotelburjalarab ?? "Hotel Burj Al Arab";
    dubaiuniemirat = dubaiuniemirat ?? "Dubai - Uni Emirat Arab";
    k999mmummsuqeim = k999mmummsuqeim ?? "(999mm) Umm Suqeim 3";
    id = id ?? "";
  }

  String? hotelburjalarab;

  String? dubaiuniemirat;

  String? k999mmummsuqeim;

  String? id;
}
