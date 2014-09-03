require 'rubygems'
require 'rspec'
require 'pry-byebug'
require_relative '../problems/binary.rb'

describe 'Tree' do 
  it 'should initialize with a first node' do
    first = Tree.new(12)
    expect(first.head.value).to eq(12)
  end

  it 'should be able to add a node' do
    first = Tree.new(12)
    first.add_node(15)
    expect(first.head.right.value).to eq(15)
    # binding.pry 
  end

  it 'should take an array' do
    arr = [1, 2, 3, 4, 5, 6, 7]
    a = Tree.new(arr)
    expect(a.head.value).to eq(4)
  end
end