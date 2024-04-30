String? capitalizeFirstLetter(String? word) {
  if (word != null) {
    return word.substring(0, 1).toUpperCase() + word.substring(1, word.length);
  } else {
    return null;
  }
}
