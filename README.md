# Principes d'Interprétation des Langages – Travaux Pratiques

Ce dépôt GitHub regroupe l'ensemble des TP réalisés dans le cadre du cours de Principes d'Interprétation des Langages. Vous y trouverez à la fois les exercices d'initiation ainsi que les annales issues des TP notés des deux dernières années.

---

## Contenu du dépôt

### TP2 – Utilisation de Jflex
- **Description :**  
  Ce TP propose de découvrir l’outil Jflex pour l’analyse lexicale. L'énoncé est présenté sous forme de leçon, suivi de pages explicatives de solutions pour chaque question.
- **Fichiers inclus :**
  - Énoncé du TP au format PDF.
  - Archives contenant les squelettes pour :  
    - Exercice 1 : Unités lexicales  
    - Exercice 2 : Compter  
    - Exercice 3 : Sous-titres  
  - Archives complémentaires des annales (TP2-annales.pdf) avec :
    - Exercice 1 : TP noté 22-23  
    - Exercice 2 : TP noté 23-24

### Répertoires supplémentaires
- **UnitesLexicales/**  
  Contient les fichiers sources et compilés (Java, Jflex, Makefile) pour l’exercice sur les unités lexicales.
  
- **Compter/**  
  Contient les fichiers sources et compilés (Java, Jflex, Makefile) pour l'exercice « Compter ».
  
- **Stitre/**  
  Contient les squelettes et les fichiers liés à l’exercice sur les sous-titres.
  
- **TP-note-22-23/**  
  Archives et squelettes relatifs au TP noté de l’année 22-23 (fichiers Jflex, Makefile, tests, etc.).
  
- **TP-note-23-24/**  
  Archives et squelettes relatifs au TP noté de l’année 23-24 (fichiers Jflex, Makefile, tests, mail, etc.).

---

## Utilisation

- **Compilation des TP Java et Jflex :**  
  Les répertoires comportant des fichiers Java et Jflex contiennent chacun leur propre Makefile. Vous pouvez compiler chaque TP en vous plaçant dans le répertoire correspondant et en exécutant la commande `make`.

- **Exécution :**  
  Une fois compilés, les exécutables ou fichiers de classes (.class) pourront être testés selon les consignes du TP. Pour les exercices Jflex, vous pouvez utiliser les fichiers `.jflex` et les tester à l’aide des fichiers de test fournis (ex. `test.txt`, `lexical-test.txt`).
