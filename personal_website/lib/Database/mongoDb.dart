import 'package:mongo_dart/mongo_dart.dart';
import 'package:personal_website/Database/mongoDb_constants.dart';

class MongoDatabase {
  static connect() async {
    var db = await Db.create(database);
    await db.open();

    var collection = Db(database).collection('subscriber');
    print(Db(database).serverStatus());
    // final Db db;
    // db = await Db.create(database);
    // var asd = await db.open();
    // print(asd.serverStatus());

    // db = await Db.open(database);
    // await db.open(database);
    // var collection = db.collection(collectionName);
    // collection.insert({'email': 'krishanw30@gmail.com'});
    // db.close();
  }
}
