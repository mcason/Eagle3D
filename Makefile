#
# Copyright 2011 Matthias Weisser <matthias@matwei.de>
#
# This file is part of Eagle3D
#
# Eagle3D is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# Eagle3D is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

all: create

create:
	tools/eagle3d.py create

clean:
	tools/eagle3d.py clean

render: all
	tools/eagle3d.py render

release: all
ifndef VERSIONNAME
	echo "Supply a version name as yyyymmdd"
	echo "VERSIONNAME=20110101 make release"
	false
else
	tools/eagle3d.py release --release-name=$(VERSIONNAME)
endif
