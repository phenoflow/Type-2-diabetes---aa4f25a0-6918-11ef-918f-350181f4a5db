cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  type-2-diabetes-mellitus---secondary:
    run: type-2-diabetes-mellitus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  hyperosmolar-type-2-diabetes---secondary:
    run: hyperosmolar-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus---secondary/output
  type-2-diabetes-glaucoma---secondary:
    run: type-2-diabetes-glaucoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: hyperosmolar-type-2-diabetes---secondary/output
  type-2-diabetes-kidney---secondary:
    run: type-2-diabetes-kidney---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-glaucoma---secondary/output
  nephropathy-type-2-diabetes---secondary:
    run: nephropathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-kidney---secondary/output
  chronic-type-2-diabetes---secondary:
    run: chronic-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: nephropathy-type-2-diabetes---secondary/output
  other-type-2-diabetes---secondary:
    run: other-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: chronic-type-2-diabetes---secondary/output
  ophthalmic-type-2-diabetes---secondary:
    run: ophthalmic-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-type-2-diabetes---secondary/output
  type-2-diabetes-specified---secondary:
    run: type-2-diabetes-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ophthalmic-type-2-diabetes---secondary/output
  proliferative-type-2-diabetes---secondary:
    run: proliferative-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-specified---secondary/output
  moderate-type-2-diabetes---secondary:
    run: moderate-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: proliferative-type-2-diabetes---secondary/output
  severe-type-2-diabetes---secondary:
    run: severe-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: moderate-type-2-diabetes---secondary/output
  type-2-diabetes-cataract---secondary:
    run: type-2-diabetes-cataract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: severe-type-2-diabetes---secondary/output
  neurologic-type-2-diabetes---secondary:
    run: neurologic-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-cataract---secondary/output
  mononeuropathy-type-2-diabetes---secondary:
    run: mononeuropathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: neurologic-type-2-diabetes---secondary/output
  polyneuropathy-type-2-diabetes---secondary:
    run: polyneuropathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: mononeuropathy-type-2-diabetes---secondary/output
  autonomic-type-2-diabetes---secondary:
    run: autonomic-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: polyneuropathy-type-2-diabetes---secondary/output
  type-2-diabetes-amyotrophy---secondary:
    run: type-2-diabetes-amyotrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: autonomic-type-2-diabetes---secondary/output
  type-2-diabetes-circulatory---secondary:
    run: type-2-diabetes-circulatory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-amyotrophy---secondary/output
  angiopathy-type-2-diabetes---secondary:
    run: angiopathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-circulatory---secondary/output
  arthropathy-type-2-diabetes---secondary:
    run: arthropathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: angiopathy-type-2-diabetes---secondary/output
  neuropathy-type-2-diabetes---secondary:
    run: neuropathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: arthropathy-type-2-diabetes---secondary/output
  type-2-diabetes-complication---secondary:
    run: type-2-diabetes-complication---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: neuropathy-type-2-diabetes---secondary/output
  type-2-diabetes-dermatitis---secondary:
    run: type-2-diabetes-dermatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-complication---secondary/output
  type-2-diabetes-forefoot---secondary:
    run: type-2-diabetes-forefoot---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-dermatitis---secondary/output
  periodontal-type-2-diabetes---secondary:
    run: periodontal-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-forefoot---secondary/output
  type-2-diabetes-hypoglycemia---secondary:
    run: type-2-diabetes-hypoglycemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: periodontal-type-2-diabetes---secondary/output
  type-2-diabetes-hyperglycemia---secondary:
    run: type-2-diabetes-hyperglycemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-hypoglycemia---secondary/output
  type-2-diabetes-controlled---secondary:
    run: type-2-diabetes-controlled---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-hyperglycemia---secondary/output
  type-2-diabetes-nigrican---secondary:
    run: type-2-diabetes-nigrican---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-controlled---secondary/output
  type-2-diabetes-nonobese---secondary:
    run: type-2-diabetes-nonobese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-nigrican---secondary/output
  multiple-type-2-diabetes---secondary:
    run: multiple-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-nonobese---secondary/output
  type-2-diabetes-ulcer---secondary:
    run: type-2-diabetes-ulcer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: multiple-type-2-diabetes---secondary/output
  type-2-diabetes-gangrene---secondary:
    run: type-2-diabetes-gangrene---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-ulcer---secondary/output
  type-2-diabetes-preexisting---secondary:
    run: type-2-diabetes-preexisting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-gangrene---secondary/output
  type-2-diabetes-treated---secondary:
    run: type-2-diabetes-treated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-preexisting---secondary/output
  young-type-2-diabetes---secondary:
    run: young-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-treated---secondary/output
  type-2-diabetes-pregnancy---secondary:
    run: type-2-diabetes-pregnancy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: young-type-2-diabetes---secondary/output
  type-2-diabetes-state---secondary:
    run: type-2-diabetes-state---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-pregnancy---secondary/output
  renal-type-2-diabetes---secondary:
    run: renal-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-state---secondary/output
  type-2-diabetes-microalbuminuria---secondary:
    run: type-2-diabetes-microalbuminuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: renal-type-2-diabetes---secondary/output
  type-2-diabetes-acidosis---secondary:
    run: type-2-diabetes-acidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-microalbuminuria---secondary/output
  oculopathy-type-2-diabetes---secondary:
    run: oculopathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-acidosis---secondary/output
  type-2-diabetes-proteinuria---secondary:
    run: type-2-diabetes-proteinuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: oculopathy-type-2-diabetes---secondary/output
  type-2-diabetes-associated---secondary:
    run: type-2-diabetes-associated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-proteinuria---secondary/output
  type-2-diabetes-vessel---secondary:
    run: type-2-diabetes-vessel---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-associated---secondary/output
  type-2-diabetes-erectile---secondary:
    run: type-2-diabetes-erectile---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-vessel---secondary/output
  type-2-diabetes-remission---secondary:
    run: type-2-diabetes-remission---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-erectile---secondary/output
  type-2-diabetes-gastroparesis---secondary:
    run: type-2-diabetes-gastroparesis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-remission---secondary/output
  mixed-type-2-diabetes---secondary:
    run: mixed-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-gastroparesis---secondary/output
  type-2-diabetes-stage---secondary:
    run: type-2-diabetes-stage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: mixed-type-2-diabetes---secondary/output
  type-2-diabetes-dyslipidemia---secondary:
    run: type-2-diabetes-dyslipidemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-stage---secondary/output
  type-2-diabetes-angina---secondary:
    run: type-2-diabetes-angina---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-dyslipidemia---secondary/output
  retinopathy-type-2-diabetes---secondary:
    run: retinopathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-angina---secondary/output
  type-2-diabetes-hemorrhage---secondary:
    run: type-2-diabetes-hemorrhage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: retinopathy-type-2-diabetes---secondary/output
  dermopathy-type-2-diabetes---secondary:
    run: dermopathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-hemorrhage---secondary/output
  retinal-type-2-diabetes---secondary:
    run: retinal-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: dermopathy-type-2-diabetes---secondary/output
  type-2-diabetes-blindness---secondary:
    run: type-2-diabetes-blindness---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: retinal-type-2-diabetes---secondary/output
  type-2-diabetes-hypertension---secondary:
    run: type-2-diabetes-hypertension---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-blindness---secondary/output
  nephrotic-type-2-diabetes---secondary:
    run: nephrotic-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-hypertension---secondary/output
  type-2-diabetes-malnutrition---secondary:
    run: type-2-diabetes-malnutrition---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: nephrotic-type-2-diabetes---secondary/output
  type-2-diabetes-osteomyelitis---secondary:
    run: type-2-diabetes-osteomyelitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-malnutrition---secondary/output
  type-2-diabetes-detachment---secondary:
    run: type-2-diabetes-detachment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-osteomyelitis---secondary/output
  type-2-diabetes-iridis---secondary:
    run: type-2-diabetes-iridis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-detachment---secondary/output
  reactive-type-2-diabetes---secondary:
    run: reactive-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-iridis---secondary/output
  type-2-diabetes-ankle---secondary:
    run: type-2-diabetes-ankle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: reactive-type-2-diabetes---secondary/output
  type-2-diabetes-midfoot---secondary:
    run: type-2-diabetes-midfoot---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-ankle---secondary/output
  type-2-diabetes-palsy---secondary:
    run: type-2-diabetes-palsy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-midfoot---secondary/output
  type-2-diabetes-dialysis---secondary:
    run: type-2-diabetes-dialysis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-palsy---secondary/output
  macular-type-2-diabetes---secondary:
    run: macular-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-dialysis---secondary/output
  type-2-diabetes-stasis---secondary:
    run: type-2-diabetes-stasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: macular-type-2-diabetes---secondary/output
  cooccurrent-type-2-diabetes---secondary:
    run: cooccurrent-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-stasis---secondary/output
  ischemic-type-2-diabetes---secondary:
    run: ischemic-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: cooccurrent-type-2-diabetes---secondary/output
  type-2-diabetes-extremity---secondary:
    run: type-2-diabetes-extremity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: ischemic-type-2-diabetes---secondary/output
  type-2-diabetes-sensory---secondary:
    run: type-2-diabetes-sensory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-extremity---secondary/output
  above-type-2-diabetes---secondary:
    run: above-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-sensory---secondary/output
  type-2-diabetes-unawareness---secondary:
    run: type-2-diabetes-unawareness---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: above-type-2-diabetes---secondary/output
  concurrent-type-2-diabetes---secondary:
    run: concurrent-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-unawareness---secondary/output
  type-2-diabetes-hyperlipidemia---secondary:
    run: type-2-diabetes-hyperlipidemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: concurrent-type-2-diabetes---secondary/output
  cheiropathy-type-2-diabetes---secondary:
    run: cheiropathy-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-hyperlipidemia---secondary/output
  type-2-diabetes-mellitis---secondary:
    run: type-2-diabetes-mellitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: cheiropathy-type-2-diabetes---secondary/output
  right-type-2-diabetes---secondary:
    run: right-type-2-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitis---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: right-type-2-diabetes---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
