function cantx --description "Transfer all JCAN network files to remote dev machine"
    set -l num $argv[1]
    rsync -azvhSR --exclude-from /Users/aguden/tesla/firmware/rsync_exclude_list.txt \
    /Users/aguden/tesla/firmware/./can-requirements/data/ \
    dev$num:/nfs_home/aguden/firmware/
end

