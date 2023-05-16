connection: "poc_cortex"

# include all the views
include: "/views/**/*.view"

datagroup: josep_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: josep_test_default_datagroup

explore: customer_sales_clusters {}

explore: testaina {}
