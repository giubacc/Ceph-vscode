# Ceph development with Visual Studio Code

**Requirements**

- A Linux host
- [Docker](https://docs.docker.com/)
- [Visual Studio Code](https://code.visualstudio.com/)

Users should ensure to have the following programs installed on their system:  

- `bash`, `id`, `getent`

**Steps**

1. Clone `ceph-vscode` project to a local folder
2. Clone `ceph` project to a local folder
3. Copy `ceph-vscode`'s `.devcontainer` and `.vscode` directories into `ceph` project folder
4. VSCode -> open `ceph` project folder -> `><` (left bottom button) -> Open Folder in Container...

**Functionalities**

Users can build, develop and test Ceph inside a docker container without being forced to install or configure anything on their own machine.  
Visual Studio Code can take care of automatically download and build a developer docker image.  
Host's user will match `UID` and `GID` with the user inside the container.  
This ensures that every modification from inside the container will be completely transparent from the host's perspective.  
Moreover, host's user `~.ssh` directory will be mounted on the container's user `~.ssh` directory. This is especially convenient if an ssh authentication type is configured to work with GitHub.  
From inside the container, users will be able to access the host's docker engine as if they were just in a regular host's shell.  