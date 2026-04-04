# Development

### Node JS

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 25

# Verify
node -v # Should print "v24.14.1".
npm -v # Should print "11.11.0".

# Install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

### Docker

```bash
sudo dnf -y install dnf-plugins-core
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl enable --now docker
sudo usermod -aG docker $USER
```

Firewall: Fedora es más estricto con el firewall que Arch. Si tus contenedores no tienen internet o no puedes acceder a los puertos desde el navegador, puede que necesites añadir la interfaz de docker a la zona de confianza:

```bash
sudo firewall-cmd --permanent --zone=trusted --add-interface=docker0
sudo firewall-cmd --reload
```

### GitHub Credential Config

```bash
sudo dnf install gh
gh auth login
```

### Rust

```bash
sudo dnf install gcc gcc-c++ make glibc-devel openssl-devel

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh #Option 1

source $HOME/.cargo/env

# Test
rustc --version
cargo --version

# For Tauri
sudo dnf install webkit2gtk4.1-devel \
    openssl-devel \
    curl \
    wget \
    libappindicator-gtk3-devel \
    librsvg2-devel
```

### Python

```bash
sudo dnf install python pipx
pipx ensurepath
```

### Visual Studio Code

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc &&
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

dnf check-update &&
sudo dnf install code
```
