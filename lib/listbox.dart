class Contain {
  final String comment;
  final bool way1;
  final bool way2;

  static final myContain = <Contain>[
    Contain("Lorem ipsum dolor sit amet", true, false),
    Contain("Lorem ipsum dolor sit amet", false, true),
    Contain("Lorem ipsum dolor sit amet", true, false),
    Contain("Lorem ipsum dolor sit amet", true, true),
    Contain("Lorem ipsum dolor sit amet", false, false),
    Contain("Lorem ipsum dolor sit amet", true, true),
    Contain("Lorem ipsum dolor sit amet", false, true),
    Contain("Lorem ipsum dolor sit amet", true, false),
  ];

  Contain(this.comment, this.way1, this.way2);
}
