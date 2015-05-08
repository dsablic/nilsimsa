#!/usr/bin/env ruby
require 'mkmf'
require 'rbconfig'

CONFIG["CCDLFLAGS"] = " -fPIC"
        
have_header('ruby.h') or missing('ruby.h')

create_makefile( 'nilsimsa_native' )
