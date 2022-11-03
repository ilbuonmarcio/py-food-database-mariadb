DROP DATABASE food_database;
CREATE DATABASE food_database;
USE food_database;

-- food_database.acquisition_samples definition

CREATE TABLE `acquisition_samples` (
  `fdc_id_of_sample_food` int(11) DEFAULT NULL,
  `fdc_id_of_acquisition_food` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.agricultural_samples definition

CREATE TABLE `agricultural_samples` (
  `fdc_id` int(11) DEFAULT NULL,
  `acquisition_date` varchar(255) DEFAULT NULL,
  `market_class` varchar(255) DEFAULT NULL,
  `treatment` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.all_downloaded_table_record_counts definition

CREATE TABLE `all_downloaded_table_record_counts` (
  `Table` varchar(255) DEFAULT NULL,
  `Number of Records` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.fndds_derivation definition

CREATE TABLE `fndds_derivation` (
  `SR 28 derivation code` varchar(255) DEFAULT NULL,
  `SR 28 derivation description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.fndds_ingredient_nutrient_value definition

CREATE TABLE `fndds_ingredient_nutrient_value` (
  `ingredient code` int(11) DEFAULT NULL,
  `Ingredient description` text DEFAULT NULL,
  `Nutrient code` int(11) DEFAULT NULL,
  `Nutrient value` varchar(255) DEFAULT NULL,
  `Nutrient value source` varchar(255) DEFAULT NULL,
  `FDC ID` varchar(255) DEFAULT NULL,
  `Derivation code` varchar(255) DEFAULT NULL,
  `SR AddMod year` varchar(255) DEFAULT NULL,
  `Foundation year acquired` int(11) DEFAULT NULL,
  `Start date` varchar(255) DEFAULT NULL,
  `End date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food definition

CREATE TABLE `food` (
  `fdc_id` int(11) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `food_category_id` varchar(255) DEFAULT NULL,
  `publication_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_attribute definition

CREATE TABLE `food_attribute` (
  `id` int(11) DEFAULT NULL,
  `fdc_id` varchar(255) DEFAULT NULL,
  `seq_num` varchar(255) DEFAULT NULL,
  `food_attribute_type_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_attribute_type definition

CREATE TABLE `food_attribute_type` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_calorie_conversion_factor definition

CREATE TABLE `food_calorie_conversion_factor` (
  `food_nutrient_conversion_factor_id` int(11) DEFAULT NULL,
  `protein_value` varchar(255) DEFAULT NULL,
  `fat_value` varchar(255) DEFAULT NULL,
  `carbohydrate_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_category definition

CREATE TABLE `food_category` (
  `id` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_component definition

CREATE TABLE `food_component` (
  `id` int(11) DEFAULT NULL,
  `fdc_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pct_weight` varchar(255) DEFAULT NULL,
  `is_refuse` varchar(255) DEFAULT NULL,
  `gram_weight` varchar(255) DEFAULT NULL,
  `data_points` varchar(255) DEFAULT NULL,
  `min_year_acquired` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_nutrient definition

CREATE TABLE `food_nutrient` (
  `id` int(11) DEFAULT NULL,
  `fdc_id` varchar(255) DEFAULT NULL,
  `nutrient_id` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `data_points` varchar(255) DEFAULT NULL,
  `derivation_id` varchar(255) DEFAULT NULL,
  `min` varchar(255) DEFAULT NULL,
  `max` varchar(255) DEFAULT NULL,
  `median` varchar(255) DEFAULT NULL,
  `loq` varchar(255) DEFAULT NULL,
  `footnote` varchar(255) DEFAULT NULL,
  `min_year_acquired` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_nutrient_conversion_factor definition

CREATE TABLE `food_nutrient_conversion_factor` (
  `id` int(11) DEFAULT NULL,
  `fdc_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_nutrient_derivation definition

CREATE TABLE `food_nutrient_derivation` (
  `id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_nutrient_source definition

CREATE TABLE `food_nutrient_source` (
  `id` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_portion definition

CREATE TABLE `food_portion` (
  `id` int(11) DEFAULT NULL,
  `fdc_id` varchar(255) DEFAULT NULL,
  `seq_num` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `measure_unit_id` varchar(255) DEFAULT NULL,
  `portion_description` text DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `gram_weight` varchar(255) DEFAULT NULL,
  `data_points` varchar(255) DEFAULT NULL,
  `footnote` varchar(255) DEFAULT NULL,
  `min_year_acquired` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_protein_conversion_factor definition

CREATE TABLE `food_protein_conversion_factor` (
  `food_nutrient_conversion_factor_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.food_update_log_entry definition

CREATE TABLE `food_update_log_entry` (
  `id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `last_updated` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.foundation_food definition

CREATE TABLE `foundation_food` (
  `fdc_id` int(11) DEFAULT NULL,
  `NDB_number` varchar(255) DEFAULT NULL,
  `footnote` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.input_food definition

CREATE TABLE `input_food` (
  `id` int(11) DEFAULT NULL,
  `fdc_id` varchar(255) DEFAULT NULL,
  `fdc_id_of_input_food` varchar(255) DEFAULT NULL,
  `seq_num` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `sr_code` varchar(255) DEFAULT NULL,
  `sr_description` text DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `portion_code` varchar(255) DEFAULT NULL,
  `portion_description` text DEFAULT NULL,
  `gram_weight` varchar(255) DEFAULT NULL,
  `retention_code` varchar(255) DEFAULT NULL,
  `survey_flag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.lab_method definition

CREATE TABLE `lab_method` (
  `id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `technique` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.lab_method_code definition

CREATE TABLE `lab_method_code` (
  `id` int(11) DEFAULT NULL,
  `lab_method_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.lab_method_nutrient definition

CREATE TABLE `lab_method_nutrient` (
  `id` int(11) DEFAULT NULL,
  `lab_method_id` int(11) DEFAULT NULL,
  `nutrient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.market_acquisition definition

CREATE TABLE `market_acquisition` (
  `fdc_id` int(11) DEFAULT NULL,
  `brand_description` text DEFAULT NULL,
  `expiration_date` varchar(255) DEFAULT NULL,
  `label_weight` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `acquisition_date` varchar(255) DEFAULT NULL,
  `sales_type` varchar(255) DEFAULT NULL,
  `sample_lot_nbr` varchar(255) DEFAULT NULL,
  `sell_by_date` varchar(255) DEFAULT NULL,
  `store_city` varchar(255) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `store_state` varchar(255) DEFAULT NULL,
  `upc_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.measure_unit definition

CREATE TABLE `measure_unit` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.nutrient definition

CREATE TABLE `nutrient` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `nutrient_nbr` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.nutrient_incoming_name definition

CREATE TABLE `nutrient_incoming_name` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nutrient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.retention_factor definition

CREATE TABLE `retention_factor` (
  `id` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `food_group_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.sample_food definition

CREATE TABLE `sample_food` (
  `fdc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.sr_legacy_food definition

CREATE TABLE `sr_legacy_food` (
  `fdc_id` int(11) DEFAULT NULL,
  `NDB_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.sub_sample_food definition

CREATE TABLE `sub_sample_food` (
  `fdc_id` int(11) DEFAULT NULL,
  `fdc_id_of_sample_food` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.sub_sample_result definition

CREATE TABLE `sub_sample_result` (
  `food_nutrient_id` int(11) DEFAULT NULL,
  `adjusted_amount` varchar(255) DEFAULT NULL,
  `lab_method_id` int(11) DEFAULT NULL,
  `nutrient_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.survey_fndds_food definition

CREATE TABLE `survey_fndds_food` (
  `fdc_id` int(11) DEFAULT NULL,
  `food_code` int(11) DEFAULT NULL,
  `wweia_category_code` int(11) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- food_database.wweia_food_category definition

CREATE TABLE `wweia_food_category` (
  `wweia_food_category` int(11) DEFAULT NULL,
  `wweia_food_category_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;