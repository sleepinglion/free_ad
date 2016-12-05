# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(:id=>1,:email => 'toughjjh@gmail.com',:nickname=>'잠자는-사자',:password => '123456', :password_confirmation => '123456',:photo=>File.open(Rails.root.join("app", "assets", "images", "dog.png")))

Role.create(:id=>1,:title=>'administrator')
Role.create(:id=>2,:title=>'user')
Role.create(:id=>3,:title=>'operator')
Role.create(:id=>4,:title=>'reader')

RolesUser.create(:role_id=>1,:user_id=>1)

ArticleCategory.create(:id=>1,:user_id=>1,:title=>'category1')
ArticleCategory.create(:id=>2,:user_id=>1,:title=>'category2')
ArticleCategory.create(:id=>3,:user_id=>1,:title=>'category3')

Article.create(:id=>1,:user_id=>1,:article_category_id=>1,:title=>'article1',:description=>'awegawegwa')
Article.create(:id=>2,:user_id=>1,:article_category_id=>1,:title=>'article2',:description=>'awegawegwa')
Article.create(:id=>3,:user_id=>1,:article_category_id=>1,:title=>'article3',:description=>'awegawegwa')

ArticlePhoto.create(:id=>1,:article_id=>1,:alt=>'article1',:photo=>File.open(Rails.root.join("app", "assets", "images", "dog.png")))