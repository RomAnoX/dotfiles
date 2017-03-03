#!/bin/bash
# Docker dinghy start

dinghy start || true
eval $(dinghy env)
