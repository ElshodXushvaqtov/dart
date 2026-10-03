Future<String> getUser(int id) async {
  print('Searching user $id...');
  await Future.delayed(Duration(seconds: 2));   
  return 'User $id: Ali Valiyev';
}

void main() async {
  String user = await getUser(1);
  print(user);
}
