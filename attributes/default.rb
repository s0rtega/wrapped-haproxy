default['haproxy']['incoming_port'] = 8000

#acl host_prueba1 hdr(host) -i probando1
default['haproxy']['members'] = [{
  'frontend_hostname' => 'host_prueba1',
  'acl_filter_method' => 'url_beg',
  'acl_filter_string' => '/foo',
  'backends' => [
   {
	'backend_hostname' => 'host_prueba1_backend',
	'ipaddress'        => '127.0.0.1',
    'port' => 80,
    'ssl_port' => 4002
   }
  ]
},
{
  'frontend_hostname' => 'host_prueba2',
  'acl_filter_method' => 'url_beg',
  'acl_filter_string' => '/bar',
   'backends' => [
   {
	'backend_hostname' => 'host_prueba2_backend',
	'ipaddress'        => '127.0.0.1',
    'port' => 90,
    'ssl_port' => 4002
   }
  ]
}]

