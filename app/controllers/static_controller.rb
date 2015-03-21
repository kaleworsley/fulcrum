class StaticController < ApplicationController
  class Project
    extend ActiveModel::Model

    attr_accessor :name

    def to_param
      'testcard'
    end
  end

  def testcard
    @project = Project.new
    @project.name = 'Testcard Project'
  end
end
