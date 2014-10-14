#
# Cookbook Name:: virtualbox
# Attributes:: default
#
# Copyright 2013, Thomas Boerger
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["virtualbox"]["packages"] = value_for_platform_family(
  "debian" => %w(
    virtualbox
    virtualbox-qt
  ),
  "ubuntu" => %w(
    virtualbox
    virtualbox-qt
  ),
  "suse" => %w(
    virtualbox
    virtualbox-host-kmp-desktop
    virtualbox-qt
  )
)

default["virtualbox"]["users"] = %w()
default["virtualbox"]["group"] = "vboxusers"

default["virtualbox"]["zypper"]["enabled"] = true
default["virtualbox"]["zypper"]["alias"] = "virtualization"
default["virtualbox"]["zypper"]["title"] = "Virtualization"
default["virtualbox"]["zypper"]["repo"] = "http://download.opensuse.org/repositories/Virtualization/openSUSE_#{node["platform_version"]}/"
default["virtualbox"]["zypper"]["key"] = "#{node["virtualbox"]["zypper"]["repo"]}repodata/repomd.xml.key"
