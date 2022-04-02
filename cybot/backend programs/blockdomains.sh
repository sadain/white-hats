#!/bin/bash

pihole --regex '(^|\.)Netflix\.com$' '(^|\.)hotstar\.com$' '(^|\.)primevideo\.com$'
