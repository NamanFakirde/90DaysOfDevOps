# Day 13 – Linux Volume Management (LVM)

## Task 1: Check Current Storage

Commands Run:
```bash
lsblk   # List all block devices attached to the server
pvs     # Shows the details of physical volumes
vgs     # Shows the details of volume groups
lvs     # Shows the details of logical volumes
df -h   # List the details of disk file system in humanly readable format
```
Observations:
1. Theres no existing physical volume,volume groups and logical volume.
2. Free disk `/dev/nvme1n1` is ready for Logical volume management

![current-volumes](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-13/Images/current-volumes.png)

---

## Task 2: Create Physical Volume

Command Run:
```bash
pvcreate /dev/nvme1n1   # To create a physical volume
pvs                     # List the physical volumes
```
- Intialized `nvme1n1` as physical volume using `pvcreate` command.
- which can be displayed using `pvs` command.

![physical-volume](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-13/Images/physical-volume.png)

---

## Task 3: Create Volume Group

```bash
vgcreate devops-vg /dev/nvme1n1     # To create a volume group
vgs                                 # To display the volume groups
```
- By using `vgcreate`, created a volume group of `10G` free space
- This can be ddisplayed using `vgs` command.

![volume-group](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-13/Images/volume-group.png)

---

## Task 4: Create Logical Volume
```bash
lvcreate -L 500M -n app-data devops-vg      # To create a logical volume of 500M from devops-vg
lvs                                         # Displays the logical volumes in a system
```
- Created a logical volume `app-data` of `500M` in `devops-vg` volume group using `lvcreate`.

![logical-volumes](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-13/Images/logical-volume.png)

---

## Task 5: Format and Mount
```bash
mkfs.ext4 /dev/devops-vg/app-data               # making a file system of type ext4
mkdir -p /mnt/app-data                          # creating a directory
mount /dev/devops-vg/app-data /mnt/app-data     # mounting a logical volume to a directory 
df -h /mnt/app-data                             # listing details of specified directory
```
- Logical volume formated as ext4 using `mkfs`.
- mounted at `/mnt/app-data`.
- verified using `df -h`, i.e its visible now.

![mounting](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-13/Images/mounting.png)

---

## Task 6: Extend the Volume
```bash
lvextend -L +200M /dev/devops-vg/app-data       # Extending the logical volume space
resize2fs /dev/devops-vg/app-data               # tells the filesystem to utilize the newly added free space. 
df -h /mnt/app-data                             # list details of specified directory
```
- logical volume `app-data` extended by `200M`, therefore total size becomes `700M`.
- filesystem resized to use new extended space.
- showing `637M` as total size, `1%` used, etc.
- verified using `df -h`

![extending-volume](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-13/Images/extending-volume.png)
