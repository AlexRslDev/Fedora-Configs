# Cybersecurity

## Nmap

```bash
sudo dnf install nmap
```

## Wireshark

```bash
sudo dnf install wireshark
sudo usermod -aG wireshark $USER
# Restart
```

**Iniciar el servicio (Opcional)**

En algunas configuraciones de Fedora, es posible que necesites ajustar los permisos de las capacidades de red. Si al abrirlo no ves ninguna interfaz de red (como eth0 o wlan0), ejecuta:

```bash
sudo setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
```

**Verificación**

Para comprobar que todo está en orden:

1. Busca Wireshark en tu menú de aplicaciones y ábrelo.
2. Deberías ver una lista de interfaces con una "línea de pulso" (actividad) a la derecha.
3. Haz doble clic en una (por ejemplo, tu Wi-Fi) y empezarás a ver los paquetes entrar en tiempo real.
