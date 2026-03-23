# 🎬 Anime-CLI

### ✅ Fonctionnel au 05/02/2026 ✅

Actuelement oppérationnel pour https://anime-sama.tv ( change souvent et j'essayerais de le mettre a jour ! )

<img src="https://img.shields.io/badge/Version-1.0.1-blue?logo=github">


---
Un client en ligne de commande pour regarder des animes depuis [anime-sama.si](https://anime-sama.si) directement dans votre terminal.

Basé sur [ani-cli](https://github.com/pystardust/ani-cli) et [anisama-cli](https://github.com/Anime-Sama/anime-sama-cli), ce projet simplifie l'accès aux animes en mode lien uniquement.

---

## ✨ Fonctionnalités

- 🔍 **Recherche interactive** avec sélection via `fzf`
- 📺 **Support VF et VOSTFR** 
- 📚 **Historique des épisodes** regardés
- ⚡ **Navigation automatique** entre les épisodes
- 🌐 **Modifié l'URL** afin de l'actualisé
---

## 🚀 Installation

### Méthode 1 : Installation automatique (Recommandée)

Installation depuis le dépôt cloné

```bash
# Cloner le dépôt
git clone https://github.com/elbaz-sofiane/Anime-Sama.git
cd Anime-CLI

# Rendre le script d'installation exécutable
chmod +x install.sh

# instaler les dépendences et mise en place de le commande "anime" pour un lancement rapide
./install.sh

### Vérification de l'installation
anime --help

```

## 📋 Prérequis

### Dépendances système

```bash
# Debian/Ubuntu
sudo apt install fzf python3 python3-pip

# Arch Linux
sudo pacman -S fzf python python-pip

# Fedora
sudo dnf install fzf python3 python3-pip

# macOS (via Homebrew)
brew install fzf python3
```

### Dépendances Python

```bash
pip install requests beautifulsoup4
```

Ou avec `pip` système (recommandé) :

```bash
# Debian/Ubuntu
sudo apt install python3-requests python3-bs4

# Arch Linux
sudo pacman -S python-requests python-beautifulsoup4

# Fedora
sudo dnf install python3-requests python3-beautifulsoup4
```

---



### Désinstallation

```bash
sudo rm -r Anime-CLI
sudo rm /usr/local/bin/anime
rm -rf ~/.local/share/anime-cli  # Supprime aussi l'historique
```

---

## 📖 Utilisation

### Recherche interactive

```bash
anime

# Ou
python3 anime (fonctionne uniquement dans le répertoire)
```

### Recherche directe

```bash
# Rechercher "Naruto"
anime naruto

# Rechercher en VF uniquement
anime --vf one piece

# Mode debug
anime --debug "demon slayer"
```

### Gestion de l'historique

```bash
# Supprimer l'historique
anime --clear-history
```

---

## 🎮 Navigation

Une fois un épisode sélectionné, le lien de streaming s'affiche :

```
============================================================
🔗 LIEN DE LECTURE :

https://example.com/video.m3u8

============================================================

Options:
  [n] Episode suivant
  [q] Quitter

Votre choix (n/q):
```

- **`n`** : Charge l'épisode suivant automatiquement
- **`q`** : Quitte le programme

---

## 🛠️ Options disponibles

| Option | Description |
|--------|-------------|
| `--vf` | Rechercher uniquement en version française (VF) |
| `--debug` | Activer le mode debug (affiche les requêtes HTTP) |
| `--clear-history` | Supprimer tout l'historique de visionnage |
| `-h, --help` | Afficher l'aide complète |

### Options du script d'installation

| Option | Description |
|--------|-------------|
| `./install.sh` | Installation depuis GitHub |

---

## 📁 Structure des fichiers

```
~/.local/share/anime-cli/
└── history.db          # Base de données SQLite de l'historique
```

---

## 🎯 Exemples d'utilisation

### Rechercher et regarder un anime en VF

```bash
anime --vf "spy family"
```

### Continuer là où vous vous êtes arrêté

Les épisodes déjà visionnés sont marqués avec **[Déjà VU ✓]** :

```
1. Episode 1 [Déjà VU ✓]
2. Episode 2 [Déjà VU ✓]
3. Episode 3
4. Episode 4
```

### Réinitialiser l'historique

```bash
anime --clear-history
```

---

## 🔧 Dépannage

### Soucis d'instalation de package

```bash
apt install python-[package]

# ou
pip install [package]
```

### Erreur Python : `ModuleNotFoundError`

```bash
pip install --user requests beautifulsoup4
```

---

## 🤝 Contribuer

Les contributions sont les bienvenues !

Si vous avez des idée ou autre n'hesitez pas !

---


## 🙏 Remerciements

- [ani-cli](https://github.com/pystardust/ani-cli) - Inspiration originale
- [anisama-cli](https://github.com/Anime-Sama/anime-sama-cli) - Base de code
- [anime-sama.tv](https://anime-sama.tv) - Source des animes

---

## ⚠️ Avertissement

J'ai fait ce projet afin de m'amelioré et d'apprendre de nouvelles choses, il est a base educative uniquement, je ne pourais etre tenu responsable de vos agissements.

---

## 📞 Support

- 🐛 **Bug ?** Ouvrez une [issue](https://github.com/elbaz-sofiane/Anime-Sama/issues)
- 💡 **Suggestion ?** Ouvrez une [discussion](https://github.com/elbaz-sofiane/Anime-Sama/discussions)
- ⭐ **Aimez le projet ?** Laissez une étoile !

---

**Sofiane ELBAZ**
