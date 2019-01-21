#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_demo}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: WLGCSummaryStatistic}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: WLGCSummaryStatistic
inputs:
  config:
    doc: Configuration file
    format: YamlFile
    inputBinding: {loadContents: false, prefix: --config, separate: true, shellQuote: true}
    label: config
    type: File
  covariance:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --covariance, separate: true, shellQuote: true}
    label: covariance
    type: File
  source_summary_data:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --source_summary_data, separate: true,
      shellQuote: true}
    label: source_summary_data
    type: File
  twopoint_data:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --twopoint_data, separate: true, shellQuote: true}
    label: twopoint_data
    type: File
label: WLGCSummaryStatistic
outputs:
  wlgc_summary_data:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: wlgc_summary_data
    outputBinding: {glob: wlgc_summary_data.txt}
    type: File
requirements:
  DockerRequirement: {dockerPull: eiffl/ceci:latest}
