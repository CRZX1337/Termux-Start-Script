# Termux Auto Setup Script

**One-Click Installation**

Copy-paste this entire command into Termux:
content_copy
download
Use code with caution.

```
apt update && apt upgrade -y && apt install git -y && git clone https://github.com/CRZX1337/Termux-Start-Script.git && cd Termux-Start-Script/ && chmod +x start.sh && ./start.sh
```
**Preview:**

![Termux Setup Script Preview](https://github.com/CRZX1337/Termux-Start-Script/blob/main/preview.png)

**Automatically Performs:**

*   System updates & upgrades
*   Essential package installations
*   MOTD removal
*   T-Header setup
*   Neofetch auto-launch

⚠️ **WARNING:** Executes without confirmation. Review the script [here](https://github.com/CRZX1337/Termux-Start-Script) first.
*Use at your own risk. Requires internet connection.*

**Features:**

*   **Automated Setup:** Streamlines initial Termux configuration with a single command.
*   **Essential Tools:** Installs commonly used packages like `git`, `curl`, `wget`, `zip`, `unzip`, `python`, `python-pip`, and `neofetch`.
*   **Custom Terminal Header:** Integrates [T-Header](https://github.com/CRZX1337/T-Header) for a personalized terminal banner.
*   **Clean Interface:** Removes the default MOTD for a cleaner startup.
*   **System Information:** Automatically launches `neofetch` on each Termux startup.
*   **Customizable:**  Edit `start.sh` to modify installed packages or setup steps to fit your needs.

**Credits:**

This script utilizes and is inspired by the [T-Header](https://github.com/remo7777/T-Header/) project by [Remo7777](https://github.com/remo7777).  Thank you for providing the foundation for the terminal header functionality.

