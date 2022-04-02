#!/bin/bash

pihole -b -d --regex '(^|\.)Netflix\.com$' '(^|\.)hotstar\.com$' '(^|\.)primevideo\.com$'
