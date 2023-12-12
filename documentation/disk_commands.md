### Tracking down disk space issues

```sh
sudo bash -c 'for f in `ls`; do du -sh $f; done'
```

- The above command is very helpful for showing what in the current directory is taking up the most disk space.
- If you `cd` into root (`/`) and run this you can follow the paths by repeatedly running this command to see which directory is using taking up the most disk space.
- This was very useful when tracking down what was increasing the disk space on some of our ec2 instances - turns out some daily logs were being written at a FINE or TRACE
- log leve. This was causing the log files to be quite large and the above script made this easy to track down (`/mnt/data/[INDEX}/logs]`)
