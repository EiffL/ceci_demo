#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_demo}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: WLGCSelector}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: WLGCSelector
inputs:
  config:
    doc: Configuration file
    format: YamlFile
    inputBinding: {loadContents: false, prefix: --config, separate: true, shellQuote: true}
    label: config
    type: File
  photoz_pdfs:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --photoz_pdfs, separate: true, shellQuote: true}
    label: photoz_pdfs
    type: File
  shear_catalog:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --shear_catalog, separate: true, shellQuote: true}
    label: shear_catalog
    type: File
label: WLGCSelector
outputs:
  tomography_catalog:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: tomography_catalog
    outputBinding: {glob: tomography_catalog.txt}
    type: File
requirements:
  DockerRequirement: {dockerPull: eiffl/ceci:latest}
