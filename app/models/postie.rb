class Postie < ActiveRecord::Base
  def Postie.find_by_pretty_id(pretty_id)
    postie = Postie.all.detect do |postie|
      postie.pretty_id == pretty_id
    end
    raise ActiveRecord::RecordNotFound unless postie
    postie
  end
  
  def pretty_id
    self.name.downcase.gsub(/\W/, '')
  end
  
  def to_param
    self.pretty_id
  end
end
