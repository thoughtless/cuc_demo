class Postie < ActiveRecord::Base
  def Postie.find_by_pretty_id(pretty_id)
    Postie.all.detect do |postie|
      postie.name.downcase.gsub(/\W/, '') == pretty_id
    end
  end
end
