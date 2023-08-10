function hvsystx --description "Transfer all HVC FW to remote dev machine"
    set -l num $argv[1]
    rsync -azvhSR --exclude-from /Users/aguden/tesla/firmware/rsync_exclude_list.txt \
    /Users/aguden/tesla/firmware/./components/hvSystem/hvbatt \
    /Users/aguden/tesla/firmware/./components/hvSystem/bmsSemi \
    /Users/aguden/tesla/firmware/./components/hvSystem/bms \
    /Users/aguden/tesla/firmware/./components/hvSystem/hvp \
    /Users/aguden/tesla/firmware/./components/hvSystem/duck \
    /Users/aguden/tesla/firmware/./components/hvSystem/tlvbms \
    /Users/aguden/tesla/firmware/./components/hvSystem/shared \
    /Users/aguden/tesla/firmware/./components/hvSystem/parameters \
    /Users/aguden/tesla/firmware/./components/hvSystem/platform \
    /Users/aguden/tesla/firmware/./components/hvSystem/config \
    /Users/aguden/tesla/firmware/./can-requirements/data/product/Model3 \
    /Users/aguden/tesla/firmware/./can-requirements/data/product/Cybertruck \
    /Users/aguden/tesla/firmware/./can-requirements/data/common \
    /Users/aguden/tesla/firmware/./platforms/common/ODX/ \
    dev$num:/nfs_home/aguden/firmware/
end

