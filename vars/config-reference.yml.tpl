# ==============================================================================
# For reference: All possible settings
# ==============================================================================

config_all:

  acl:
    enabled: false
    policy_ttl: 30s
    role_ttl: 30s
    token_ttl: 30s
    down_policy: extend-cache
    default_policy: allow
    enable_key_list_policy: disabled
    enable_token_replication: false
    enable_token_persistence: true
    tokens:
      master: null
      default: null
      agent: null
      agent_master: null
      replication: null
      # Enterprise: []
      managed_service_provider: null

  addresses:
    dns: "{{ client_addr }}"
    http: "{{ client_addr }}"
    https: "{{ client_addr }}"
    grpc: "{{ client_addr }}"

  advertise_addr: "{{ bind_addr }}"
  serf_wan: "{{ bind_addr }}"
  serf_lan: "{{ bind_addr }}"
  advertise_addr_wan: "{{ bind_addr }}"

  autopilot:
    cleanup_dead_servers: true
    last_contact_threshold: 200ms
    max_trailing_logs: 250
    min_quorum: null
    server_stabilization_time: 10s
    # Enterprise
    redundancy_zone_tag: null
    disable_upgrade_migration: false
    upgrade_version_tag: null

  auto_encrypt:
    allow_tls: false
    tls: false
    dns_san: []
    ip_san: []

  bootstrap: null
  bootstrap_expect: null
  bind_addr: "{{ bind_addr }}"
  ca_file: null
  ca_path: null
  cert_file: null
  check_update_interval: 5m
  client_addr: "{{ client_addr }}"

  config_entries:
    bootstrap: []

  connect:
    enabled: false
    ca_provider: consul
    ca_config:
      csr_max_concurrent: 0
      csr_max_per_second: 50
      leaf_cert_ttl: 72h
      private_key_type: ec
      private_key_bits: "224, 256, 384, 521"
      # provider: Consul
      private_key: null
      root_cert: null
      # provider: Vault
      address: null
      token: null
      root_pki_path: null
      intermediate_pki_path: null

  datacenter: dc1
  data_dir: null
  disable_anonymous_signature: null
  disable_host_node_id: null
  disable_http_unprintable_char_filter: false
  disable_remote_exec: true
  disable_update_check: true
  discard_check_output: null
  discovery_max_stale: null

  dns_config:
    allow_stale: true
    max_stale: 87600h
    node_ttl: 0s
    service_ttl: 0s
    enable_truncate: null
    only_passing: null
    recursor_timeout: 2s
    disable_compression: true
    a_record_limit: null
    enable_additional_node_meta_txt: true
    soa:
      expire: 86400
      min_ttl: 0
      refresh: 3600
      retry: 600

  domain: consul.
  enable_acl_replication: null
  enable_agent_tls_for_checks: null
  enable_central_service_config: null
  enable_debug: false
  enable_script_checks: false
  enable_local_script_checks: false
  enable_syslog: false
  encrypt: null
  encrypt_verify_incoming: true
  encrypt_verify_outgoing: true
  disable_keyring_file: false

  gossip_lan:
    gossip_nodes: 3
    gossip_interval: 200ms
    probe_interval: 1s
    probe_timeout: 500ms
    retransmit_mult: 4
    suspicion_mult: 4

  gossip_wan:
    gossip_nodes: 3
    gossip_interval: 200ms
    probe_interval: 1s
    probe_timeout: 500ms
    retransmit_mult: 4
    suspicion_mult: 4

  key_file: null

  http_config:
    block_endpoints: []
    response_headers: null
    allow_write_http_from: []

  leave_on_terminate: false

  limits:
    http_max_conns_per_client: 100
    https_handshake_timeout: 5s
    rpc_handshake_timeout: 5s
    rpc_max_conns_per_client: 100
    rpc_rate: null
    rpc_max_burst: 1000

  log_file: null
  log_rotate_duration: 24h
  log_rotate_bytes: null
  log_rotate_max_files: 0
  log_level: info
  log_json: false
  default_query_time: 300s
  max_query_time: 600s
  node_id: null
  node_name: "{{ hostname }}"
  node_meta: []

  performance:
    leave_drain_time: 5s
    raft_multiplier: 5
    rpc_hold_timeout: 7s

  ports:
    dns: 8600
    http: 8500
    https: -1 # 8501
    grpc: -1 # 8502
    serf_lan: 8301
    serf_wan: 8302
    server: 8300
    sidecar_min_port: 21000
    sidecar_max_port: 21255
    expose_min_port: 21500
    expose_max_port: 21755

  protocol: null
  primary_datacenter: null
  raft_protocol: 3
  raft_snapshot_threshold: 16384
  raft_snapshot_interval: 30s
  raft_trailing_logs: 10000
  reconnect_timeout: 72h
  reconnect_timeout_wan: 72h
  recursors: null

  rejoin_after_leave: null
  retry_join: null
  retry_interval: 30s
  retry_join_wan: null
  retry_interval_wan: 30s

  # Enterprise
  segment:
    name: null
    bind: "{{ bind_addr }}"
    port: null
    advertise: "{{ bind_addr }}"
    rpc_listener: "{{ bind_addr }}"

  server: false
  non_voting_server: false
  server_name: null
  session_ttl_min: 10s
  skip_leave_on_interrupt: null
  start_join: null
  start_join_wan: null

  telemetry:
    circonus_api_token: null
    circonus_api_app: consul
    circonus_api_url: https://api.circonus.com/v2
    circonus_submission_interval: 10s
    circonus_submission_url: null
    circonus_check_id: null
    circonus_check_force_metric_activation: false
    circonus_check_instance_id: null
    circonus_check_search_tag: null
    circonus_check_display_name: null
    circonus_check_tags: null
    circonus_broker_id: null
    circonus_broker_select_tag: null
    disable_hostname: false
    dogstatsd_addr: null
    dogstatsd_tags: null
    filter_default: true
    metrics_prefix: consul
    prefix_filter: []
    prometheus_retention_time: 0s
    statsd_address: null
    statsite_address: null

  syslog_facility: null
  tls_min_version: tls12
  tls_cipher_suites: null
  tls_prefer_server_cipher_suites: null
  translate_wan_addrs: false
  ui: true
  ui_dir: null

  unix_sockets:
    user: null
    group: null
    mode: null

  verify_incoming: false
  verify_incoming_rpc: false
  verify_incoming_https: false
  verify_outgoing: false
  verify_server_hostname: false
  waches: null

# ==============================================================================
