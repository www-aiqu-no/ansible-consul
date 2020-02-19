# Role Name

This is a simple ansible role for consul. It does the following tasks:
- Download and validate consul precompiled binary
- Add unit/service definition (systemd)
- Stream configuration based on provided parameters into json-configuration
- Optional: manage firewalld, selinux, dnsmasq

## Requirements

None

## Role Variables

#### version (default: 1.7.0)
Sets the version to download & enable

#### force_install (default: false)
Download & unpack binary even if the defined version already exists

#### config_overrides (default: {})
Overrides any default settings for the application. These are written to disk on the host. Example:
```yaml
config_overrides:
  client_addr: "0.0.0.0"
  server: true
  bootstrap_expect: 1
  ui: true
  performance:
    raft_multiplier: 8
  ports:
    grpc: 8502
  acl:
    enabled: true
    default_policy: allow
```

See [https://www.consul.io/docs/agent/options.html](https://www.consul.io/docs/agent/options.html) for details

#### path_overrides (default: {})
Default paths to use for files

#### configure_dnsmasq (default: false)
Enable dnsmasq

#### dnsmasq_overrides (default: {})
Override default dnsmasq settings

#### configure_firewalld (default: false)
Add (default) ports to firewalld

#### configure_selinux (default: false)
Set SELinux to permissive mode

...
## Dependencies

None

## Example Playbook
Install a single server instance

    - hosts: consul
      gather_facts: false

      pre_tasks:
        - name: Ansible and docker requirements
          become: true
          package:
            name:
              - iproute
            state: present

      tasks:
        - include_role:
            name: consul
          vars:
            config_overrides:
              client_addr: "0.0.0.0"
              server: true
              bootstrap_expect: 1
              ui: true
            configure_dnsmasq: true

## License

MIT

## Author Information

N/A
