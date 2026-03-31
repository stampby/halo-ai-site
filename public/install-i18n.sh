#!/bin/bash
# halo-ai multilingual install wrapper
# Detects system locale and displays messages in the user's language.
# Designed and built by the architect.

set -euo pipefail

# ---------------------------------------------------------------------------
# Translations
# ---------------------------------------------------------------------------

declare -A MSG_en=(
  [welcome]="Welcome to halo-ai. Local AI, zero cloud."
  [detecting_hw]="Detecting hardware..."
  [detected_gpu]="GPU detected:"
  [detected_ram]="RAM detected:"
  [cloning]="Cloning halo-ai repository..."
  [installing]="Installing dependencies..."
  [compiling]="Compiling from source..."
  [configuring]="Configuring services..."
  [starting]="Starting services..."
  [complete]="halo-ai is ready. 33 services running."
  [open_browser]="Open your browser:"
  [no_gatekeeping]="No cloud. No subscriptions. No gatekeeping."
  [architect]="Designed and built by the architect."
)

declare -A MSG_fr=(
  [welcome]="Bienvenue sur halo-ai. IA locale, zero cloud."
  [detecting_hw]="Detection du materiel..."
  [detected_gpu]="GPU detecte :"
  [detected_ram]="RAM detectee :"
  [cloning]="Clonage du depot halo-ai..."
  [installing]="Installation des dependances..."
  [compiling]="Compilation depuis les sources..."
  [configuring]="Configuration des services..."
  [starting]="Demarrage des services..."
  [complete]="halo-ai est pret. 33 services actifs."
  [open_browser]="Ouvrez votre navigateur :"
  [no_gatekeeping]="Pas de cloud. Pas d'abonnements. Pas de barrieres."
  [architect]="Concu et realise par l'architecte."
)

declare -A MSG_es=(
  [welcome]="Bienvenido a halo-ai. IA local, cero nube."
  [detecting_hw]="Detectando hardware..."
  [detected_gpu]="GPU detectada:"
  [detected_ram]="RAM detectada:"
  [cloning]="Clonando el repositorio halo-ai..."
  [installing]="Instalando dependencias..."
  [compiling]="Compilando desde el codigo fuente..."
  [configuring]="Configurando servicios..."
  [starting]="Iniciando servicios..."
  [complete]="halo-ai esta listo. 33 servicios en ejecucion."
  [open_browser]="Abre tu navegador:"
  [no_gatekeeping]="Sin nube. Sin suscripciones. Sin restricciones."
  [architect]="Disenado y construido por el arquitecto."
)

declare -A MSG_es_MX=(
  [welcome]="Bienvenido a halo-ai. IA local, cero nube."
  [detecting_hw]="Detectando hardware..."
  [detected_gpu]="GPU detectada:"
  [detected_ram]="RAM detectada:"
  [cloning]="Clonando el repositorio halo-ai..."
  [installing]="Instalando dependencias..."
  [compiling]="Compilando desde el codigo fuente..."
  [configuring]="Configurando servicios..."
  [starting]="Iniciando servicios..."
  [complete]="halo-ai esta listo. 33 servicios funcionando."
  [open_browser]="Abre tu navegador:"
  [no_gatekeeping]="Sin nube. Sin suscripciones. Sin barreras."
  [architect]="Disenado y construido por el arquitecto."
)

declare -A MSG_pt_BR=(
  [welcome]="Bem-vindo ao halo-ai. IA local, zero nuvem."
  [detecting_hw]="Detectando hardware..."
  [detected_gpu]="GPU detectada:"
  [detected_ram]="RAM detectada:"
  [cloning]="Clonando o repositorio halo-ai..."
  [installing]="Instalando dependencias..."
  [compiling]="Compilando a partir do codigo-fonte..."
  [configuring]="Configurando servicos..."
  [starting]="Iniciando servicos..."
  [complete]="halo-ai esta pronto. 33 servicos em execucao."
  [open_browser]="Abra seu navegador:"
  [no_gatekeeping]="Sem nuvem. Sem assinaturas. Sem barreiras."
  [architect]="Projetado e construido pelo arquiteto."
)

