# Pre-commit image

Docker image for running GLS pre-commit hooks. You can just run "pre-commit.sh", symlink or alias it to "pre-commit" in your system.

### Installation

Clone this repository:

```sh

git clone git@github.com:jramcast/pre-commit-image.git
```

Go to `/usr/bin` or any other folder in your PATH and create a symlink to `pre-commit.sh`.
Change REPO_CLONE_PATH with the actual directory where you cloned the repo:

```sh
ln -s REPO_CLONE_PATH/pre-commit.sh pre-commit-docker
````

If your SSH configuration or your pre-commit cache is not in the default locations, update the appropriate variables in the "pre-commit.sh" script file as needed.

To run the script, go to any course root directory and execute `pre-commit-docker`:

```
cd $COURSE_DIR
pre-commit-docker
```
