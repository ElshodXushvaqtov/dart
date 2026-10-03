
class Database {
  static final Database _instance = Database._private();

  Database._private() {
    print('Database created');
  }

  factory Database() {
    return _instance;
  }

  void query(String sql) {
    print('Running: $sql');
  }
}

void main() {
  Database db1 = Database();
  Database db2 = Database();

  db1.query('SELECT * FROM students');

  print('Same object? ${db1 == db2}'); // true
}
