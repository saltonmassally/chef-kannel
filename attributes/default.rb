default[:kannel][:config_folder_path] = '/etc/kannel'

default[:kannel][:admin_port] = 13000
default[:kannel][:admin_password] = '1234'
default[:kannel][:status_password] = '1234'
default[:kannel][:smsbox_port] = 13001
default[:kannel][:admin_deny_ip] = '""'
default[:kannel][:admin_allow_ip] = '*.*.*.*'
default[:kannel][:bearerbox_log_file] = '/var/log/kannel/bearerbox.log'
default[:kannel][:bearerbox_log_level] = 0
default[:kannel][:bearerbox_access_log] = '/var/log/kannel/access.log'
default[:kannel][:store_type] = 'file'
default[:kannel][:store_location] = '/var/log/kannel/kannel.store'
default[:kannel][:box_deny_ip] = '*.*.*.*'
default[:kannel][:box_allow_ip] = '127.0.0.1'

default[:kannel][:smsbox_id] = 'idtlabs'
default[:kannel][:bearerbox_host] = 'localhost'
default[:kannel][:smsbox_log_file] = '/var/log/kannel/smsbox.log'
default[:kannel][:smsbox_log_level] = 0
default[:kannel][:sendsms_port] = 13013
default[:kannel][:smsbox_access_log] = '/var/log/kannel/sms-access.log'
default[:kannel][:reply_couldnotfetch] = 'Sorry, something went wrong whilst processing your request; we are resolving it, please try again at a latter'
default[:kannel][:reply_requestfailed] = 'Sorry, something went wrong whilst processing your request; we are resolving it, please try again at a latter'
default[:kannel][:reply_couldnotrepresent] = 'Sorry, something went wrong whilst processing your request; we are resolving it, please try again at a latter'
default[:kannel][:http_request_retry] = 5
default[:kannel][:http_queue_delay] = 10

default[:kannel][:smsc_id] = 'africell'
default[:kannel][:shortcode] = 2424
default[:kannel][:smsc_log_level] = 0

default[:kannel][:sendsms_username] = 'user'
default[:kannel][:sendsms_password] = '1234'
default[:kannel][:sendsms_max_messages] = 3

default[:kannel][:service_get_url] = 'http://example.com'
default[:kannel][:service_max_messages] = 0
default[:kannel][:service_catchall] = 'yes'
default[:kannel][:service_keyword] = 'default'

default[:kannel][:smsc_address_range] = '""'
default[:kannel][:smsc_my_number] = 2424
default[:kannel][:smsc_system_type] = 'VMA'
default[:kannel][:smsc_username] = 'user'
default[:kannel][:smsc_password] = '1234'
default[:kannel][:smsc_port] = 2775
default[:kannel][:smsc_service_type] = '1234'
default[:kannel][:smsc_my_number] = '1234'
default[:kannel][:smsc_log_file] =  '/var/log/kannel/africell.log'
default[:kannel][:smsc_host] = '0.0.0.0'
