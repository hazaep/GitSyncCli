#!/bin/bash
echo "🔧 Instalando GitSyncCli..."

mkdir -p ~/proyectos/GitSyncCli/bin
cp git_sync_cli.sh ~/proyectos/GitSyncCli/
echo '#!/bin/bash' > ~/proyectos/GitSyncCli/bin/gsync
echo 'exec ~/proyectos/GitSyncCli/git_sync_cli.sh "$@"' >> ~/proyectos/GitSyncCli/bin/gsync
chmod +x ~/proyectos/GitSyncCli/bin/gsync

# Añadir a PATH si no está
if ! grep -q "GitSyncCli/bin" ~/.bashrc; then
  echo 'export PATH="$HOME/proyectos/GitSyncCli/bin:$PATH"' >> ~/.bashrc
fi

echo "✅ Instalación completa. Usa el comando: gsync"
