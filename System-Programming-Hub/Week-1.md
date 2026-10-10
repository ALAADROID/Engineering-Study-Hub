# Week 1: Linux System Programming Fundamentals

## 1. Introduction to APT (Advanced Package Tool)

* **What is APT?**

  * **English Definition:** APT is a package management system used in Debian-based operating systems (like Ubuntu). It is used in the Ubuntu terminal to install, remove, update, or upgrade programs.

  * **Arabic Translation:** **(Advanced Package Tool - أداة الحزم المتقدمة):** هو نظام إدارة حزم يُستخدم في أنظمة التشغيل المبنية على دبيان (مثل أبونتو)، ويُستخدَم في طرفية (Terminal) أبونتو لتثبيت، إزالة، تحديث، أو ترقية البرامج.

### Essential APT Commands

| command | stands for | purpose of usage | info |
| :--- | :--- | :--- | :--- |
| `sudo su` | SuperUser Do / Switch User | Grants administrator (root) rights to execute system-level commands | Requires root/sudo password |
| `apt-get update` | Advanced Package Tool - Get Update | Compares the local system's current software packages with the latest available versions in repositories | Refreshes local package index list, does not actually update apps yet |
| `apt-get upgrade` | Advanced Package Tool - Get Upgrade | Installs the newer versions of the packages currently installed on your system | Upgrades all upgradable packages to their latest versions |
| `sudo apt list installed` | Advanced Package Tool List Installed | Lists all the software packages currently installed on the system (*Yüklenmiş yazılımları listeler*) | Useful for auditing software on the machine |
| `sudo apt list upgradable` | Advanced Package Tool List Upgradable | Lists software packages that have newer versions available for upgrade (*Yükseltilebilir yazılımları listeler*) | Helps check what packages need updating before running an upgrade |

---

## 2. Disk Partitioning Types

Different operating systems use different file systems and support different partition limits:

* **Windows Partitions:**

  * **FAT16 (Windows 95):** Uses 16-bit addressing and supports disk partitions up to a maximum of 2 GB.

  * **FAT32:** Uses 32-bit addressing, supporting disk partitions up to 2 TB, but **cannot** store individual files larger than 4 GB.

  * **NTFS:** A modern Windows file system supporting advanced permissions, journaling, and large file/partition sizes.

* **Unix Partitions:**

  * **UFS (Unix File System):** The traditional file system used by BSD and older Unix systems.

* **Linux Partitions:**

  * **EXT2, EXT3:** Extended file systems designed specifically for Linux (EXT3 introduced journaling for reliability).

---

## 3. Linux Directory Organization & Concepts

* **The Root Directory (`/`):**

  * In Linux, everything starts from a single root directory denoted by a forward slash (`/`).

  * Unlike Windows, Linux does **not** use drive letters like `C:` or `D:`. Instead, it uses a single unified hierarchical tree structure.

* **Everything is a File:**

  * In Linux, everything is treated as a file (or directory). The traditional terms "file" and "folder" are conceptually replaced by files and directories.

* **Accessing the Root Directory:**

  * Run `cd /` in the terminal to navigate to the root directory.

---

## 4. Ubuntu Fundamental Directories (Linux Temel Dizinleri)

Below are the essential Linux directories and their specific purposes:

* **`/bin`**: Contains essential binary command executables required for system repair and user operations, such as `ls`, `ping`, and `pwd`.

* **`/root`**: The home directory for the root (administrator) user.

* **`/sbin`**: Contains system administration binaries and commands reserved exclusively for authorized/root users.

* **`/boot`**: Contains the kernel images and bootloader files required to start the system.

* **`/dev`**: Contains device files representing hardware components (e.g., hard drives, USBs).

* **`/media`**: Mount point for removable media devices such as CD-ROMs and USB flash drives.

* **`/mnt`**: Similar to `/media`, used temporarily by system administrators for tasks like data backup or system recovery.

* **`/etc`**: Contains system-wide configuration files for installed applications.

  * **`/etc/fstab`**: Contains static information about disk drives, file systems, and mount points.

* **`/srv`**: Contains site-specific data served by system services.

* **`/home`**: Contains individual home directories for regular system users.

* **`/proc`**: A virtual/pseudo-file system providing runtime information about running processes and hardware devices.

  * **`/proc/meminfo`**: Provides detailed real-time information regarding physical memory (RAM) usage.

* **`/run`**: Stores volatile runtime data about the system since the last boot.

* **`/sys`**: Contains files providing information about kernel, firmware, and device configurations in modern Linux distributions.

* **`/tmp`**: Used by applications to store temporary files and directories.

* **`/usr`**: Contains user-related programs, binaries, libraries, and documentation accessible to all system users.

* **`/var`**: Holds variable data files such as system logs, print queues, and application caches.

* **`/lost+found`**: Contains recovered files saved after an unclean system shutdown or disk check (`fsck`).
