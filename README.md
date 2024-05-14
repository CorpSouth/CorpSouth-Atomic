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

## What about Virtualization?

[Just run it through a rootful Distrobox container.](https://github.com/89luca89/distrobox/blob/main/docs/posts/run_libvirt_in_distrobox.md)

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

## Installing Via Offline ISO

The recommended "default" method of generating an offline ISO is to use either `Docker` or `Podman`

**Docker:**

```
mkdir ./iso-output
sudo docker run --rm --privileged --volume ./iso-output:/build-container-installer/build --pull=always \
ghcr.io/jasonn3/build-container-installer:latest \
IMAGE_REPO=ghcr.io/corpsouth \
IMAGE_NAME=corpsouth-silverblue-main \
IMAGE_TAG=latest \
VARIANT=Silverblue # should match the variant your image is based on
```

**Podman:**

```
mkdir ./iso-output
sudo podman run --rm --privileged --volume ./iso-output:/build-container-installer/build --security-opt label=disable --pull=newer \
ghcr.io/jasonn3/build-container-installer:latest \
IMAGE_REPO=ghcr.io/corpsouth \
IMAGE_NAME=corpsouth-silverblue-main \
IMAGE_TAG=latest \
VARIANT=Silverblue # should match the variant your image is based on
```

Adjust the `IMAGE_NAME` and `IMAGE_TAG` to specification.

Save them as scripts to build an offline ISO, which will save you from some headaches if you're on a slow or metered connection.

## Scope

I am content with sticking to GNOME, as stated in the sources of inspiration, I just want 
a modern desktop with very little "extra" added or included and with fewer areas of manual intervention.
