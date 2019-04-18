if did_filetype()
    finish
endif
if getline(1) =~# '^#!.*/bin/(ba)*sh'
    setfiletype sh
endif
