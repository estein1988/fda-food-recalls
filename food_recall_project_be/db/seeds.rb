SaveRecall.destroy_all
Recall.destroy_all
User.destroy_all

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

user1 = User.create(username: "FoodTracker1", first_name: "Tom", last_name: "Adams")
user2 = User.create(username: "FDABlogger", first_name: "Tracey", last_name: "Green")
user3 = User.create(username: "SafetyGeek", first_name: "Kevin", last_name: "Simon")

recall1 = Recall.create(classification: "Class II", center_classification_date: "20190724", report_date: "20190731", postal_code: "01085-9777", termination_date: "20190731", recall_initiation_date: "20190617", recall_number: "F-1709-2019", city: "Westfield", event_id: "83178", distribution_pattern: "Two Target Stores 1. 98 Veterans Memorial Highway in Commack, New York 2. 160 North Research Place in Central Islip, New York", openfda: "{}", recalling_firm: "C & S Wholesale Grocers, Inc.", voluntary_mandated: "Voluntary: Firm initiated", state: "MA", reason_for_recall: "Products were not held at an appropriate temperature due to a mechanical malfunction during transportation.", initial_firm_notification: "Telephone", status: "Terminated", product_type: "Food", country: "United States", product_description: "DANNON ACTIVIA PEACH AND STRAWBERRY PROBIOTIC YOGURT - 12PK/4OZ CUPS, UPC: 3663203576", code_info: "Exact codes are unknown. The product being recalled was sold on June 17, 2019 at Target Stores in Commack, NY and Central Islip, NY.", address_1: "53 Summit Lock Road", address_2: "53 Medieros Way", product_quantity: "unknown")
recall2 = Recall.create(classification: "Class II", center_classification_date: "20190205", report_date: "20190213", postal_code: "37204-2810", termination_date: "20190305", recall_initiation_date: "20190118", recall_number: "F-0811-2019", city: "Nashville", more_code_info: "null", event_id: "81962", distribution_pattern: "Products were distributed in GA, KY and TN.", openfda: "{}", recalling_firm: "Mrs Grissom's Salads, Inc", voluntary_mandated: "Voluntary: Firm initiated", state: "TN", reason_for_recall: "Undeclared milk allergen.  Product contains two different labels.", initial_firm_notification: "Letter", status: "Terminated", product_type: "Food", country: "United States", product_description: "Mrs GRISSOM'S SELECT OLD FASHIONED PIMENTO CHEESE**Mrs. GRISSOM'S SELECT CRANBERRY PECAN CHICKEN SALAD**INGREDIENTS: Sugar, Cider Vinegar, Water, Egg Yolks*** CONTAINS: Egg, Soy, Pecans", code_info: "Mar 13 2019", address_1: "2500 Bransford Ave", address_2: "", product_quantity: "407 cases")
recall3 = Recall.create(classification: "Class II", center_classification_date: "20161011", report_date: "20161019", postal_code: "17801-3318", termination_date: "20170501", recall_initiation_date: "20160721", recall_number: "F-0014-2017", city: "Sunbury", event_id: "74818", distribution_pattern: "Products were distributed to: PA,NJ,NY,MD,VA", openfda: "{}", recalling_firm: "Weis Markets, Inc., Ice Cream Division", voluntary_mandated: "Voluntary: Firm initiated", state: "PA", reason_for_recall: "WEIS MARKETS IS ISSUING A VOLUNTARY RECALL FOR 30 BAKERY PRODUCTS INCLUDING MUFFINS, COOKIES, AND SHORTBREAD AND BAKED BREAD ITEMS DUE TO THE POTENTIAL PRESENCE OF SMALL METAL FRAGMENTS (2-9MM) IN THE SUGAR TOPPING USED ON THESE PRODUCTS. THE VOLUNTARY ACTION IS BEING TAKEN DUE TO OUR SUPPLIERS RECALL OF THE SUGAR INGREDIENT.", initial_firm_notification: "E-Mail", status: "Terminated", product_type: "Food", country: "United States", product_description: "Gourmet Banana Nut Monster Muffins (4 count)", code_info: "UPC # 2100727004003", address_1: "1000 S 2nd St", address_2: "", product_quantity: "170,186 total units")
recall4 = Recall.create(classification: "Class II", center_classification_date: "20190724", report_date: "20190731", postal_code: "01085-9777", termination_date: "20190731", recall_initiation_date: "20190617", recall_number: "F-1886-2019", city: "Westfield", event_id: "83178", distribution_pattern: "Two Target Stores 1. 98 Veterans Memorial Highway in Commack, New York 2. 160 North Research Place in Central Islip, New York", openfda: "{}", recalling_firm: "C & S Wholesale Grocers, Inc.", voluntary_mandated: "Voluntary: Firm initiated", state: "MA", reason_for_recall: "Products were not held at an appropriate temperature due to a mechanical malfunction during transportation.", initial_firm_notification: "Telephone", status: "Terminated", product_type: "Food", country: "United States", product_description: "SIMPLY ORANGE PULP FREE JUICE - 52 FL OZ  UPC: 2500010000", code_info: "Exact codes are unknown. The product being recalled was sold on June 17, 2019 at Target Stores in Commack, NY and Central Islip, NY.", address_1: "53 Summit Lock Road", address_2: "53 Medieros Way", product_quantity: "unknown")
recall5 = Recall.create(classification: "Class I", center_classification_date: "20141202", report_date: "20141210", postal_code: "33182", termination_date: "20170328", recall_initiation_date: "20141010", recall_number: "F-0604-2015", city: "Miami", event_id: "69516", distribution_pattern: "FL, GA. NC, and TN", openfda: "{}", recalling_firm: "Oasis Brands, Inc", voluntary_mandated: "Voluntary: Firm initiated", state: "FL", reason_for_recall: "Virginia State (VDACS) found Listeria monocytogenes in Lacteos Santa Martha Quesito Casero Fresh Curd (Best by 9/27/14), FDA made an inspection, were the environmental samples collected came up positive also for Listeria monocytogenes, also the Oasis Brands Inc. sent finish products samples to a private lab, the Lacteos Santa Martha Cuajada en Hoja Queso Casero Hecho a Mano Fresh Curd (Best By dates of 10/18/14 and 11/25/14) came also positive for Listeria monocytogenes.  Oasis Brands Inc.  is voluntarily recalling ALL their Lacteos Santa Martha brand products manufactured that are within expiration date.", initial_firm_notification: "Two or more of the following: Email, Fax, Letter, Press Release, Telephone, Visit", status: "Terminated", product_type: "Food", country: "United States", product_description: "Crema Centroamericana (Centroamerican Style Soft Blend Dairy Spread) in individually soft poly/plastic bags labeled in part: Lacteos Santa Martha Crema Centroamericana Net Wt 1LB (16oz)", code_info: "UPC 876593 001898   Best By dates: 07/01/14 thru 12/31/14", address_1: "13439 NW 19 LANE", address_2: "", product_quantity: "6,369 pieces")
recall6 = Recall.create(classification: "Class II", center_classification_date: "20160908", report_date: "20160914", postal_code: "30084-6933", recall_initiation_date: "20160819", recall_number: "F-2106-2016", city: "Tucker", more_code_info: "null", event_id: "75003", distribution_pattern: "CT, FL, GA, MA, MD, NC, NJ, NY, PA, SC, and VA.", openfda: "{}", recalling_firm: "Inland Seafood, Inc.", voluntary_mandated: "Voluntary: Firm initiated", state: "GA", reason_for_recall: "Possible contamination with foreign matter; wood pieces.", initial_firm_notification: "E-Mail", status: "Ongoing", product_type: "Food", country: "United States", product_description: "Spinach Krab & Artichoke Dip, 12 x 8 oz., for Whole Foods Market.", code_info: "Lot numbers: 8-28-16, 9-04-16.", address_1: "1651 Montreal Cir", address_2: "", product_quantity: "35 cases")
recall7 = Recall.create(classification: "Class I", center_classification_date: "20141120", report_date: "20141126", postal_code: "95776-6100", termination_date: "20150519", recall_initiation_date: "20141111", recall_number: "F-0532-2015", city: "Woodland", event_id: "69744", distribution_pattern: "Nationwide", openfda: "{}", recalling_firm: "InHarvest, Inc.", voluntary_mandated: "Voluntary: Firm initiated", state: "CA", reason_for_recall: "Firm was notified by supplier of Garden Vegetable Seasoning that the product has an ingredient that contains milk, and milk is not declared on the label.", initial_firm_notification: "Two or more of the following: Email, Fax, Letter, Press Release, Telephone, Visit", status: "Terminated", product_type: "Food", country: "United States", product_description: "Rio Medley/Garden Vegetable 12/36 oz;  Product number 12310;    Product contains 4 oz. plastic bags of Garden Vegetable Seasoning mix: Ingredients; Maltodextrin, Dehydrated Onion, Dehydrated carrots, Hydrolyzed Corn Protein, Sun-Dried Tomato, Salt, Autolyzed Yeast Extract, Sugar. contains 2%$ of less of each of the following: dehydrated tomato, spices, natural flavor, Citric Acid, Soybean Oil, Silicon Dioxide (anticaking agent)    Seasoning is added to 2 lbs of rice/grain/legume and water.    InHarvest, Inc. Bemidji , MN.", code_info: "Seasoning lot: 4020501 - InHarvest lot numbers:130304, 140128, 140626..   Seasoning lot 4041401 - InHarvest lot numbers: 140626, 140128, 140827.", address_1: "1277 Santa Anita Ct", address_2: "", product_quantity: "111 cases")

recallSave1 = SaveRecall.create(user_id: user1.id, recall_id: recall1.id)
recallSave2 = SaveRecall.create(user_id: user2.id, recall_id: recall2.id)
recallSave3 = SaveRecall.create(user_id: user3.id, recall_id: recall3.id)
recallSave4 = SaveRecall.create(user_id: user1.id, recall_id: recall4.id)
recallSave5 = SaveRecall.create(user_id: user2.id, recall_id: recall5.id)
recallSave6 = SaveRecall.create(user_id: user3.id, recall_id: recall6.id)
recallSave7 = SaveRecall.create(user_id: user1.id, recall_id: recall7.id)