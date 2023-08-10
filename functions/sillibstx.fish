function sillibstx --description "Transfer SIL libraries to remote dev machine"
    set -l num $argv[1]
    rsync -azvhSR --exclude-from /Users/aguden/tesla/firmware/rsync_exclude_list.txt \
    /Users/aguden/tesla/firmware/./libs/simulation \
    /Users/aguden/tesla/firmware/./site_scons/sil_framework \
    /Users/aguden/tesla/firmware/./SystemBucks \
    dev$num:/nfs_home/aguden/firmware/
end


