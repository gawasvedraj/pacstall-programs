name="kotatogram-desktop-bin"
pkgname="kotatogram-desktop"
gives="${pkgname}"
pkgver="1.4.9"
homepage="https://github.com/kotatogram/kotatogram-desktop"
pkgdesc="Experimental Telegram Desktop fork."
url="${homepage}/releases/download/k${pkgver}/${pkgver}-linux.tar.xz"
hash="9da398c95568a3734ce72d3d83b51fb94cd452df1bbe22f6003ebb1e1bcdd94c"
arch=('amd64')
repology=("project: kotatogram-desktop")
maintainer="Vedraj Gawas <gawasvedraj@gmail.com>"

package() 
  {
  # Icon
  wget -q "${homepage}/raw/dev/Telegram/Resources/art/icon512.png"
  sudo install -Dm644 icon512.png "${pkgdir}/usr/share/pixmaps/kotatogram.png"

  # Binary
  sudo install -Dm755 "Kotatogram" "${pkgdir}/usr/bin/${gives}"
}
