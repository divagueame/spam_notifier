class PayloadsController < ApplicationController 

  def create
    @payload = Payload.new(payload_params)

    if @payload.save
      render json: @payload, status: :created, location: @payload
    else
      render json: @payload.errors, status: :unprocessable_entity
    end
  end
 

  private

    def payload_params
      params.require(:payload).permit(:RecordType, :TypeType, :TypeCode, :Name, :Tag, :MessageStream, :Description, :Email, :From, :BouncedAt)
    end
end
