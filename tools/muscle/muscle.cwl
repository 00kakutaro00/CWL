#!/usr/bin/env cwl-runner
class: CommandLineTool
baseCommand: [muscle]

hints::
  - class: DockerRequirement
    dockerPull: 

inputs:
  inp1: 
    type: File
    inputBinding:
      position: 1
  
  inp2:
    type: string
    inputBinding:
      prefix: "-f"
  inp3:
    type: boolean?
    doc: "hogehoge"
    inputBinding:
       prefix: "--rna2dna"
  
outputs:
  outputfile
    type: stdout

stdout: $(inputs.inp3)


