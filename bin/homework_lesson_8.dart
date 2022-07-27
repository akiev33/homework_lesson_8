import 'package:homework_lesson_8/homework_lesson_8.dart' as homework_lesson_8;

void main() {
  //1
  massive();
  //2
  print(average());
  //3
  print(long());
  //4
  list3();
}

//1
massive() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 5];
  int previus = 0;
  bool is_contains = false;
// сортировка по возрастанию
// чтобы проверить на дубликаты, даже если в массиве значение стоят не подряд
  list.sort((a, b) => a.compareTo(b));

  for (var i in list) {
    if (i == previus) {
      is_contains = true;
    }
    //i = 1 переменная меняет значение previus на 1, при след цикле i будет 2 
    //а previus сотанется 1, и когда previus и i совпадут, сработает if
    previus = i;
  }
  if (is_contains == true) {
    print('да');
  } else if (is_contains == false) {
    print('нет');
  }
}

//2
average() {
  List<int> list1 = [1, 2, 3, 4, 0, 5, 5, 7];
  double number = 0;
  for (var i in list1) {
    number += i;
  }
  number /= list1.length;
  return number;
}

//3
// длинна массива без length
long() {
  List<int> list2 = [1, 5, 3, 2, 2, 5, 6, 1, 2, 3];
  int count = 0;
  for (var i in list2) {
    count++;
  }
  return count;
}

//4
list3() {
  List objects = [1, '2', true, 1, 4, false, 'qwerty', 2.5, ];
  List objects_2 = [];
  int count = 0;

  // берем каждый элемент который является i, и определяем его тип данных и добавляем
  // в другой пустой массив 
  for (var i in objects) {
    objects_2.add(i.runtimeType);
  }
  print(objects_2);
}