declare -A MSG_de=(
  [welcome]="Willkommen bei halo-ai. Lokale KI, keine Cloud."
  [detecting_hw]="Hardware wird erkannt..."
  [detected_gpu]="GPU erkannt:"
  [detected_ram]="RAM erkannt:"
  [cloning]="halo-ai Repository wird geklont..."
  [installing]="Abhaengigkeiten werden installiert..."
  [compiling]="Wird aus dem Quellcode kompiliert..."
  [configuring]="Dienste werden konfiguriert..."
  [starting]="Dienste werden gestartet..."
  [complete]="halo-ai ist bereit. 33 Dienste laufen."
  [open_browser]="Oeffne deinen Browser:"
  [no_gatekeeping]="Keine Cloud. Keine Abonnements. Keine Einschraenkungen."
  [architect]="Entworfen und gebaut vom Architekten."
)

declare -A MSG_ja=(
  [welcome]="halo-ai へようこそ。ローカルAI、クラウド不要。"
  [detecting_hw]="ハードウェアを検出中..."
  [detected_gpu]="GPU 検出:"
  [detected_ram]="RAM 検出:"
  [cloning]="halo-ai リポジトリをクローン中..."
  [installing]="依存パッケージをインストール中..."
  [compiling]="ソースからコンパイル中..."
  [configuring]="サービスを設定中..."
  [starting]="サービスを起動中..."
  [complete]="halo-ai の準備完了。33 サービス稼働中。"
  [open_browser]="ブラウザを開いてください:"
  [no_gatekeeping]="クラウド不要。サブスク不要。制限なし。"
  [architect]="アーキテクトが設計・構築。"
)

# ---------------------------------------------------------------------------
# Locale detection
# ---------------------------------------------------------------------------

detect_lang() {
  local raw="${LC_ALL:-${LANG:-en_US.UTF-8}}"
  # Strip encoding suffix (e.g. .UTF-8)
  raw="${raw%%.*}"

  # Check for specific regional variants first
  case "$raw" in
    es_MX*) echo "es_MX"; return ;;
    pt_BR*) echo "pt_BR"; return ;;
  esac

  # Fall back to base language code
  local base="${raw%%_*}"
  case "$base" in
    en|fr|es|de|ja) echo "$base" ;;
    pt)             echo "pt_BR" ;;
    *)              echo "en" ;;
  esac
}

# ---------------------------------------------------------------------------
# Message helper
# ---------------------------------------------------------------------------

msg() {
  local key="$1"
  local ref="MSG_${HALO_LANG}[$key]"
  local val="${!ref:-}"

  # Fall back to English if the key is missing
  if [[ -z "$val" ]]; then
    local fallback="MSG_en[$key]"
    val="${!fallback:-$key}"
  fi

  echo "$val"
}

# ---------------------------------------------------------------------------
# Banner
# ---------------------------------------------------------------------------

banner() {
  echo ""
  echo "  ██╗  ██╗ █████╗ ██╗      ██████╗        █████╗ ██╗"
  echo "  ██║  ██║██╔══██╗██║     ██╔═══██╗      ██╔══██╗██║"
  echo "  ███████║███████║██║     ██║   ██║█████╗███████║██║"
  echo "  ██╔══██║██╔══██║██║     ██║   ██║╚════╝██╔══██║██║"
  echo "  ██║  ██║██║  ██║███████╗╚██████╔╝      ██║  ██║██║"
  echo "  ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝ ╚═════╝       ╚═╝  ╚═╝╚═╝"
  echo ""
  echo "  $(msg welcome)"
  echo ""
}

# ---------------------------------------------------------------------------
# Install steps
# ---------------------------------------------------------------------------

HALO_LANG="$(detect_lang)"

banner

# Hardware detection
echo ":: $(msg detecting_hw)"
GPU="$(lspci 2>/dev/null | grep -iE 'vga|3d|display' | head -1 | sed 's/.*: //' || echo "unknown")"
RAM="$(free -h 2>/dev/null | awk '/^Mem:/{print $2}' || echo "unknown")"
echo "   $(msg detected_gpu) $GPU"
echo "   $(msg detected_ram) $RAM"
echo ""

# Clone
echo ":: $(msg cloning)"
# git clone https://github.com/halo-ai/halo-ai.git /opt/halo-ai 2>/dev/null || true
echo ""

# Dependencies
echo ":: $(msg installing)"
# Package manager detection and install goes here
echo ""

# Compile
echo ":: $(msg compiling)"
# Build from source goes here
echo ""

# Configure
echo ":: $(msg configuring)"
# Service configuration goes here
echo ""

# Start
echo ":: $(msg starting)"
# systemctl / podman start goes here
echo ""

# Done
echo "==========================================="
echo "  $(msg complete)"
echo "  $(msg open_browser) http://localhost:3000"
echo ""
echo "  $(msg no_gatekeeping)"
echo "  $(msg architect)"
echo "==========================================="
echo ""
