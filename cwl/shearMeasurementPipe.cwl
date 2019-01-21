#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_demo}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: shearMeasurementPipe}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
doc: |2-

      This pipeline element is a template for a shape measurement tool
      
id: shearMeasurementPipe
inputs:
  DM:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --DM, separate: true, shellQuote: true}
    label: DM
    type: File
  apply_flag:
    doc: Some documentation about this parameter
    inputBinding: {loadContents: false, prefix: --apply_flag, separate: true, shellQuote: true}
    label: apply_flag
    type: boolean?
  config:
    doc: Configuration file
    format: YamlFile
    inputBinding: {loadContents: false, prefix: --config, separate: true, shellQuote: true}
    label: config
    type: File
  metacalibration:
    default: true
    doc: Some documentation about this parameter
    inputBinding: {loadContents: false, prefix: --metacalibration, separate: true,
      shellQuote: true}
    label: metacalibration
    type: boolean?
label: shearMeasurementPipe
outputs:
  shear_catalog:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: shear_catalog
    outputBinding: {glob: shear_catalog.txt}
    type: File
requirements:
  DockerRequirement: {dockerPull: eiffl/ceci:latest}
