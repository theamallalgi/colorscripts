![Intro](https://github.com/theamallalgi/colorscripts/blob/main/dependencies/intro.png?raw=true)
# Colorscripts 📺
a handy cli tool that will help you show off your terminal/shell with beautiful ansi art that matches your current theme!

> [!NOTE]
> This project was inspired by [shell-colorscripts](https://gitlab.com/dwt1/shell-color-scripts), by [Derek Taylor](https://gitlab.com/dwt1) (on gitlab)

## Gallery

![example-shot-1](https://github.com/theamallalgi/colorscripts/blob/main/dependencies/shot-1.jpg?raw=true)

refer to my [dotfiles](https://github.com/theamallalgi/dotfiles) for the setup.
<details>
    <summary>here's a bunch of other example shots of the colorscripts in action.</summary>
</br>
    
![example-shot-2](https://github.com/theamallalgi/colorscripts/blob/main/dependencies/shot-2.jpg?raw=true)

![example-shot-3](https://github.com/theamallalgi/colorscripts/blob/main/dependencies/shot-3.jpg?raw=true)
</details>

## Usage

default usage

```bash
colorscript [OPTION] [SCRIPT NAME or INDEX]
```

here's a list of available commands

| **command**                   | **description**                                                                                  |
|-------------------------------|--------------------------------------------------------------------------------------------------|
| `-h`, `--help`, `help`        | display the help message with a summary of all available commands.                              |
| `-l`, `--list`, `list`        | list all installed color scripts with their respective index numbers and names.                 |
| `-r`, `--random`, `random`    | run a random color script.                                                                      |
| `-e`, `--exec`, `exec`        | run a specified color script by its name or index.                                              |
| `-b`, `--blacklist`, `blacklist` | blacklist a specific color script by its name or index, moving it to the blacklisted directory.    |
| `-u`, `--unblacklist`, `unblacklist` | unblacklist a previously blacklisted script, moving it back to the main directory.              |
| `-a`, `--all`, `all`          | display the output of all color scripts, showing their names alongside their respective artwork. |

## Installation

- currently there are 2 ways to install the cli
- scoop (currently not working, as we are waiting for the package approval from scoop)
- build it from source (with make)

### 1. Use Scoop

```bash
scoop install colorscript # install and setup colorscripts
```

### 2. Use `install.sh` script

clone the repo, and proceed to the directory
```bash
git clone https://github.com/theamallalgi/colorscripts.git # clone git repo
cd colorscripts # change directory to colorscripts/
```

run the install script with sudo privileges
```sh
sudo ./install.sh # run install script
```

run the cli for the first time
```sh
colorscript --random # displays a random colorscript
```

### 3. Build from Source

clone the repo, and proceed to the directory
```bash
git clone https://github.com/theamallalgi/colorscripts.git # clone git repo
cd colorscripts # change directory to colorscripts/
```

make sure that `make` is installed on your os
```sh
make install # build and install colorscripts
```

run the cli for the first time
```sh
colorscript --random # displays a random colorscript
```

## Contributions

we welcome contributions from the community! Here are some guidelines to follow when contributing to the `colorscripts` project:

**Commit Messages:**

* We follow the conventional commit message format. This ensures consistency and helps track changes effectively.
* Use the prefix `feat(ansi):` for commits that add new ANSI color art scripts to the repository.

**Adding New Art:**

* Create your art using ANSI color escape sequences.
* Ensure the art utilizes only the terminal's 8-color palette for broad compatibility.
* Save your art script as a simple filename (e.g., `spiral`, `firework`) in the `colorscripts` folder, avoiding extensions like `.sh`.
* Use hyphens (-) for separators in filenames if needed.
* When adding a new art script, commit your changes with the following format:
```sh
feat(ansi): add art-name colorscript
```

**Example Commit Message:**

```sh
feat(ansi): add fire-wave colorscript
```

This message indicates that you've added a new colorscript named `fire-wave` that utilizes ANSI color codes.

**Additional Notes:**

* Feel free to open an issue or pull request to discuss your art contribution before starting.
* We appreciate any suggestions for improvement or bug fixes.
* Refer to the existing code for reference on how to structure your new art script.

By following these guidelines, you can help us make `colorscripts` even more vibrant and visually engaging!
