## @class Com::Vmware::Vcenter::Lcm::ExternalVcsa
#
#
# Configuration of the Single Sign-On for Management type deployment.

package Com::Vmware::Vcenter::Lcm::ExternalVcsa;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::ExternalVcsa structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{sso_admin_password} = $args{'sso_admin_password'};
   $self->{sso_domain_name} = $args{'sso_domain_name'};
   $self->{psc_hostname} = $args{'psc_hostname'};
   $self->{ssl_verify} = $args{'ssl_verify'};
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};
   $self->{https_port} = $args{'https_port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::ExternalVcsa');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.external_vcsa');
   $self->set_binding_field('key' => 'sso_admin_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'sso_domain_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'psc_hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_sso_admin_password ()
# Gets the value of 'sso_admin_password' property.
#
# @retval sso_admin_password - The current value of the field.
# Administrator password of the external PSC to register with.
#
# Secret#
sub get_sso_admin_password {
   my ($self, %args) = @_;
   return $self->{'sso_admin_password'}; 	
}

## @method set_sso_admin_password ()
# Sets the given value for 'sso_admin_password' property.
# 
# @param sso_admin_password  - New value for the field.
# Administrator password of the external PSC to register with.
#
sub set_sso_admin_password {
   my ($self, %args) = @_;
   $self->{'sso_admin_password'} = $args{'sso_admin_password'}; 
   return;	
}

## @method get_sso_domain_name ()
# Gets the value of 'sso_domain_name' property.
#
# @retval sso_domain_name - The current value of the field.
# Domain name of the external PSC. For example, &apos;vsphere.local&apos;
#
# String#
sub get_sso_domain_name {
   my ($self, %args) = @_;
   return $self->{'sso_domain_name'}; 	
}

## @method set_sso_domain_name ()
# Sets the given value for 'sso_domain_name' property.
# 
# @param sso_domain_name  - New value for the field.
# Domain name of the external PSC. For example, &apos;vsphere.local&apos;
#
sub set_sso_domain_name {
   my ($self, %args) = @_;
   $self->{'sso_domain_name'} = $args{'sso_domain_name'}; 
   return;	
}

## @method get_psc_hostname ()
# Gets the value of 'psc_hostname' property.
#
# @retval psc_hostname - The current value of the field.
# The IP address or DNS resolvable name of the remote PSC to which this configuring
#     vCenter Server will be registered.
#
# String#
sub get_psc_hostname {
   my ($self, %args) = @_;
   return $self->{'psc_hostname'}; 	
}

## @method set_psc_hostname ()
# Sets the given value for 'psc_hostname' property.
# 
# @param psc_hostname  - New value for the field.
# The IP address or DNS resolvable name of the remote PSC to which this configuring
#     vCenter Server will be registered.
#
sub set_psc_hostname {
   my ($self, %args) = @_;
   $self->{'psc_hostname'} = $args{'psc_hostname'}; 
   return;	
}

## @method get_ssl_verify ()
# Gets the value of 'ssl_verify' property.
#
# @retval ssl_verify - The current value of the field.
# A flag to indicate whether the SSL verification is required
#
# Optional#
sub get_ssl_verify {
   my ($self, %args) = @_;
   return $self->{'ssl_verify'}; 	
}

## @method set_ssl_verify ()
# Sets the given value for 'ssl_verify' property.
# 
# @param ssl_verify  - New value for the field.
# A flag to indicate whether the SSL verification is required
#
sub set_ssl_verify {
   my ($self, %args) = @_;
   $self->{'ssl_verify'} = $args{'ssl_verify'}; 
   return;	
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# SHA1 thumbprint of the server SSL certificate which will be used for verification.
#
# Optional#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.
# SHA1 thumbprint of the server SSL certificate which will be used for verification.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# The HTTPS port of the external PSC appliance.
#
# Optional#
sub get_https_port {
   my ($self, %args) = @_;
   return $self->{'https_port'}; 	
}

## @method set_https_port ()
# Sets the given value for 'https_port' property.
# 
# @param https_port  - New value for the field.
# The HTTPS port of the external PSC appliance.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}


1;


