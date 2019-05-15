require "json"
package = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name               = "RNAwesomeCardIO"
  s.version            = package["version"]
  s.summary            = package["description"]
  s.requires_arc       = true
  s.license            = package["license"]
  s.homepage           = package["homepage"]
  s.authors            = { package["author"]["name"] => package["author"]["email"] }
  s.source             = { :git => s.homepage, :tag => "v#{s.version}" }
  s.source_files       = "ios/*.{h,m}"
  s.platform           = :ios, "8.0"
  s.frameworks         = "UIKit"
  s.dependency           "React"
  s.dependency           "CardIO", "5.4.1"
end
