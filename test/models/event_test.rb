require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "missing title" do 
  	if params[:title].nil?
  		assert false
  end

  test "lengthy title" do
  	if params[:title].length > 50
  		put "Title is too long."
  		assert false
  end

  test "missing description" do
  	if params[:description].nil?
  		assert false
  end

  test "lengthy description" do
  	if params[:description].length > 200
  		put "Description is too long."
  		assrt false
  end

  test "missing dates" do
  	if params[:time].nil?
  		assert false
  	elsif params[:date].nil?
  		assert false
  end

  test "missing location" do 
  	if params[:location] do
  		assert false
  end

end
