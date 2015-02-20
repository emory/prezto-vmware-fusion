vmware-fusion
=============

Defines useful(?) [VMWare Fusion][1] aliases.

Settings
--------

Aliases
-------

  - `vm-start` Takes an argument to your `.vmxf` file. Runs with `nogui` flag.
  - `vm-stop` Takes an argument to your `.vmxf` file. Stops the vm.
  - `vm-suspend` Takes an argument to your `.vmxf` file. Suspends vm.
  - `vm-list-running` Lists all running vms.
  - `dirvm` Lists the contents of your $vmpath (see below)

Environment Variables
---------------------

  -	$vmpath	
	- Likely path to user's virtual machines as determined by `prefvmx.defaultVMPath`

Caveats
-------

  - User may have VMware virtual machines in other locations, *untested*
  - The obvious next step is to allow for tab-completion on selecting a virtual machine *todo*
	- Likely implementation will need to split aliases into simple functions that evaluate `$vmpath`?

Authors
-------

*The authors of this module should be contacted via the [issue tracker][2].*
	
  	- [Emory Lundberg](https://github.com/emory) ([homepage](http://incumbent.org/))


[1]: http://www.vmware.com/products/fusion
[2]: https://github.com/emory/
