# Occultist

<p align="center">
  <img src="https://occultist.io/occultist.svg" alt="Logo" height="300px"/>
</p>

<p align="center">
    <strong>Say goodbye to dependency hell!</strong>
</p>

Occultist dependency manager eliminates the dependency conflicts by isolating the dependencies of
each Chaos spells within its own `spells/` directory.

[Git](https://git-scm.com/), [Bash](https://www.gnu.org/software/bash/) and [jq](https://stedolan.github.io/jq/)
required to be installed on your system to be able to use the `occultist` commands.

On Linux and macOS to install `jq` run: `make requirements`

On Windows, use [Git Bash](https://gitforwindows.org/) and install `jq` with [Chocolatey](https://chocolatey.org/): `choco install jq`

Install **`occultist`** with:

```bash
sudo curl -o /usr/local/bin/occultist \
-L https://git.io/Jfv1u && \
sudo chmod +x /usr/local/bin/occultist
```

or clone this repository and run: `make install`

&nbsp;

**Install** a spell:

```bash
occultist install math
```

Install a **specific version** of the spell:

```bash
occultist install math 1.0.1
```

Install a spell with **semantic versioning**:

```bash
occultist install math 1.x.x
```

Install a **specific branch** of the spell:

```bash
occultist install math master
```

&nbsp;

Install [**the Chaos language**](https://chaos-lang.org/):

```bash
sudo occultist install chaos
```

&nbsp;

**Upgrade** a spell:

```bash
occultist upgrade math
```

**Remove** a spell:

```bash
occultist remove math
```

&nbsp;

**Initialize** a new spell repository:

```bash
occultist init
```

**Edit** the spell repository:

```bash
occultist edit
```

**Register** a new spell:

```bash
occultist register
```
