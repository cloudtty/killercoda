#!/bin/bash

KIND_EXPERIMENTAL_PROVIDER=docker kind get clusters | grep -q ^kind$