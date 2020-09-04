#! /bin/bash

# Some variables are expected to be defined before sourcing this file:
#  - pkg_name
#  - pkg_ver
#  - DEBFULLNAME
#  - DEBEMAIL
#
# These may be used by the function defined in this file.

# ==============================================================================

# Requires a single argument: destination_file
gen_changelog()
{
    cat << EOF > $1
$pkg_name ($pkg_ver) unstable; urgency=medium

  * For a detailed changelog, please see the GitHub release page or the Pypi
    package page.
    .
    https://github.com/Huawei-HiQ
    https://pypi.org/project/$pkg_name

 -- $DEBFULLNAME <$DEBEMAIL>  $(date -R)
EOF
}

# ==============================================================================

# Requires a single argument: destination_file
gen_watch()
{
    cat << EOF > $1
version=4
https://pypi.debian.net/$pkg_name/$pkg_name-(.+)\.(?:zip|tgz|tbz|txz|(?:tar\.(?:gz|bz2|xz)))
EOF
}

# ==============================================================================

# Requires a single argument: destination_file
gen_compat()
{
    cat << EOF > $1
11
EOF
}

# ==============================================================================