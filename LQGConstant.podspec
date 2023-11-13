#
# Be sure to run `pod lib lint LQGConstant.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    # 名称
    s.name = 'LQGConstant'
    # 版本
    s.version = '0.0.1'
    # 摘要
    s.summary = '常量'
    # 详细说明
    s.description = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    # 维护者
    s.authors = { '罗建' => '362130376@qq.com' }
    # 许可证
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    # 主页
    s.homepage = 'https://github.com/KyleWhale/LQGConstant.git'
    # 检索地址
    s.source = { :git => 'https://github.com/KyleWhale/LQGConstant.git', :tag => s.version.to_s }
    # 部署目标
    s.ios.deployment_target = '11.0'
    # 源文件
    s.source_files = 'LQGConstant/Classes/**/*'
end
