Command:
```
$ vagrant up
```
Output:
```
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'win2019-std'...
==> default: Matching MAC address for NAT networking...
==> default: Setting the name of the VM: win2019-std
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 3389 (guest) => 3389 (host) (adapter 1)
    default: 5985 (guest) => 55985 (host) (adapter 1)
    default: 5986 (guest) => 55986 (host) (adapter 1)
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: WinRM address: 127.0.0.1:55985
    default: WinRM username: vagrant
    default: WinRM execution_time_limit: PT2H
    default: WinRM transport: negotiate
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
==> default: Mounting shared folders...
    default: /vagrant => /home/nixon89/newdir
==> default: Running provisioner: shell...
    default: Running: inline PowerShell script
    default: Self-signed SSL certificate generated; thumbprint: 435A75FB740EFA3AB9FF9C0E97F624E5863637B0
    default: wxf                 : http://schemas.xmlsoap.org/ws/2004/09/transfer
    default: a                   : http://schemas.xmlsoap.org/ws/2004/08/addressing
    default: w                   : http://schemas.dmtf.org/wbem/wsman/1/wsman.xsd
    default: lang                : en-US
    default: Address             : http://schemas.xmlsoap.org/ws/2004/08/addressing/role/anonymous
    default: ReferenceParameters : ReferenceParameters
    default: Ok.
```