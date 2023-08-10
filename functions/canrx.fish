function canrx --description "Transfer CAN network files to local drive"
    set -l num $argv[1]
    rsync -azvhSR --ignore-missing-args --exclude-from="/Users/aguden/tesla/firmware/build_exclude_list.txt" \
    dev$num:/nfs_home/aguden/firmware/./generated-dbc \
    dev$num:/nfs_home/aguden/firmware/./can-requirements/data \
    /Users/aguden/tesla/firmware/
end
