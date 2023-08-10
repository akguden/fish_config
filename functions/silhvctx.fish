function silhvctx --description "Transfer HVBMS SIL files to remote dev machine"
    set -l num $argv[1]
    rsync -azvhSR --exclude-from /Users/aguden/tesla/firmware/rsync_exclude_list.txt \
    /Users/aguden/tesla/firmware/./components/hvSystem/validation \
    /Users/aguden/tesla/firmware/./components/hvSystem/parameters \
    /Users/aguden/tesla/firmware/./components/hvSystem/platform \
    /Users/aguden/tesla/firmware/./components/hvSystem/config \
    /Users/aguden/tesla/firmware/./can-requirements/data/product/Model3 \
    /Users/aguden/tesla/firmware/./can-requirements/data/common \
    /Users/aguden/tesla/firmware/./libs/simulation \
    /Users/aguden/tesla/firmware/./site_scons/sil_framework \
    /Users/aguden/tesla/firmware/./SystemBucks \
    dev$num:/nfs_home/aguden/firmware/
end


