#!/bin/sh
exec erl \
    -pa ebin deps/*/ebin \
    -boot start_sasl \
    -sname hello_dev \
    -s hello \
    -s reloader
