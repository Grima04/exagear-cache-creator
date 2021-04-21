Choisissez votre langue: Français / [English](https://github.com/Grima04/exagear-cache-creator/blob/main/README.md) / Deutsch
# Outil ExaGear cache creator
ExaGear cache creator - créez facilement un fichier .obb ExaGear personnalisé et adapté à vos nécessités avec ce petit script.

## Qu'est-ce que c'est cet outil et qu'est-ce qu'il fait?
Cet outil est composé de 2 petits scripts, lesquels automatisent le procès de création du fichier .obb pour l'émulateur ExaGear Windows Emulator sur Android. L'outil automatise l'installation de l'environnement chroot contenant un système d'exploitation Ubuntu, installe Wine et quelques retouches requises par ExaGear. Finalement, le script crée un fichier .obb, prêt à être utilisé avec ExaGear sur votre dispositif Android.

## Quelles fonctions est-ce que l'outil offre actuellement?
Au moment, les options suivantes sont offertes:
* Choix entre un système Ubuntu 16.04 et Ubuntu 18.04
* Choix entre Wine devel et Wine stable
* Choix de la version spécifique de Wine: Wine 3.0 à 6.0 pour Wine stable et Wine 3.10 à 6.6 pour Wine devel
* Possibilité d'importer des bibliothèques spécifiques, par exemple libGL.so.1

## Qu'est-ce que fonctionne au moment donné?
* Au moment donné, la création du fichier avec Ubuntu 18.04 est complètement supportée. Ubuntu 16.04 a encore des problèmes avec les dépendances de Wine et les miroirs pour Ubuntu 16.04 ne sont pas complètement implémentés.
* Ce script a seulement été testé sur un ordinateur x86_64 avec Ubuntu 16.04, ne vous attendez pas à recevoir du support pour des autres systèmes d'exploitation. En théorie, le script devrait quand-même fonctionner sur Ubuntu 18.04, 20.04 et des autres distributions Debian (aucune garantie donnée).

## Instructions:
* D'abord, installez debootstrap sur votre système, téléchargez le projet entier sous forme d'archive zip et extrayez-le où vous voulez.
* Ensuite, naviguez au fichier libs du projet téléchargé et placez les bibliothèques avec leur chemin d'accès complet dans le fichier libs. Par exemple: si vous avez une bibliothèque libGL (pour virgl, Mesa LLVMpipe, etc), vous devez avoir à la fin le chemin d'accès suivant: **votre-chemin-du-projet/libs/usr/lib/i386-linux-gnu/libGL.so.1**
* Après, activez le droit d'exécution du script exagear-create-cache.sh avec **chmod +x exagear-create-cache.sh** et démarrez le script avec sudo et suives les instructions données au terminal: **sudo ./exagear-create-cache.sh**
* Maintenant, vous allez avoir le choix entre Ubuntu 18.04 et 16.04 (**choisissez s'il vous plait seulement Ubuntu 18.04 pour le moment donné**), Wine devel ou Wine stable et vous pouvez ensuite choisir une version de Wine spécifique.
* Si tout se déroule comme planifié, vous devriez avoir maintenant un fichier .obb prêt à être utilisé dans le fichier obb-cache.
* Finalement, copiez le fichier .obb à votre dispositif Android et collez le dans le chemin suivant: **/storage/emulated/0/Android/obb/com.eltechs.ed/**
* Maintenant, vous pouvez démarrer ExaGear avec votre système Ubuntu et Wine personnalisé.
* **NB: Je ne suis pas responsable pour tout forme de dommage causé à votre dispotifif, ordinateur et/ou a vous en utilisant ce logiciel. Utilisation à vos risques.**

## Information supplémentaire:
* Prière de me contacter en cas de problèmes liés à l'installation d'une version spécifique de Wine. L'origine du problème sera probablement une faute de frappe dans les miroirs de Wine, donc vous pouvez aussi essayer de résoudre le problème vous-même si vous voulez.
