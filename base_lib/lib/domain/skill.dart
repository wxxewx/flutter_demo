class Skill {
  final String title;
  final SkillCategory skillCategory;

  Skill(this.title, skillCategory)
      : skillCategory =
  skillCategory == "游戏" ? SkillCategory.GAME : SkillCategory.VOICE;

  @override
  String toString() {
    return 'Skill{title: $title, skillCategory: $skillCategory}';
  }
}
enum SkillCategory { GAME, VOICE }
