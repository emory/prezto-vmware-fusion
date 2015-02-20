#
# Defines VMware Fusion aliases et al
#
# Authors:
#   Emory Lundberg <emory@hellyeah.com>
#

# Return if requirements are not found.
if [[ -d "/Applications/VMware\ Fusion.app/Contents/Library" ]]; then
  return 1
fi

# Append VMware Fusion's helper bin directory.
path+=(/Applications/VMware\ Fusion.app/Contents/Library)

# In an attempt to be even more helpful, where are my vms probably living?

vmpath=`grep "prefvmx.defaultVMPath" ~/Library/Preferences/VMware\ Fusion/preferences | awk '{gsub(/"/, "", $3)} {print $3}'`

#
# Aliases
#

alias vm-start="vmrun start $1 nogui" 	# 'nogui' via the CLI, imo
alias vm-stop='vmrun stop $1'
alias vm-list-running='vmrun list'
alias vm-suspend='vmrun suspend $1'

# Likely VMs
#

alias dirvm='ls $vmpath/**/*vmxf'
