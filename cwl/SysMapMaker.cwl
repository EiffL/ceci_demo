#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_demo}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: SysMapMaker}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: SysMapMaker
inputs:
  DM:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --DM, separate: true, shellQuote: true}
    label: DM
    type: File
  config:
    doc: Configuration file
    format: YamlFile
    inputBinding: {loadContents: false, prefix: --config, separate: true, shellQuote: true}
    label: config
    type: File
label: SysMapMaker
outputs:
  diagnostic_maps:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: diagnostic_maps
    outputBinding: {glob: diagnostic_maps.txt}
    type: File
requirements:
  DockerRequirement: {dockerPull: eiffl/ceci:latest}
