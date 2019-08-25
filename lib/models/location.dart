import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String ImagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.ImagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'آثار تاریخی اصفهان', 'assets/images/naghsh_jahan.jpg', [
        LocationFact('میدان نقش جهان - اصفهان',
            'این میدان در زمان صفویه بنا نهاده و از بزرگترین شاهکار های هنری قرن ها در کشور عزیزمان ایران می باشد.'
        ),
        LocationFact('سازندگان',
            'بهترین معماران، نقاشان و اساتید بزرگ ایران باعث ساخت و نگهداشت این بنا شده اند. اکنون مکانی برای گذار اوقات فراغت افراد و فروش صنایع دستی می باشد.'
        )
      ]),
      Location(2, 'آثار تاریخی شیراز', 'assets/images/hafez.jpg', [
        LocationFact('حافظیه - شیراز',
            'این میدان در زمان صفویه بنا نهاده و از بزرگترین شاهکار های هنری قرن ها در کشور عزیزمان ایران می باشد.'
        ),
        LocationFact('سازندگان',
            'بهترین معماران، نقاشان و اساتید بزرگ ایران باعث ساخت و نگهداشت این بنا شده اند. اکنون مکانی برای گذار اوقات فراغت افراد و فروش صنایع دستی می باشد.'
        )
      ]),
      Location(3, 'آثار تاریخی تهران', 'assets/images/azadi.jpg', [
        LocationFact('میدان آزادی - تهران',
            'این میدان در زمان صفویه بنا نهاده و از بزرگترین شاهکار های هنری قرن ها در کشور عزیزمان ایران می باشد.'
        ),
        LocationFact('سازندگان',
            'بهترین معماران، نقاشان و اساتید بزرگ ایران باعث ساخت و نگهداشت این بنا شده اند. اکنون مکانی برای گذار اوقات فراغت افراد و فروش صنایع دستی می باشد.'
        )
      ]),

    ];
  }

  static Location fetchByID(int locatioID){
    List<Location> locations =  Location.fetchAll();
    for(var i = 0; i < locations.length; i++){
      if(locations[i].id == locatioID)
        return locations[i];
    }
    return null;
  }
}