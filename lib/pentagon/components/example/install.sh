#!/bin/bash
#
### START OF CODE GENERATED BY Argbash v2.4.0 one line above ###
# Argbash is a bash code generator used to get arguments parsing right.
# Argbash is FREE SOFTWARE, see https://argbash.io for more info
# Generated online by https://argbash.io/generate

# ARG_OPTIONAL_SINGLE([component-path],[p],[path to component dir])
# ARG_OPTIONAL_SINGLE([environment],[e],[Environment])
# ARG_OPTIONAL_SINGLE([cluster],[c],[Cluster])
# ARG_OPTIONAL_SINGLE([namespace],[n],[namespace])
# ARG_OPTIONAL_SINGLE([version],[v],[Version])
# ARG_HELP([Installation script])
# ARGBASH_GO()
# needed because of Argbash --> m4_ignore([

die()
{
	local _ret=$2
	test -n "$_ret" || _ret=1
	test "$_PRINT_HELP" = yes && print_help >&2
	echo "$1" >&2
	exit ${_ret}
}

begins_with_short_option()
{
	local first_option all_short_options
	all_short_options='pecnvh'
	first_option="${1:0:1}"
	test "$all_short_options" = "${all_short_options/$first_option/}" && return 1 || return 0
}



# THE DEFAULTS INITIALIZATION - OPTIONALS
_arg_component_path=
_arg_environment=
_arg_cluster=
_arg_namespace=
_arg_version=

print_help ()
{
	echo "Installation script"
	printf 'Usage: %s [-p|--component-path <arg>] [-e|--environment <arg>] [-c|--cluster <arg>] [-n|--namespace <arg>] [-v|--version <arg>] [-h|--help]\n' "$0"
	printf "\t%s\n" "-p,--component-path: path to component dir (no default)"
	printf "\t%s\n" "-e,--environment: Environment (no default)"
	printf "\t%s\n" "-c,--cluster: Cluster (no default)"
	printf "\t%s\n" "-n,--namespace: namespace (no default)"
	printf "\t%s\n" "-v,--version: Version (no default)"
	printf "\t%s\n" "-h,--help: Prints help"
}

# THE PARSING ITSELF
while test $# -gt 0
do
	_key="$1"
	case "$_key" in
		-p*|--component-path|--component-path=*)
			_val_from_long="${_key##--component-path=}"
			_val_from_short="${_key##-p}"
			if test "$_val_from_long" != "$_key"
			then
				_val="$_val_from_long"
			elif test "$_val_from_short" != "$_key" -a -n "$_val_from_short"
			then
				_val="$_val_from_short"
			else
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_val="$2"
				shift
			fi
			_arg_component_path="$_val"
			;;
		-e*|--environment|--environment=*)
			_val_from_long="${_key##--environment=}"
			_val_from_short="${_key##-e}"
			if test "$_val_from_long" != "$_key"
			then
				_val="$_val_from_long"
			elif test "$_val_from_short" != "$_key" -a -n "$_val_from_short"
			then
				_val="$_val_from_short"
			else
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_val="$2"
				shift
			fi
			_arg_environment="$_val"
			;;
		-c*|--cluster|--cluster=*)
			_val_from_long="${_key##--cluster=}"
			_val_from_short="${_key##-c}"
			if test "$_val_from_long" != "$_key"
			then
				_val="$_val_from_long"
			elif test "$_val_from_short" != "$_key" -a -n "$_val_from_short"
			then
				_val="$_val_from_short"
			else
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_val="$2"
				shift
			fi
			_arg_cluster="$_val"
			;;
		-n*|--namespace|--namespace=*)
			_val_from_long="${_key##--namespace=}"
			_val_from_short="${_key##-n}"
			if test "$_val_from_long" != "$_key"
			then
				_val="$_val_from_long"
			elif test "$_val_from_short" != "$_key" -a -n "$_val_from_short"
			then
				_val="$_val_from_short"
			else
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_val="$2"
				shift
			fi
			_arg_namespace="$_val"
			;;
		-v*|--version|--version=*)
			_val_from_long="${_key##--version=}"
			_val_from_short="${_key##-v}"
			if test "$_val_from_long" != "$_key"
			then
				_val="$_val_from_long"
			elif test "$_val_from_short" != "$_key" -a -n "$_val_from_short"
			then
				_val="$_val_from_short"
			else
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_val="$2"
				shift
			fi
			_arg_version="$_val"
			;;
		-h*|--help)
			print_help
			exit 0
			;;
		*)
			_PRINT_HELP=yes die "FATAL ERROR: Got an unexpected argument '$1'" 1
			;;
	esac
	shift
done

### end Argbash

# Usage. running:
# $ pentagon install-component --name example --environment myenvironment --cluster mycluster --namespace mynamespace --version 1.0
# will output:

###
# This is component-path:  /Users/justin/Documents/work/reactive/workspace/projects/pentagon-proposal/pentagon-wc/lib/pentagon/components/example
# This is environment:  myenvironment
# This is cluster:  mycluster
# This is namespace:  mynamespace
# This is version:  1.0
###

echo "This is component-path: " $_arg_component_path
echo "This is environment: " $_arg_environment
echo "This is cluster: " $_arg_cluster
echo "This is namespace: " $_arg_namespace
echo "This is version: " $_arg_version