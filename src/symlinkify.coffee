#!/usr/bin/env coffee

yaml = require "libyaml"
exec = require("child_process").exec
path = require "path"
fs   = require "fs"

dir  = path.dirname fs.realpathSync __filename

conffile = if process.argv[2]? then process.argv[2] else path.join dir, "../links.yaml"


LINKS = yaml.readFileSync conffile

if LINKS.length? and LINKS.length
    console.log "\nLoaded link data from #{conffile}"
    console.log "Creating links:\n"

    for srcdir, linkdirs of LINKS[0]
        for linkdir, links of linkdirs
            for src, link of links
                l = "#{linkdir}/#{link}"
                s = "#{srcdir}/#{src}"
                sp = Array(40 - l.length).join " "
                console.log "#{l}#{sp}--> #{s}"
                exec "ln -s #{s} #{l}"
    console.log ""
