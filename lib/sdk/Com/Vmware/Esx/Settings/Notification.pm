## @class Com::Vmware::Esx::Settings::Notification
#
#
# The  ``Com::Vmware::Esx::Settings::Notification``   *class*  contains  *fields*  to
#     describe any info/warning/error messages that Tasks can raise.

package Com::Vmware::Esx::Settings::Notification;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Notification structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{time} = $args{'time'};
   $self->{message} = $args{'message'};
   $self->{resolution} = $args{'resolution'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Notification');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.notification');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'resolution', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The notification id.
#
# String#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# The notification id.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_time ()
# Gets the value of 'time' property.
#
# @retval time - The current value of the field.
# The time the notification was raised/found.
#
# DateTime#
sub get_time {
   my ($self, %args) = @_;
   return $self->{'time'}; 	
}

## @method set_time ()
# Sets the given value for 'time' property.
# 
# @param time  - New value for the field.
# The time the notification was raised/found.
#
sub set_time {
   my ($self, %args) = @_;
   $self->{'time'} = $args{'time'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# The notification message.
#
# LocalizableMessage#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# The notification message.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}

## @method get_resolution ()
# Gets the value of 'resolution' property.
#
# @retval resolution - The current value of the field.
# The resolution message, if any.
#
# Optional#
sub get_resolution {
   my ($self, %args) = @_;
   return $self->{'resolution'}; 	
}

## @method set_resolution ()
# Sets the given value for 'resolution' property.
# 
# @param resolution  - New value for the field.
# The resolution message, if any.
#
sub set_resolution {
   my ($self, %args) = @_;
   $self->{'resolution'} = $args{'resolution'}; 
   return;	
}


1;


