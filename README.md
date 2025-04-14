# Backup-Script
# Git Repository Backup Script

This repository contains a simple Bash script (`backup_git_repos.sh`) designed to create a compressed archive (tar.gz) of your Git repositories located within a specified source directory. This script provides a basic but effective way to back up your important project code.

## Features

* **Automated Backup:** Creates a timestamped backup archive, making it easy to track different versions of your backups.
* **Configurable Source Directory:** The script is currently configured to back up the `/home/$USER/Documents` directory by default. You can easily modify this to point to the location where your Git repositories are stored.
* **Organized Backup Location:** Backups are stored in a dedicated directory (`/home/$USER/Backups`) within your home directory. This helps keep your backups organized.
* **Compressed Archive:** Uses the `tar` command with `gzip` compression (`-czf`) to create a space-efficient backup file.
* **Informative Output:** Provides a clear message upon successful completion of the backup, indicating the source directory and the location of the backup file.

## How to Use

1.  **Clone the Repository (Optional):**
    ```bash
    git clone <repository_url>
    cd <repository_name>
    ```
    (Replace `<repository_url>` with the actual URL of your Git repository and `<repository_name>` with the repository's name.)

2.  **Make the Script Executable:**
    ```bash
    chmod +x backup_git_repos.sh
    ```

3.  **Run the Script:**
    ```bash
    ./backup_git_repos.sh
    ```

    This will create a compressed backup archive of the contents of your source directory (default: `/home/$USER/Documents`) and store it in the backup directory (default: `/home/$USER/Backups`). You will see an output message similar to:

    ```
    ✅ Backup of /home/your_username/Documents completed at /home/your_username/Backups/backup-2025-04-14-13-10.tar.gz
    ```
    (The timestamp in the filename will reflect the time of the backup.)

## Configuration

You can easily customize the script by modifying the following variables at the beginning of the `backup_git_repos.sh` file:

* **`SOURCE_DIR`:** This variable defines the directory containing the Git repositories you want to back up. **Modify this to the actual path where your Git projects are located.** For example:
    ```bash
    SOURCE_DIR="/path/to/your/git/projects"
    ```

* **`BACKUP_DIR`:** This variable specifies the directory where the backup archives will be stored. The default is `/home/$USER/Backups`. You can change this if you prefer a different location:
    ```bash
    BACKUP_DIR="/mnt/external_drive/git_backups"
    ```

* **`LENGTH` and `PASSWORD`:** These variables are from the previous password generator script and are **not used** in this backup script. You can safely ignore or remove them.

The script automatically generates the `FILENAME` using the current date and time, ensuring unique filenames for each backup.

## Important Considerations

* **Backup Location:** Consider storing your backups on a separate physical drive or an external storage device to protect against local hardware failures.
* **Excluding Files:** This script backs up the entire `SOURCE_DIR`. If you have large, non-essential files or directories within your Git repositories that you don't want to back up, you might need to enhance the script using the `--exclude` option with the `tar` command.
* **Automation:** For regular backups, you can automate this script using cron jobs (on Linux/macOS) or Task Scheduler (on Windows).
* **Error Handling:** This is a basic script and lacks extensive error handling. For more robust backups, you might want to add checks for directory existence, permissions, and potential errors during the `tar` process.
* **Git Specifics:** This script performs a file-level backup. It does not specifically handle Git metadata or ensure repository consistency during the backup process if changes are being made. For a more Git-aware backup, consider using tools designed for backing up Git repositories (though this simple script provides a good starting point for basic file-level recovery).

## Contributing

Contributions to improve this backup script are welcome! Feel free to suggest enhancements or report any issues.

**Author:** [SOMESH SOM PATTNAIK]
**Date:** [14-04-2025]
