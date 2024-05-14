# CorpSouth-Atomic

Made possible by Blue-Build, the Universal Blue project, Docker and Podman alike.

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository.

#### DISCLAIMER

Changes to and continued maintainence of this repository is on the behalf of its owner and organization.

Use at your own risk. In fact, I recommend you go elsewhere as this repo is constantly changing anyways.

## ABOUT

 > Inspiration: [OpenSUSE Aeon(Gnome)](https://en.opensuse.org/Portal:Aeon)

These images are focused on keeping the desktop as out of the way as possible while both adding and retaining useful functionality.

"Useful" pertaining to me first and foremost, providing a lazy workflow where tinkering isn't high on the list of priorities.

Packages have either been removed to trim things down and reduce redundancy, or to be replaced with alternatives (such as flatpaks). Less is more.

## Rebasing

#### Silverblue (Main)

Unsigned:

```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/corpsouth/corpsouth-silverblue-main:latest
```

Signed:

```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/corpsouth/corpsouth-silverblue-main:latest
```

#### Silverblue (Main, Grand Touring Series)

Unsigned:

```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/corpsouth/corpsouth-silverblue-main:latest
```

Signed:

```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/corpsouth/corpsouth-silverblue-main:latest
```
