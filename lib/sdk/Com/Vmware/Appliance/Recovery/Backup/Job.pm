########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Job.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Backup::Job
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job``   *interface*  provides 
#     *methods*  to be performed on a backup job.
#

package Com::Vmware::Appliance::Recovery::Backup::Job;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Appliance::Recovery::Backup::JobStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.recovery.backup.job';


## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method cancel ()
# Cancel the backup job.
#
# @param id [REQUIRED] ID (ID of job)
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.job).
# . The value must be str.
#
# @retval 
# BackupJobStatus Structure
# The return type will be Com::Vmware::Appliance::Recovery::Backup::Job::ReturnResult
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if backup associated with id does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#
sub cancel {
   my ($self, %args) = @_;
   my $id = $args {id};

   $self->validate_args (method_name => 'cancel',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'cancel',
                         method_args => \%args);
}

## @method create ()
# Initiate backup.
#
# @param piece [REQUIRED] BackupRequest Structure
# . The value must be Com::Vmware::Appliance::Recovery::Backup::Job::BackupRequest.
#
# @retval 
# BackupJobStatus Structure
# The return type will be Com::Vmware::Appliance::Recovery::Backup::Job::BackupJobStatus
#
# @throw Com::Vmware::Vapi::Std::Errors::FeatureInUse 
# A backup or restore is already in progress.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#
sub create {
   my ($self, %args) = @_;
   my $piece = $args {piece};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method list ()
# Get list of backup jobs
#
# @retval 
# list of BackupJob IDs
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.job).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method get ()
# See backup job progress/result.
#
# @param id [REQUIRED] ID (ID of job)
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.job).
# . The value must be str.
#
# @retval 
# BackupJobStatus Structure
# The return type will be Com::Vmware::Appliance::Recovery::Backup::Job::BackupJobStatus
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if backup associated with id does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#
sub get {
   my ($self, %args) = @_;
   my $id = $args {id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Backup::Job service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::Job::ReturnStatus
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::ReturnStatus``   *enumerated
#     type*  defines the return type for the cancel operation. You specify the return status
#     when you return the result of cancel job. See  class
#     Com::Vmware::Appliance::Recovery::Backup::Job::ReturnResult .
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::ReturnStatus::FAIL #
#Cancel operation failed.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::ReturnStatus::WARNING #
#Cancel operation passed with warnings.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::ReturnStatus::OK #
#Cancel operation succeeded.

package Com::Vmware::Appliance::Recovery::Backup::Job::ReturnStatus;

use constant {
    FAIL =>  'FAIL',
    WARNING =>  'WARNING',
    OK =>  'OK',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::ReturnStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.backup.job.return_status',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::ReturnStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Recovery::Backup::Job::LocationType
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::LocationType``   *enumerated
#     type*  defines the type of destination location for backup/restore. You specify the
#     location type when you create a backup job. See  class
#     Com::Vmware::Appliance::Recovery::Backup::Job::BackupRequest .
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::LocationType::FTP #
#Destination is FTP server.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::LocationType::HTTP #
#Destination is HTTP server.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::LocationType::FTPS #
#Destination is FTPS server.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::LocationType::HTTPS #
#Destination is HTTPS server.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::LocationType::SCP #
#Destination is SSH server.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::LocationType::SFTP #
#Destination is SFTP server.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::LocationType::NFS #
#Destination is NFS server. This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::LocationType::SMB #
#Destination is SMB server. This  *constant*  was added in vSphere API 6.7.2.

package Com::Vmware::Appliance::Recovery::Backup::Job::LocationType;

use constant {
    FTP =>  'FTP',
    HTTP =>  'HTTP',
    FTPS =>  'FTPS',
    HTTPS =>  'HTTPS',
    SCP =>  'SCP',
    SFTP =>  'SFTP',
    NFS =>  'NFS',
    SMB =>  'SMB',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::LocationType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.backup.job.location_type',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::LocationType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Recovery::Backup::Job::BackupRestoreProcessState
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::BackupRestoreProcessState``  
#     *enumerated type*  defines the possible states of a backup/restore process.
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::BackupRestoreProcessState::FAILED #
#Backup/Restore job failed.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::BackupRestoreProcessState::INPROGRESS #
#Backup/Restore job is in progress.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::BackupRestoreProcessState::NONE #
#Backup/Restore job is not started.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::BackupRestoreProcessState::SUCCEEDED #
#Backup/Restore job completed successfully.

package Com::Vmware::Appliance::Recovery::Backup::Job::BackupRestoreProcessState;

use constant {
    FAILED =>  'FAILED',
    INPROGRESS =>  'INPROGRESS',
    NONE =>  'NONE',
    SUCCEEDED =>  'SUCCEEDED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::BackupRestoreProcessState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.backup.job.backup_restore_process_state',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::BackupRestoreProcessState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Backup::Job service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Backup::Job service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::Job::LocalizableMessage
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::LocalizableMessage``   *class* 
#     represents a localizable message.

package Com::Vmware::Appliance::Recovery::Backup::Job::LocalizableMessage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::LocalizableMessage structure
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
   $self->{default_message} = $args{'default_message'};
   $self->{args} = $args{'args'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::LocalizableMessage');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.job.localizable_message');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'default_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'args', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Id in message bundle.
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
# Id in message bundle.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_default_message ()
# Gets the value of 'default_message' property.
#
# @retval default_message - The current value of the field.
# Text in english.
#
# String#
sub get_default_message {
   my ($self, %args) = @_;
   return $self->{'default_message'}; 	
}

## @method set_default_message ()
# Sets the given value for 'default_message' property.
# 
# @param default_message  - New value for the field.
# Text in english.
#
sub set_default_message {
   my ($self, %args) = @_;
   $self->{'default_message'} = $args{'default_message'}; 
   return;	
}

## @method get_args ()
# Gets the value of 'args' property.
#
# @retval args - The current value of the field.
# Nested data.
#
# List#
sub get_args {
   my ($self, %args) = @_;
   return $self->{'args'}; 	
}

## @method set_args ()
# Sets the given value for 'args' property.
# 
# @param args  - New value for the field.
# Nested data.
#
sub set_args {
   my ($self, %args) = @_;
   $self->{'args'} = $args{'args'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Job::ReturnResult
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::ReturnResult``   *class* 
#     contains the result information for the cancel operation.

package Com::Vmware::Appliance::Recovery::Backup::Job::ReturnResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::ReturnResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{messages} = $args{'messages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::ReturnResult');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.job.return_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Job::ReturnStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Job::LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status of the cancel operation.
#
# ReturnStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status of the cancel operation.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# List of messages.
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# List of messages.
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Job::BackupRequest
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::BackupRequest``   *class* 
#     represents a requested backup piece.

package Com::Vmware::Appliance::Recovery::Backup::Job::BackupRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::BackupRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{parts} = $args{'parts'};
   $self->{backup_password} = $args{'backup_password'};
   $self->{location_type} = $args{'location_type'};
   $self->{location} = $args{'location'};
   $self->{location_user} = $args{'location_user'};
   $self->{location_password} = $args{'location_password'};
   $self->{comment} = $args{'comment'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::BackupRequest');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.job.backup_request');
   $self->set_binding_field('key' => 'parts', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'backup_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'location_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Job::LocationType'));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'location_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'comment', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_parts ()
# Gets the value of 'parts' property.
#
# @retval parts - The current value of the field.
# List of optional parts that will be included in the backup. Use the 
#     :func:`Com::Vmware::Appliance::Recovery::Backup::Parts.list`   *method*  to get
#     information about the supported parts.
#
# List#
sub get_parts {
   my ($self, %args) = @_;
   return $self->{'parts'}; 	
}

## @method set_parts ()
# Sets the given value for 'parts' property.
# 
# @param parts  - New value for the field.
# List of optional parts that will be included in the backup. Use the 
#     :func:`Com::Vmware::Appliance::Recovery::Backup::Parts.list`   *method*  to get
#     information about the supported parts.
#
sub set_parts {
   my ($self, %args) = @_;
   $self->{'parts'} = $args{'parts'}; 
   return;	
}

## @method get_backup_password ()
# Gets the value of 'backup_password' property.
#
# @retval backup_password - The current value of the field.
# Password for a backup piece. The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space).
#
# Optional#
sub get_backup_password {
   my ($self, %args) = @_;
   return $self->{'backup_password'}; 	
}

## @method set_backup_password ()
# Sets the given value for 'backup_password' property.
# 
# @param backup_password  - New value for the field.
# Password for a backup piece. The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space).
#
sub set_backup_password {
   my ($self, %args) = @_;
   $self->{'backup_password'} = $args{'backup_password'}; 
   return;	
}

## @method get_location_type ()
# Gets the value of 'location_type' property.
#
# @retval location_type - The current value of the field.
# Type of backup location.
#
# LocationType#
sub get_location_type {
   my ($self, %args) = @_;
   return $self->{'location_type'}; 	
}

## @method set_location_type ()
# Sets the given value for 'location_type' property.
# 
# @param location_type  - New value for the field.
# Type of backup location.
#
sub set_location_type {
   my ($self, %args) = @_;
   $self->{'location_type'} = $args{'location_type'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Path or URL of the backup location.
#
# String#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Path or URL of the backup location.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_location_user ()
# Gets the value of 'location_user' property.
#
# @retval location_user - The current value of the field.
# Username for the given location.
#
# Optional#
sub get_location_user {
   my ($self, %args) = @_;
   return $self->{'location_user'}; 	
}

## @method set_location_user ()
# Sets the given value for 'location_user' property.
# 
# @param location_user  - New value for the field.
# Username for the given location.
#
sub set_location_user {
   my ($self, %args) = @_;
   $self->{'location_user'} = $args{'location_user'}; 
   return;	
}

## @method get_location_password ()
# Gets the value of 'location_password' property.
#
# @retval location_password - The current value of the field.
# Password for the given location.
#
# Optional#
sub get_location_password {
   my ($self, %args) = @_;
   return $self->{'location_password'}; 	
}

## @method set_location_password ()
# Sets the given value for 'location_password' property.
# 
# @param location_password  - New value for the field.
# Password for the given location.
#
sub set_location_password {
   my ($self, %args) = @_;
   $self->{'location_password'} = $args{'location_password'}; 
   return;	
}

## @method get_comment ()
# Gets the value of 'comment' property.
#
# @retval comment - The current value of the field.
# Custom comment provided by the user.
#
# Optional#
sub get_comment {
   my ($self, %args) = @_;
   return $self->{'comment'}; 	
}

## @method set_comment ()
# Sets the given value for 'comment' property.
# 
# @param comment  - New value for the field.
# Custom comment provided by the user.
#
sub set_comment {
   my ($self, %args) = @_;
   $self->{'comment'} = $args{'comment'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Job::BackupJobStatus
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::BackupJobStatus``   *class* 
#     represents the status of a backup/restore job.

package Com::Vmware::Appliance::Recovery::Backup::Job::BackupJobStatus;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::BackupJobStatus structure
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
   $self->{state} = $args{'state'};
   $self->{messages} = $args{'messages'};
   $self->{progress} = $args{'progress'};
   $self->{start_time} = $args{'start_time'};
   $self->{end_time} = $args{'end_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::BackupJobStatus');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.job.backup_job_status');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Job::BackupRestoreProcessState'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Job::LocalizableMessage')));
   $self->set_binding_field('key' => 'progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'end_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# TimeStamp based ID.
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
# TimeStamp based ID.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# The state of the backup job.
#
# BackupRestoreProcessState#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# The state of the backup job.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# List of messages.
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# List of messages.
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}

## @method get_progress ()
# Gets the value of 'progress' property.
#
# @retval progress - The current value of the field.
# Progress of the job in percentage.
#
# long#
sub get_progress {
   my ($self, %args) = @_;
   return $self->{'progress'}; 	
}

## @method set_progress ()
# Sets the given value for 'progress' property.
# 
# @param progress  - New value for the field.
# Progress of the job in percentage.
#
sub set_progress {
   my ($self, %args) = @_;
   $self->{'progress'} = $args{'progress'}; 
   return;	
}

## @method get_start_time ()
# Gets the value of 'start_time' property.
#
# @retval start_time - The current value of the field.
# Time when the backup was started.
#
# DateTime#
sub get_start_time {
   my ($self, %args) = @_;
   return $self->{'start_time'}; 	
}

## @method set_start_time ()
# Sets the given value for 'start_time' property.
# 
# @param start_time  - New value for the field.
# Time when the backup was started.
#
sub set_start_time {
   my ($self, %args) = @_;
   $self->{'start_time'} = $args{'start_time'}; 
   return;	
}

## @method get_end_time ()
# Gets the value of 'end_time' property.
#
# @retval end_time - The current value of the field.
# Time when the backup was finished.
#
# Optional#
sub get_end_time {
   my ($self, %args) = @_;
   return $self->{'end_time'}; 	
}

## @method set_end_time ()
# Sets the given value for 'end_time' property.
# 
# @param end_time  - New value for the field.
# Time when the backup was finished.
#
sub set_end_time {
   my ($self, %args) = @_;
   $self->{'end_time'} = $args{'end_time'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Backup::Job service
#########################################################################################
