#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [seqkit]

hints::
  - class: DockerRequirement
    dockerPull: pegi3s/seqkit

inputs:
  mode: 
    type: string
    inputBinding:
      position: 1
  
  fqfile:
    type: string
    inputBinding:
      prefix: 2
  
  dna2rna:
    type: boolean?
    doc: "hogehoge"
    inputBinding:
       prefix: "--dna2rna"
  
  stdoutfile:
    type: string

outputs:
  outputfile:
    type: stdout

stdout: $(inputs.stdoutfile)


