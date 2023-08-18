function validateYaml;
    python3 -c 'import yaml, sys; yaml.safe_load(sys.stdin)' < $argv 
end;
