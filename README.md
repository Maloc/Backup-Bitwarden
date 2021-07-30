# Backup-Bitwarden

## Architecture

- [script](script) : folder containing scripts to be called in cron jobs

  - [backup.sh](./script/backup.sh) : script generating zip file of Bitwarden data base

  - [ftp.sh](./script/ftp.sh) : script sending my zip file to another location

  - [remove.sh](./script/remove.sh) : script removing zip files older than 7 days

- [backup](backup) : folder containing zip files of Bitwarden data base

## Installation

```bash
    git clone https://github.com/Maloc/Backup-Bitwarden.git
```

Add your credentials & remote location in [ftp.sh](./script/ftp.sh) & [remove.sh](./script/remove.sh):

```bash
    IP_address=
    port=
    username=
    password=
    zip=
```

Maybe you will need to update some paths in scripts...

## CRON tasks

Call your script using crontask:

```bash
    sudo contrab -e
```
