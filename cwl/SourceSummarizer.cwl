#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_demo}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: SourceSummarizer}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: SourceSummarizer
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
  photoz_pdfs:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --photoz_pdfs, separate: true, shellQuote: true}
    label: photoz_pdfs
    type: File
  tomography_catalog:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --tomography_catalog, separate: true,
      shellQuote: true}
    label: tomography_catalog
    type: File
label: SourceSummarizer
outputs:
  source_summary_data:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: source_summary_data
    outputBinding: {glob: source_summary_data.txt}
    type: File
requirements:
  DockerRequirement: {dockerPull: eiffl/ceci:latest}
