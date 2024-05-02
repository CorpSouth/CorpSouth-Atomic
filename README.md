# CorpSouth-Atomic

Made possible by Blue-Build, the Universal Blue project, Docker and Podman alike.

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository.

#### DISCLAIMER

Changes to and continued maintainence of this repository is on the behalf of its owner and organization.

Use at your own risk. In fact, I recommend you go elsewhere as this repo is constantly changing anyways.

# ABOUT

_Inspiration: [OpenSUSE Aeon(Gnome)](https://en.opensuse.org/Portal:Aeon) and [OpenSUSE Kalpa(KDE Plasma)](https://en.opensuse.org/Portal:Kalpa)_

This customization is focused on keeping the desktop as out of the way as possible while both adding and retaining useful functionality.

Useful pertaining to me and me first and foremost, but also appeals to lazy workflow where tinkering isn't high on the list of priorities.

Packages have either been removed to trim things down and reduce redundancy, or to be replaced with alternatives, such as flatpaks.

Flathub is enabled user-wide. No system-wide provided. Very few flatpaks are installed by default, includes a browser (LibreWolf).

Systemd units such as `podman.service` and `podman.socket` are enabled user-wide. No system-wide provided.

Nerd Fonts for special symbols.

Distrobox configurations for general use and libvirt through rootful container are included.

## Silverblue (Gnome)

Desktop:
- Gnome-tour removed
- Gnome Console (KGX) replaces gnome-terminal
- Nautilus-open-any-terminal to allow any terminal I choose to be compatible with Nautilus
- Classic session is removed
  - Default Extensions are removed
    - Appindicator, GSConnect, and User Themes replace the default extensions
    - GSConnect integration with the Nautilus file manager is included
      - Nautilus-python is a hard dependency
- Zenity for additional password prompt support
- Adw-gtk3 for an improved uniform look
- Morewaita-icon-theme to enhance the default Adwaita icon set
- SauceCodePro nerd font

Flatpaks:
- Adw-gtk3
- Adw-gtk3-dark
- Extension Manager
- Gnome Calculator
- Gnome Text Editor
- LibreWolf

## Kinoite (KDE Plasma)

Desktop:
- Plasma-welcome removed
- Various desktop utilities replaced with flatpaks
- KDialog for additional password prompt support
- Hack nerd font

Flatpaks:
- Ark
- Filelight
- Kcalc
- Kwalletmanager5
- Kwrite
- LibreWolf

## What about Virtualization?

[Just run it through a rootful Distrobox container.](https://github.com/89luca89/distrobox/blob/main/docs/posts/run_libvirt_in_distrobox.md)

There's no reason to blow up your image size by adding libvirt and its associated packages to your base image.

Fedora tends to get sketchy when virtualization packages are updated, so don't be eager to layer them.

# Rebasing to this image

### Silverblue (Main, Gnome)

Unsigned:
`rpm-ostree rebase ostree-unverified-registry:ghcr.io/corpsouth/corpsouth-silverblue-main:latest`

Signed:
`rpm-ostree rebase ostree-image-signed:docker://ghcr.io/corpsouth/corpsouth-silverblue-main:latest`

### Kinoite (Main, KDE Plasma)

Unsigned:
`rpm-ostree rebase ostree-unverified-registry:ghcr.io/corpsouth/corpsouth-kinoite-main:latest`

Signed:
`rpm-ostree rebase ostree-image-signed:docker://ghcr.io/corpsouth/corpsouth-kinoite-main:latest`
