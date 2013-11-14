yaml = require "libyaml"
exec = require("child_process").exec

confdir = process.argv[2]

LINKS = yaml.readFileSync "links.yaml"

console.log "Creating links"

for srcdir, linkdirs of LINKS[0]
    for linkdir, links of linkdirs
        for src, link of links
            l = "#{linkdir}/#{link}"
            s = "#{srcdir}/#{src}"
            console.log "#{l} --> #{s}"
            exec "ln -s #{s} #{l}"