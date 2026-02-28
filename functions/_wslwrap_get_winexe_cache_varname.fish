function _wslwrap_get_winexe_cache_varname --argument-names cmd --description "Get the cache variable name for a given Windows command"
    # Sanitize: replace any character that is not alphanumeric or underscore with underscore
    set -l sanitized (string replace --all --regex '[^a-zA-Z0-9_]' '_' $cmd)
    echo (_wslwrap_get_winexe_prefix)$sanitized
end
