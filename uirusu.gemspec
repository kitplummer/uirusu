# Copyright (c) 2012-2015 Arxopia LLC.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
#
# Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# Neither the name of the project's author nor the names of its contributors
# may be used to endorse or promote products derived from this software
# without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

base = __FILE__
$:.unshift(File.join(File.dirname(base), 'lib'))

require 'uirusu'

Gem::Specification.new do |s|
	s.name = Uirusu::APP_NAME
	s.version = Uirusu::VERSION
	s.homepage = "http://github.com/arxopia/uirusu/"
	s.summary = Uirusu::APP_NAME
	s.description = "uirusu is library for interacting with Virustotal.org"
	s.license = "BSD"

	s.author = "Jacob Hammack"
	s.email = "uirusu@arxopia.com"

	s.files = Dir['[A-Z]*'] + Dir['lib/**/*'] + ['uirusu.gemspec']
	s.default_executable = 'uirusu'
	s.executables = ['uirusu']
	s.require_paths	= ["lib"]

	s.required_ruby_version = '>= 1.9.3'
	s.required_rubygems_version = ">= 1.8.16"

	s.has_rdoc = 'yard'
	s.extra_rdoc_files = ["README.markdown", "LICENSE", "NEWS.markdown", "TODO.markdown"]

	s.add_dependency('json', '>= 1.5.1')
	s.add_dependency('rest-client', '>= 1.6.1')
end
