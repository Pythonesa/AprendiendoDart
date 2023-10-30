void main(List<String> args) {
  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  chargePhone(windPlant);
  print(
      'Energía de la planta eólica luego de cargar el teléfono: ${windPlant.energyLeft}');

  final NuclearPlant nuclearPlant = NuclearPlant(energyLeft: 1000);
  chargePhone(nuclearPlant);
  print(
      'Energía de la planta nuclear luego de cargar el teléfono: ${nuclearPlant.energyLeft}');
}

void chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('No hay energía suficiente para cargar el teléfono');
  }

  plant.consumeEnergy(10);
}

enum PlantType { nuclear, solar, wind, hydro, geothermal, biogas, biomass }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double energy);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double energy) {
    energyLeft -= energy;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required double this.energyLeft});

  @override
  void consumeEnergy(double energy) {
    energyLeft -= (energy / 2);
  }
}
