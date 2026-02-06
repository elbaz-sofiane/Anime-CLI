#!/bin/bash

# Conversion automatique des fins de ligne si nécessaire
if head -1 "$0" | grep -q $'\r'; then
    echo "Conversion des fins de ligne Windows vers Unix..."
    sed -i 's/\r$//' "$0"
    exec /bin/bash "$0" "$@"
fi

app_name="anime"

echo "==========================================="
echo "      Installation d'Anime Sama - CLI       "
echo "==========================================="
echo

# Vérification root
if [ "$EUID" -ne 0 ]; then
    echo "   | [ERREUR : VOUS N'ETES PAS ROOT !] |"
    echo "   |  /!\ Lancez ce script en root /!\ |"
    echo ""
    exit 1
fi

apt-get update

check_install() {
    PKG="$1"
    CMD="$2"
    
    if command -v "$CMD" >/dev/null 2>&1; then
        echo "[OK] $PKG déjà installé"
    else
        echo "[INSTALL] Installation de $PKG..."
        apt install -y "$PKG" || {
            echo "[ERREUR] Impossible d'installer $PKG."
            exit 1
        }
    fi
}

check_install "Python3" "python3"
check_install "pip" "pip"
check_install "fzf" "fzf"
check_install "dos2unix" "dos2unix"

echo ""
echo "|================================|"
echo "| Installation des package Python |"
echo "|================================|"
echo ""

# Pour requests
if python3 -c "import requests" 2>/dev/null; then
    echo "[OK] requests installé"
else
    echo "[INSTALL] Installation de requests..."
    pip3 install requests || {
        apt install -y python3-requests || {
            echo "[ERREUR] Impossible d'installer requests."
            exit 1
        }
    }
fi

# Pour BS4
if python3 -c "import bs4" 2>/dev/null; then
    echo "[OK] bs4 installé"
else
    echo "[INSTALL] Installation de bs4..."
    pip3 install beautifulsoup4 || {
        apt install -y python3-bs4 || {
            echo "[ERREUR] Impossible d'installer bs4."
            exit 1
        }
    }
fi

echo ""
echo "Conversion des fins de ligne du script principal..."
if [ -f "$app_name" ]; then
    dos2unix "$app_name" 2>/dev/null || sed -i 's/\r$//' "$app_name"
    
    echo "Ajout des droits d'exécution..."
    chmod +x "$app_name" || {
        echo "[ERREUR] Impossible d'ajouter les droits à $app_name"
        exit 1
    }
    
    echo "Copie dans /usr/local/bin..."
    cp "$app_name" /usr/local/bin/ || {
        echo "[ERREUR] Impossible de copier $app_name"
        echo "Vous pouvez quand même lancer avec [python3 $app_name]"
        exit 1
    }
else
    echo "[ERREUR] Fichier $app_name non trouvé"
    echo "Assurez-vous que le fichier existe dans le même répertoire"
    exit 1
fi

echo "-------------------------------"
echo "Vous pouvez essayer la commande"
echo "         [ $app_name ]         "
echo "-------------------------------"
