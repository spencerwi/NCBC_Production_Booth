#!/bin/sh

mkdir -p /tmp

# Entry point script used by the Github action that automatically generates our PDFs for printing any time there's a change.
make all
