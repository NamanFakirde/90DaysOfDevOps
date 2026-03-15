# Day 13 – Linux Volume Management (LVM)

## Task 1: Check Current Storage

Command run:
```bash
lsblk    # list all block devices
pvs      # shows all physical volumes
lvs      # shows all logical volumes
vgs      # shows all volume groups 
df -h    # shows available and used disk space in a filesystem
```

Observation:
|     Device     |  Size  |  Mountpoints  | Note  |
|----------------|--------|---------------|-------|
|  /dev/nvme0n1  |  20GB  |  /            | Root volume |
|  /dev/nvme1n1  |  10GB  |  /mnt/data    | external volume/block |

- theres no exitsting physical volume, logical volume and volumne groups
- free disk  `/dev/nvme1n1` is available for Logical volume management

![task1](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-13/Images/task1.png)

## Task 2: Create Physical Volume
Command:
```bash
pvcreate /dev/nvme1n1   # to create a physical volume of nvme1n1
pvs                     # to list physical volumes 
```

- By using `pvcreate` we initialized `nvme1n1` volume as physical volume.
- which can be displayed using `pvs`.

![task2](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-13/Images/task2.png)

## Task 3: Create Volume Group
Command:
```bash
vgcreates devops-vg /dev/nvme1n1  # to create a volume group 
vgs                               # list down the volume group
```
- By using `vgcreate` we created a volume group `devops-vg` with 10G free space.

![task3](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-13/Images/task3.png)

## Task 4: Create Logical Volume
Command:
```bash
lvcreate -L 500M -n app-data devops-vg  # creates a logical volume of 500M from devops-vg 
lvs                                     # list down the logical volumes
```
- logical volume of `500M` is created in a volume group `devops-vg`.

![task4](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-13/Images/task4.png)


## Task 5: Format and Mount
Command:
```bash
mkfs.ext4 /dev/devops-vg/app-data              # making a filesystem of ext4 
mkdir -p /mnt/app-data                         # creating a directory
mount /dev/devops-vg/app-data /mnt/app-data    # mounting logical volume to the directory
df -h /mnt/app-data                            # shows available and used disk space in a filesystem
```
- Logical volume formated as ext4 using `mkfs`.
- mounted at `/mnt/app-data`.
- verified using `df -h`, i.e its visible now.

![task5](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-13/Images/task5.png)

## Task 6: Extend the Volume
```bash
lvextend -L +200M /dev/devops-vg/app-data  # extends the filesystem by 200Mbi
resize2fs /dev/devops-vg/app-data          # tells the filesystem to utilize the newly added free space.
df -h /mnt/app-data                        # shows details of /mnt/app-data 
```
- logical volume `app-data` extended by `200M`, therefore total size becomes `700M`.
- filesystem resized to use new extended space.
- verified using `df -h`
- showing `637M` as total size, `1%` used, etc.
  
![task6](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-13/Images/task6.png)
 
