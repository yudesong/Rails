#encoding:utf-8
class Product < ActiveRecord::Base

       #添加效验字段
       validates :title, :description, :image_url, :presence=>true
       validates :price, :numericality =>{:greater_than_or_equal_to =>0.01}
       validates :title, :uniqueness =>true
       validates :image_url, :format =>{:with =>%r{\.(jpg|gif|png)}i,:message =>'必须是jpg,png,gif格式的图片'}	 

       has_many :line_items
       before_destroy :ensure_ont_referenced_by_any_line_item
       private 
       def ensure_ont_referenced_by_any_line_item
       	if line_items.empty?
       	   return true
       	else
       	   errors.add(:base, 'Line Items present')
       	   return false
       	 end  
       end
end
