class ZebraController < ApplicationController
  def home

    render({:template => "calc/home"})
  end

  def square

    render({:template => "calc/home"})
  end

  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({:template => "calc/square_results"})
  end

  def square_root

    render({:template => "calc/square_root"})
  end

  def root_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 0.5
    render({:template => "calc/root_results"})
  end
  
  def payment

    render({:template => "calc/payment"})
  end

  def payment_results
    @apr = params.fetch("users_apr").to_f
    @years = params.fetch("users_years").to_f
    @pv = params.fetch("users_pv").to_f
    
    @the_result = (@apr/100/12 * @pv)/(1-(1+@apr/100/12)** (-1.0 * @years*12))
    render({:template => "calc/payment_results"})
  end

  def random

    render({:template => "calc/random"})
  end
  
  def random_results
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    
    @the_result = rand(@min..@max)
    render({:template => "calc/random_results"})
  end
end 
