Wiki
----

# Enter the Void

This is a simple install guide for d77void;

After typing 
```
sudo d77void-installer
```

you will be presented with this menu.

![01](../01.png)

Hit return

![02](../01.png)

# Keyboard

Select your keyboard; in my case Portuguese.

![keyboard](../03.png)

# Network, Source and Mirror

If you connected to your local network before, in network you will be presented with this slide:

![04](../04.png)

just hit return and select your source choosing local to preserve live configs.

![05](../05.png)

and then select a mirror (try to catch the less distant to you; in my case Germany - Frankfurt)

# Hostname

Select a Hostname you like.

![06](../06.png)

# Locale

Choose your preferred locale; that will spawn the system language.

![07](../07.png)

# Timezone

Select your time zone

![08](../08.png)

In my case, Europe / Lisbon

![09](../09.png)

![10](../10.png)

# Root and User

Now set a password for root and then create a regular user;

![11](../11.png)

![12](../12.png)

set a password.

![13](../13.png)

and add the user to these 2 extra groups.

![14](../14.png)

![15](../15.png)

# Bootloader

Hit bootloader to choose disk to install GRUB

![16](../16.png)

![17](../17.png)

and choose graphical terminal

![18](../18.png)

# Partition

Choose a disk to partition

![19](../19.png)

In this case I will show you how to partition in a pc with Legacy bios. In case of EFI you should create a 300mb vfat partition.

I chose *cfdisk* to partition my disk this way (16Gb Swap and the remaining to / ).

Don't forget to make / partition bootable.

![20](../20.png)
 
Save the work done

![21](../21.png)

# Filesystem

Hit filesystem to be presented with something like this

![22](../22.png)

format partitions 

![23](../23.png)

![24](../24.png)

![25](../25.png)

And finally hit **Install**

Congratulations; you have successfully installed d77void!

