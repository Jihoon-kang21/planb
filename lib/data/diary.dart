import 'database.dart';
import 'package:moor/moor.dart';

part 'diary.g.dart';

class Diary extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().withLength(min: 1, max: 20)();

  TextColumn get content => text()();

  DateTimeColumn get createdAt =>
      dateTime().withDefault(Constant(DateTime.now()))();
}

@UseDao(tables: [Diary])
class DiaryDao extends DatabaseAccessor<Database> with _$DiaryDaoMixin {
  DiaryDao(Database db) : super(db);

  Stream<List<DiaryData>> streamDiaries() => select(diary).watch();

  Stream<DiaryData> streamDiary(int id) =>
      (select(diary)..where((tbl) => tbl.id.equals(id))).watchSingle();

  Future insertDiary(DiaryCompanion data) => into(diary).insert(data);
}

// 
// https://www.youtube.com/watch?v=Bs8K7SLk2oY
// 20:38