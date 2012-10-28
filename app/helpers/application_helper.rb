# -*- encoding : utf-8 -*-
module ApplicationHelper
	def seotitle
    return @title ? @title + " | Гимнастика для лица" : "Гимнастика для лица"
  end
  def seodescription
    return @seodesc ? @seodesc + " | Гимнастика для лица" : "Гимнастика для лица"
  end
  def seokeywords
    return @seokeys ? @seokeys + " | Гимнастика для лица" : "Гимнастика для лица"
  end
end
