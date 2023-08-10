function ctbuildrx --description "Transfer built HVBATT directories to local drive -- THIS WILL NOT WORK, structure has changed!"
    set -l num $argv[1]
    rsync -azvhSR --ignore-missing-args --exclude-from="/Users/aguden/tesla/firmware/build_exclude_list.txt" \
    dev$num:/nfs_home/aguden/firmware/./generated-dbc \
    dev$num:/nfs_home/aguden/firmware/./components/hvSystem/hvbatt/built \
    dev$num:/nfs_home/aguden/firmware/./components/hvSystem/shared/built \
    dev$num:/nfs_home/aguden/firmware/./SystemBucks/Platform/Cybertruck/HvbattBuck/built \
    dev$num:/nfs_home/aguden/firmware/./SystemBucks/Platform/Cybertruck/HvbattBuck/test-results \
    /Users/aguden/tesla/firmware/
end
