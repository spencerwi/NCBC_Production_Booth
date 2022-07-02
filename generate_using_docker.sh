#!/bin/sh        

docker run --volume "$GITHUB_WORKSPACE:/data" --workdir "/data" spencerwi/ncbc_production_booth_docs
