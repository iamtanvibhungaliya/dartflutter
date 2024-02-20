import 'dart:io';

class Train {
  int train_Number;
  String train_Name;
  String source;
  String destination;
  String trainTime;

  Train(
      {required this.train_Number,
      required this.train_Name,
      required this.source,
      required this.destination,
      required this.trainTime});

  Train.demo({this.destination = "demo",this.source = "demo",this.train_Name = "demo",this.train_Number = 0,this.trainTime = "demo",});

}

class RailwayReservationSystem {
  List<Train> trains = [];

  void addTrainRecord() {
    print("Enter Train Number:");
    int trainNumber = int.parse(stdin.readLineSync()!);

    print("Enter Train Name:");
    String trainName = stdin.readLineSync()!;

    print("Enter Source:");
    String source = stdin.readLineSync()!;

    print("Enter Destination:");
    String destination = stdin.readLineSync()!;

    print("Enter Train Time:");
    String trainTime = stdin.readLineSync()!;

    Train newTrain = Train(
        train_Number: trainNumber,
        train_Name: trainName,
        source: source,
        destination: destination,
        trainTime: trainTime);

    trains.add(newTrain);
    print("Train Record Added Successfully!");
  }

  void displayRecordByTrainNumber() {
    print("Enter Train Number to search:");
    int searchTrainNumber = int.parse(stdin.readLineSync()!);

    Train? foundTrain = trains.firstWhere(
        (train) => train.train_Number == searchTrainNumber,
        orElse: () => Train.demo(),
        );

    if (foundTrain != null) {
      print("Train Found!");
      print("Train Number: ${foundTrain.train_Number}");
      print("Train Name: ${foundTrain.train_Name}");
      print("Source: ${foundTrain.source}");
      print("Destination: ${foundTrain.destination}");
      print("Train Time: ${foundTrain.trainTime}");
    } else {
      print("Train not found with the given Train Number.");
    }
  }
}

void main() {
  RailwayReservationSystem reservationSystem = RailwayReservationSystem();

  for (int i = 0; i < 3; i++) {
    print("\nEnter details for Train ${i + 1}:");
    reservationSystem.addTrainRecord();
  }

  print("\nSearching Train Record by Train Number:");
  reservationSystem.displayRecordByTrainNumber();
}