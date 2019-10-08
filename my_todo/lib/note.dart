class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Note(this._title, this._date, this._priority, [this._description]);
  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  //All the getters (how the informations sends out from the class)
  int get id => _id;
  String get title => _title;
  String get discription => _description;
  String get date => _date;
  int get priority => _priority;

  //All the setter (how the informations coming into the class)
  set title(String newTitle) {
    if (newTitle.length <= 225) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 225) {
      this._title = newDescription;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  // Used to save and retrive from database
  // Convert note object to map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}
