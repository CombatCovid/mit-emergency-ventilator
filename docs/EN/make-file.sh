pandoc  metadata-pandoc.yaml 01-Getting-started.md 02-BOM-instructable.md 03-Key-Ventilation-Specifications.md 04-Clinical-studies.md 05-Mechanics.md 06-Electronics.md -s  --number-sections  --toc  --mathjax  --filter=pandoc-crossref.exe --filter=pandoc-citeproc.exe  --filter pandoc-eqnos -o  MIT-E-Vent-Project-Version-3.pdf
