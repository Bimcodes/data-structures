class DataStructureQuestions {
  int dividePlayers(List<int> skill) {
    if (skill.length % 2 != 0) return -1;
    skill.sort();

    int n = skill.length;
    int teamSkillSum = skill[0] + skill[n - 1];
    int chemistrySum = 0;

    for (int i = 0; i < n ~/ 2; i++) {
      int currentTeamSkill = skill[i] + skill[n - 1 - i];

      if (currentTeamSkill != teamSkillSum) {
        return -1;
      }
      chemistrySum += skill[i] * skill[n - 1 - i];
    }
    return chemistrySum;
  }
}
