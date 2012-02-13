# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100519123935) do

  create_table "analogobjectgroups", :force => true do |t|
    t.string   "analogobjectgroupid"
    t.integer  "analogobjectgroup_id"
    t.integer  "objectgroup_id"
    t.string   "objectgroupid"
    t.string   "nestedgroupid"
    t.integer  "nestedgroup_id"
    t.integer  "relationstype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "commentid"
    t.string   "targetid"
    t.string   "commenttypeid"
    t.integer  "commenttype_id"
    t.binary   "content"
    t.integer  "sortorder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commenttypes", :force => true do |t|
    t.string   "commenttypeid"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "completedworks", :force => true do |t|
    t.string   "completedworkid"
    t.string   "serviceid"
    t.integer  "service_id"
    t.string   "objectintheprocessionid"
    t.integer  "objectintheprocession_id"
    t.string   "routineid"
    t.integer  "routine_id"
    t.string   "title"
    t.datetime "dtbegin"
    t.datetime "dtend"
    t.float    "price"
    t.integer  "mileage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "objectgroups", :force => true do |t|
    t.string   "objectgroupid"
    t.string   "parentgroupid"
    t.integer  "parent_id"
    t.integer  "position"
    t.string   "title"
    t.date     "dtbegin"
    t.date     "dtend"
    t.integer  "sortorder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "objectgrouptoobjectgroups", :force => true do |t|
    t.integer  "parentgroup_id"
    t.string   "parentgroupid"
    t.integer  "objectgroup_id"
    t.string   "objectgroupid"
    t.integer  "sortorder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "objectintheprocessions", :force => true do |t|
    t.string   "objectintheprocessionid"
    t.string   "objectgroupid"
    t.integer  "objectgroup_id"
    t.string   "objecttypeid"
    t.integer  "objecttype_id"
    t.string   "title"
    t.integer  "sortorder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "objecttypes", :force => true do |t|
    t.string   "objecttypeid"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parameters", :force => true do |t|
    t.string   "parameterid"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parametertoobjectgroups", :force => true do |t|
    t.string   "parametertoobjectgroupid"
    t.string   "parameterid"
    t.string   "objectgroupid"
    t.integer  "parameter_id"
    t.integer  "objectgroup_id"
    t.string   "valuestring"
    t.float    "valuenumber"
    t.boolean  "valueboolean"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parametertoobjectintheprocessions", :force => true do |t|
    t.string   "parametertoobjectintheprocessionid"
    t.string   "parameterid"
    t.integer  "parameter_id"
    t.string   "objectintheprocessionid"
    t.integer  "objectintheprocession_id"
    t.string   "valuestring"
    t.float    "valuenumber"
    t.boolean  "valueboolean"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", :force => true do |t|
    t.string   "partid"
    t.string   "parttypeid"
    t.integer  "parttype_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parttoroutines", :force => true do |t|
    t.string   "parttoroutineid"
    t.string   "partid"
    t.integer  "part_id"
    t.string   "routineid"
    t.integer  "routine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parttoworks", :force => true do |t|
    t.string   "parttoworkid"
    t.string   "partid"
    t.integer  "part_id"
    t.string   "completedworkid"
    t.integer  "completedwork_id"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parttypes", :force => true do |t|
    t.string   "parttypeid"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routines", :force => true do |t|
    t.string   "routineid"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routinetoobjectgroups", :force => true do |t|
    t.string   "routineid"
    t.integer  "routine_id"
    t.string   "objectgroupid"
    t.integer  "objectgroup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "serviceid"
    t.string   "address"
    t.string   "phone"
    t.string   "fax"
    t.string   "title"
    t.string   "googlegeo"
    t.string   "cityid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
