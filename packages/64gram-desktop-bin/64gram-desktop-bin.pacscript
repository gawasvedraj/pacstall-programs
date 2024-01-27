name="64gram-desktop-bin"
pkgname="64gram-desktop"
gives="${pkgname}"
pkgver="1.1.11"
homepage="https://github.com/TDesktop-x64/tdesktop"
pkgdesc="64Gram (unofficial Telegram Desktop)"
url="${homepage}/releases/download/v${pkgver}/64Gram_${pkgver}_linux.zip"
hash="e28cc4e5e087d97a364f98e6e5b547fecf8951e48919600bc554dbf5851655b0"
arch=('amd64')
repology=("project: 64gram-desktop")
maintainer="Vedraj Gawas <gawasvedraj@gmail.com>"

package() 
  {
  # Icon
  wget -q "https://github.com/TDesktop-x64/tdesktop/raw/dev/Telegram/Resources/art/icon512.png"
  sudo install -Dm644 icon512.png "${pkgdir}/usr/share/pixmaps/64gram.png"

  # Launcher
  wget -q "https://aur.archlinux.org/cgit/aur.git/plain/io.github.tdesktop_x64.TDesktop.desktop?h=64gram-desktop-bin" -O ${pkgname}.desktop
  sudo install -Dm644 ${pkgname}.desktop -t "${pkgdir}/usr/share/applications"

  # Binary
  sudo install -Dm755 "Telegram" "${pkgdir}/usr/bin/${gives}"
}
