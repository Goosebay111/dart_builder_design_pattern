void main() {
  HouseBuilder iglooBuilder = IglooHouseBuilder();
  CivilEngineer engineer = CivilEngineer(iglooBuilder);
  engineer.constructHouse();
  House house = iglooBuilder.getHouse();
  print('House has been constructed: $house.');
  print('${house._basement}');
}

abstract class HousePlan {
  void setBasement(String basement);
  void setWalls(String walls);
  void setRoof(String roof);
  void setWindows(String windows);
  void setDoors(String doors);
  void setGarage(String garage);
  void setGarden(String garden);
  void setPool(String pool);
  void setFence(String fence);
  void setInterior(String interior);
}

class House implements HousePlan {
  String? _basement;
  String? _walls;
  String? _roof;
  String? _windows;
  String? _doors;
  String? _garage;
  String? _garden;
  String? _pool;
  String? _fence;
  String? _interior;

  @override
  void setBasement(String basement) => _basement = basement;

  @override
  void setDoors(String doors) => _doors = doors;

  @override
  void setFence(String fence) => _fence = fence;

  @override
  void setGarage(String garage) => _garage = garage;

  @override
  void setGarden(String garden) => _garden = garden;

  @override
  void setPool(String pool) => _pool = pool;

  @override
  void setRoof(String roof) => _roof = roof;

  @override
  void setWalls(String walls) => _walls = walls;

  @override
  void setWindows(String windows) => _windows = windows;

  @override
  void setInterior(String interior) => _interior = interior;
}

abstract class HouseBuilder {
  void buildBasement();
  void buildStructure();
  void buildRoof();
  void buildInterior();
  House getHouse();
}

class IglooHouseBuilder implements HouseBuilder {
  final House _house = House();

  @override
  void buildBasement() {
    _house.setBasement('Ice Bars');
  }

  @override
  void buildStructure() {
    _house.setWalls('Ice Blocks');
    _house.setFence('Ice Blocks');
    _house.setGarden('Ice Blocks');
    _house.setPool('Ice Rink');
  }

  @override
  void buildInterior() {
    _house.setWindows('Ice Bars');
    _house.setDoors('Ice Bars');
    _house.setInterior('Ice Carvings');
  }

  @override
  void buildRoof() {
    _house.setRoof('Ice Dome');
  }

  @override
  House getHouse() {
    return _house;
  }
}

class TipiHouseBuilder implements HouseBuilder {
  final House _house = House();

  @override
  void buildBasement() {
    _house.setBasement('Wooden Poles');
  }

  @override
  void buildStructure() {
    _house.setWalls('Wooden Beams');
    _house.setFence('Wooden Beams');
    _house.setGarden('Wooden Beams');
    _house.setPool('Pirranah Pool');
  }

  @override
  void buildInterior() {
    _house.setWindows('Wooden Poles');
    _house.setDoors('Wooden Poles');
    _house.setInterior('Fire Wood');
  }

  @override
  void buildRoof() {
    _house.setRoof('Wood, Caribou, and Seal Skins');
  }

  @override
  House getHouse() {
    return _house;
  }
}

class CivilEngineer {
  CivilEngineer(this.houseBuilder);

  HouseBuilder houseBuilder;

  void setHouseBuilder(HouseBuilder houseBuilder) {
    this.houseBuilder = houseBuilder;
  }

  //call each builder method in sequence.
  void constructHouse() {
    houseBuilder.buildBasement();
    houseBuilder.buildStructure();
    houseBuilder.buildRoof();
    houseBuilder.buildInterior();
  }

  House getHouse() {
    return houseBuilder.getHouse();
  }
}
