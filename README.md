# CorpSouth-Atomic

Made possible by Blue-Build, the Universal Blue project, Docker and Podman alike.

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository.

#### DISCLAIMER

Changes to and continued maintainence of this repository is on the behalf of its owner and organization.

Use at your own risk. In fact, I recommend you go elsewhere as this repo is constantly changing anyways.

## ABOUT

_Inspiration: [OpenSUSE Aeon(Gnome)](https://en.opensuse.org/Portal:Aeon) and [OpenSUSE Kalpa(KDE Plasma)](https://en.opensuse.org/Portal:Kalpa)_

These images are focused on keeping the desktop as out of the way as possible while both adding and retaining useful functionality.

"Useful" pertaining to me first and foremost, appealing to lazy workflow where tinkering isn't high on the list of priorities.

Packages have either been removed to trim things down and reduce redundancy, or to be replaced with alternatives, such as flatpaks. Less is more.

Focus on keeping as many programs, services, and utilities on the user level rather than system-wide.

Nerd Fonts for special symbols.

Distrobox configurations for general use and virtual machines (OpenSUSE Tumbleweed) are included.

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
- Keybindings, User Interface, and Window Management are tweaked for comfort
- Gnome Software is adjusted for additional "safety padding"

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

## Rebasing

#### Silverblue (Main, Gnome)

Unsigned:

```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/corpsouth/corpsouth-silverblue-main:latest
```

Signed:

```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/corpsouth/corpsouth-silverblue-main:latest
```

#### Kinoite (Main, KDE Plasma)

Unsigned:

```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/corpsouth/corpsouth-kinoite-main:latest
```

Signed:

```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/corpsouth/corpsouth-kinoite-main:latest
```

#### Silverblue (Main, Grand Touring Series, Gnome)

Unsigned:

```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/corpsouth/corpsouth-silverblue-main:latest
```

Signed:

```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/corpsouth/corpsouth-silverblue-main:latest
```

#### Kinoite (Main, Grand Touring Series, KDE Plasma)

Unsigned:

```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/corpsouth/corpsouth-kinoite-main-gts:latest`
```

Signed:

```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/corpsouth/corpsouth-kinoite-main-gts:latest
```

## Installing Via Offline ISO

The recommended "default" method of generating an offline ISO is to use either `Docker` or `Podman`

**Docker:**

```
mkdir ./iso-output
sudo docker run --rm --privileged --volume ./iso-output:/build-container-installer/build --pull=always \
ghcr.io/jasonn3/build-container-installer:latest \
IMAGE_REPO=ghcr.io/octocat \
IMAGE_NAME=corpsouth-silverblue-main \
IMAGE_TAG=latest \
VARIANT=Silverblue # should match the variant your image is based on
```

**Podman:**

```
mkdir ./iso-output
sudo podman run --rm --privileged --volume ./iso-output:/build-container-installer/build --security-opt label=disable --pull=newer \
ghcr.io/jasonn3/build-container-installer:latest \
IMAGE_REPO=ghcr.io/octocat \
IMAGE_NAME=corpsouth-silverblue-main \
IMAGE_TAG=latest \
VARIANT=Silverblue # should match the variant your image is based on
```

Adjust the `IMAGE_NAME` and `IMAGE_TAG` to specification.

Save them as scripts to build an offline ISO, which will save you from some headaches if you're on a slow or metered connection.

## Scope

I am content with sticking to GNOME and KDE Plasma, as stated in the sources of inspiration, I just want
modern desktops with very little "extra" added or included and with fewer areas of manual intervention.

