void insertSingleItem(List list, var item) {
  int insertIndex;
  if (list.length > 0) {
    insertIndex = list.length;
  } else {
    insertIndex = 0;
  }
  list.insert(insertIndex, item);
}
