# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

VariantGene.create([{ name: 'HFE-214', transcript_id: 'ENST00000488199.5', protein: '246aa', translation_id: 'ENSP00000420559.1', biotype: 'protein coding'  },
                          { name: 'HFE-213', transcript_id: 'ENST00000486147.1', protein: 'no protein', translation_id: '', biotype: 'retained intron'  },
                          { name: 'HFE-212', transcript_id: 'ENST00000485729.1', protein: '55aa', translation_id: 'ENSP00000417534.1', biotype: 'protein coding'  },
                          { name: 'HFE-211', transcript_id: 'ENST00000483782.1', protein: 'no protein', translation_id: '', biotype: 'retained intron'  },
                          { name: 'HFE-210', transcript_id: 'ENST00000470149.5', protein: '345aa', translation_id: 'ENSP00000419725.1', biotype: 'protein coding'  },
                          { name: 'HFE-209', transcript_id: 'ENST00000461397.5', protein: '334aa', translation_id: 'ENSP00000420802.1', biotype: 'protein coding'  },
                          { name: 'HFE-208', transcript_id: 'ENST00000397022.7', protein: '325aa', translation_id: 'ENSP00000380217.3', biotype: 'protein coding'  },
                          { name: 'HFE-207', transcript_id: 'ENST00000357618.9', protein: '348aa', translation_id: 'ENSP00000417404.1', biotype: 'protein coding'  },
                          { name: 'HFE-206', transcript_id: 'ENST00000353147.9', protein: '168aa', translation_id: 'ENSP00000312342.5', biotype: 'protein coding'  },
                          { name: 'HFE-205', transcript_id: 'ENST00000352392.8', protein: '76aa', translation_id: 'ENSP00000315936.4', biotype: 'protein coding'  },
                          { name: 'HFE-204', transcript_id: 'ENST00000349999.8', protein: '260aa', translation_id: 'ENSP00000259699.6', biotype: 'protein coding'  },
                          { name: 'HFE-203', transcript_id: 'ENST00000336625.12', protein: '242aa', translation_id: 'ENSP00000337819.8', biotype: 'protein coding'  },
                          { name: 'HFE-202', transcript_id: 'ENST00000317896.11', protein: '256aa', translation_id: 'ENSP00000313776.7', biotype: 'protein coding'  },
                          { name: 'HFE-201', transcript_id: 'ENST00000309234.10', protein: '337aa', translation_id: 'ENSP00000311698.6', biotype: 'protein coding'  }
                   ])
NormalGene.create({name: 'normal_gene', biotype: 'protein coding', chromosome_position: 6})
