function buildrx --description "Transfer built HVBMS directories to local drive"
    set -l num $argv[1]
    rsync -azvhSR --ignore-missing-args --exclude-from="/Users/aguden/tesla/firmware/build_exclude_list.txt" \
    dev$num:/nfs_home/aguden/firmware/./generated-dbc \
    dev$num:/nfs_home/aguden/firmware/./components/hvSystem/bms/built \
    dev$num:/nfs_home/aguden/firmware/./components/hvSystem/shared/built \
    dev$num:/nfs_home/aguden/firmware/./components/hvSystem/hvp/built \
    /Users/aguden/tesla/firmware/
end
