# VSCodium distrobox

This container image has [vscodium](https://vscodium.com) preinstalled on it with an arch base

## Installation

### Distrobox

```bash
distrobox create -i ghcr.io/dnkmmr69420/vscodium-arch:latest -n codium
```

To enter type

```bash
distrobox enter codium
```

### Toolbx

```bash
toolbox create -i ghcr.io/dnkmmr69420/vscodium-arch:latest -c codium
```

To enter type

```bash
toolbox enter codium
```

## launching vscodium

To launch vscodium, simply type `codium` in the container

```bash
$ codium
```
