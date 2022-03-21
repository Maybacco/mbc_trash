fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'Maybacco#3294'
name 'mbc_trash'
description 'A script to have some public accessible trash barrels out there.'

version '0.1.0'


dependencies {
    'gridsystem',
}

client_scripts {
    'client/**/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/**/*.lua'
}

shared_scripts {
    "@libs/lib/utils.lua",
    'shared/Localize.lua',
    'shared/**/*.lua'
}