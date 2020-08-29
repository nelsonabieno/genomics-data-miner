class GeneController < ApplicationController
  before_action :find_data, only: [:data_miner]


  def index
    @result = ""
    @description = ""
  end

  def data_miner
    if @gene_variant.nil?
      @error = "Invalid Transcript Id Supplied!"
      render 'index'
    else
      gene_filter
    end
  end

  def result
    @result
    @description
  end

  def gene_filter
    transcript = @gene_variant[:transcript_id]
    @transcript_no = transcript[9..transcript.size].to_i

    if @gene_variant[:translation_id].nil?
      @gene_variant[:translation_id] = ''
    end

    translate = @gene_variant[:translation_id]
    @translate_no = translate.empty? ? 0 : translate[9..translate.size].to_i

    if ((!protein_coding?) && retained_intron? && (!protein_available?) &&  @gene_variant[:translation_id].empty?)
      @result = "NEUTRAL"
      @color= "blue"
    end

    if protein_coding? && protein_available? && (@translate_no > @transcript_no)
      @result = "PATHOGENIC"
      @description = "(due to gain of function)"
      @color= "red"
    end

    if protein_coding? && protein_available? && (@translate_no < @transcript_no)
      @result = "NEUTRAL"
      @description = "(due to loss of function)"
      @color= "blue"
    end
  end

  private
  def find_data
    @gene_variant = VariantGene.find_by_transcript_id(params[:transcript_id])
  end

  def protein_available?
    @gene_variant[:protein].downcase != 'no protein'
  end

  def protein_coding?
    @gene_variant[:biotype].downcase == 'protein coding' || @gene_variant[:biotype].downcase == 'nonsense mediated decay'
  end

  def retained_intron?
    @gene_variant[:biotype].downcase == 'retained intron' || @gene_variant[:biotype].downcase == 'processed transcript'
  end

  def data_miner_params
    params.permit (:transcript_id)
  end
end
