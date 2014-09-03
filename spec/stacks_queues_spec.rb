require 'rubygems'
require 'rspec'
require 'pry-byebug'
require_relative '../problems/stacks_queues.rb'


describe 'LinkedList' do 
  it 'should initialize' do 
    a = LinkedList.new
    a.push(36)
    expect(a.head.value).to eq(36)
    expect(a.head.next_node).to eq(nil)
  end

  it 'should be able to push a new value to the end' do
    a = LinkedList.new
    a.push(36)
    a.push(54)
    expect(a.head.value).to eq(36)
    expect(a.head.next_node.value).to eq(54)
    expect(a.tail.value).to eq(54)
    expect(a.tail.next_node).to eq(nil)
  end

  it 'should be able to shift a node from the beginning' do
    a = LinkedList.new
    a.push(36)
    a.push(54)
    a.push(15)
    a.shift
    expect(a.head.value).to eq(54)
    expect(a.head.next_node.value).to eq(15)
    expect(a.tail.value).to eq(15)
  end
end