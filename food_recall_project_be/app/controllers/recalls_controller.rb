class RecallsController < ApplicationController

    def index
        if params[:search_term]
            @recalls = Recall.where(
                "product_description LIKE :search_term", 
                {
                search_term: "%#{params[:search_term]}%"
                }
            )
        else
            @recalls = Recall.all 
        end
        render json: @recalls.limit(100)
    end

    def show 
        @recall = Recall.find(params[:id])

        render json: @recall, include: [:save_recalls]
    end

    def filterByState
        @recalls = Recall.all.select do |recall|
            recall.state == params[:state]
        end
        render json: @recalls
    end

    def filterByCompany
        @recalls = Recall.all.select do |recall|
            recall.recalling_firm == params[:recalling_firm]
        end
        render json: @recalls
    end

    def filterByRecall
        @recalls = Recall.all.select do |recall|
            recall.recall_number == params[:recall_number]
        end
        render json: @recalls 
    end


    def create 
        @recall = Recall.create({
            classification: params[:classifcation],
            center_classification_date: params[:center_classification_date],
            report_date: params[:report_date],
            postal_code: params[:postal_code],
            termination_date: params[:termination_date],
            recall_initiation_date: params[:recall_initiation_date],
            recall_number: params[:recall_number],
            city: params[:city],
            more_code_info: params[:more_code_info],
            event_id: params[:event_id],
            distribution_pattern: params[:distribution_pattern],
            openfda: params[:openfda],
            recalling_firm: params[:recalling_firm],
            voluntary_mandated: params[:voluntary_mandated],
            state: params[:state],
            reason_for_recall: params[:reason_for_recall],
            initial_firm_notification: params[:initial_firm_notification],
            status: params[:status],
            product_type: params[:product_type],
            country: params[:country],
            product_description: params[:product_description],
            code_info: params[:code_info],
            address_1: params[:address_1],
            address_2: params[:address_2],
            product_quantity: params[:product_quantity]
        })

        render json: @recall
    end

end
