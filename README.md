# fault_detector

*** nopsled64's malicious activity scanner ***

(C) Copyright 2018

This script will scan the current system's internal motherboard architecture to identify overflow segmentation faults.

Two details will be flagged as part of this process:
  - Any segmentations pre-authorised by the vendor will be flagged as 'PRE-AUTHORISED SEGMENTATION ALIGNMENT'
  - Articles with malicious activity associated with supply chain dislocation attacks will be flagged with the warning 'MALICIOUS FINGERPRINT IDENTIFIED'
