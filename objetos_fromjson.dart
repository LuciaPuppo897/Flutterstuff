void main() {
  
  
  final Map<String, dynamic>rawJson = {
    'name':'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };
  
  
  final ironMan = Hero.fromJson(rawJson);
  
  
 print (ironMan);
  }

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero ({
    required this.name,
    required this.power,
    required this.isAlive,
  });
  
  Hero.fromJson(Map<String, dynamic>json)
  : name = json['name']  ?? 'No name founnd', // funciona bastante parecido a buscar key values en python
    power = json['power'] ?? 'No power found',
    isAlive = json['isAlive'] ?? 'No isAlive found';
  @override
  String toString()
  {
    return '$name, $power, ${isAlive ? 'YES': 'Nop'}';
  }
  
}