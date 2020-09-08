Recall.destroy_all

require 'pry'
require 'json'

file = File.read('./lib/food_recalls_fda.json')
data_hash = JSON.parse(file)

data_hash["results"].each do |result|
    Recall.create(
        classification: result["classifcation"],
        center_classification_date: result["center_classification_date"],
        report_date: result["report_date"],
        postal_code: result["postal_code"],
        termination_date: result["termination_date"],
        recall_initiation_date: result["recall_initiation_date"],
        recall_number: result["recall_number"],
        city: result["city"],
        more_code_info: result["more_code_info"],
        event_id: result["event_id"],
        distribution_pattern: result["distribution_pattern"],
        openfda: result["openfda"],
        recalling_firm: result["recalling_firm"],
        voluntary_mandated: result["voluntary_mandated"],
        state: result["state"],
        reason_for_recall: result["reason_for_recall"],
        initial_firm_notification: result["initial_firm_notification"],
        status: result["status"],
        product_type: result["product_type"],
        country: result["country"],
        product_description: result["product_description"],
        code_info: result["code_info"],
        address_1: result["address_1"],
        address_2: result["address_2"],
        product_quantity: result["product_quantity"]
    )
end