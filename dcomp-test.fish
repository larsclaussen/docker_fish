function dcomp-test
    set r_args
    if test (count $argv) -gt 1;
        set r_args $argv[2..-1];
    end

    # path to where the docker-compose file resides
    cd <my path>;
    # run tests
    docker-compose run --rm $argv[1] bin/test $r_args
end
