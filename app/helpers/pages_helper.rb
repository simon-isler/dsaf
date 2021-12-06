# frozen_string_literal: true

module PagesHelper
  def pictures
    Dir.glob('app/webpacker/images/dcs/*').map { |image| File.basename image }
  end
end
