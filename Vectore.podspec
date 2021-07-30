
Pod::Spec.new do |spec|

  spec.name         = "Vectore"
  spec.version      = "0.0.2"
  spec.summary      = "A vector framework written in ObjC"
  spec.description  = <<-DESC
			Provides a 2D vector type to represent and work with vectorial quantities, like velocity.
                   DESC
  spec.homepage     = "https://github.com/Rudigus/vectore"
  spec.license      = "MIT"
  spec.author       = { "Rudigus" => "rodrigo.matos9@hotmail.com" }
  spec.source       = { :git => "https://github.com/Rudigus/vectore.git", :tag => "#{spec.version}" }
  spec.source_files = "Vectore/*"

end
