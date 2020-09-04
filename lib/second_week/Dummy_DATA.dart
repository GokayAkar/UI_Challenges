class Activity {
  final String time;
  final String title;
  final String id;
  final List<String> otherParticipants;
  var isParticipating;

  Activity(
      {this.time,
      this.title,
      this.id,
      this.otherParticipants,
      this.isParticipating});
}

class ActivityList {
  static final List<Activity> activities = [
    Activity(
        time: "Today 6:00 PM",
        title: "Yoga and Meditation for Beginners",
        id: "asd",
        otherParticipants: ["Marie", "Jack", "Mary", "Tom", "Lee"],
        isParticipating: true),
    Activity(
        time: "Today 8:00 PM",
        title: "Practice French,English and Chinese",
        id: "asf",
        otherParticipants: ["Marie", "Jack", "Mary", "Tom", "Lee"],
        isParticipating: null),
    Activity(
        time: "Today 9:00 PM",
        title: "Easy and Gentle Yoga",
        id: "ask",
        otherParticipants: ["Marie", "Jack", "Mary", "Tom", "Lee"],
        isParticipating: true),
    Activity(
        time: "Today 12:00 PM",
        title:
            "Hope to get some sleep",
        id: "asx",
        otherParticipants: ["Marie", "Jack", "Mary", "Tom", "Lee"],
        isParticipating: null),
  ];
}
