#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_demo}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: WLGCCov}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: WLGCCov
inputs:
  config:
    doc: Configuration file
    format: YamlFile
    inputBinding: {loadContents: false, prefix: --config, separate: true, shellQuote: true}
    label: config
    type: File
  diagnostic_maps:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --diagnostic_maps, separate: true,
      shellQuote: true}
    label: diagnostic_maps
    type: File
  fiducial_cosmology:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --fiducial_cosmology, separate: true,
      shellQuote: true}
    label: fiducial_cosmology
    type: File
  shear_catalog:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --shear_catalog, separate: true, shellQuote: true}
    label: shear_catalog
    type: File
  source_summary_data:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --source_summary_data, separate: true,
      shellQuote: true}
    label: source_summary_data
    type: File
  tomography_catalog:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --tomography_catalog, separate: true,
      shellQuote: true}
    label: tomography_catalog
    type: File
label: WLGCCov
outputs:
  covariance:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: covariance
    outputBinding: {glob: covariance.txt}
    type: File
requirements:
  DockerRequirement: {dockerPull: eiffl/ceci:latest}
