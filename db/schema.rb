# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140613105514) do

  create_table "children", :force => true do |t|
    t.integer  "child_age"
    t.datetime "child_DOB"
    t.integer  "customer_feedback_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "customer_feedbacks", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "pincode"
    t.datetime "dob"
    t.integer  "mobile_number"
    t.integer  "phone_no"
    t.string   "email"
    t.string   "education"
    t.string   "occupation"
    t.string   "jobpost"
    t.string   "Name_of_company"
    t.integer  "experience"
    t.integer  "income"
    t.integer  "economical_liability"
    t.integer  "number_of_child"
    t.string   "years_intend_to_work"
    t.integer  "short_term_goals"
    t.integer  "long_term_goals"
    t.integer  "age_of_retirement"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "investments", :force => true do |t|
    t.integer  "fd"
    t.integer  "market"
    t.integer  "gold"
    t.integer  "real_estate"
    t.integer  "customer_feedback_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "personal_assets", :force => true do |t|
    t.boolean  "house_owned"
    t.boolean  "house_rented"
    t.boolean  "house_co_providede"
    t.boolean  "four_wheeler"
    t.integer  "no_of_four_wheeler"
    t.boolean  "two_wheeler"
    t.integer  "no_of_two_wheelers"
    t.boolean  "no_vehical"
    t.integer  "customer_feedback_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "planneds", :force => true do |t|
    t.boolean  "child_education"
    t.boolean  "child_marriage"
    t.boolean  "retirement_fund"
    t.integer  "customer_feedback_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "references", :force => true do |t|
    t.string   "name"
    t.integer  "contact_no"
    t.string   "relation"
    t.integer  "customer_feedback_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

end
