_integrity_init() {
	if [ ! -e ${_CONF_INTEGRITY_DATABASE_FILE} ]; then
		integrity-init
		local exit_status=$?

		if [ $# -gt 0 ]; then
			"$@"
		fi

		exit $exit_status
	fi
}
