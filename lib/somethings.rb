class Hero
  attr_accessor :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  # デフォルトがpublic
  
  def bad
    sulip
    p "さらに#{name}は毒になった"
  end

  private 
  # privateはレシーバを指定できない！！
  # 子クラス（サブクラス）でも呼び出し可能
  def sulip
    new_hp = hp - 5
    p "#{name}は転んで5のダメージを受けた"
    p "#{name}はHPが#{new_hp}になった"
  end
end

class LittleHero < Hero
  TOWN = 'first_town'
  attr_accessor :mp

  def initialize(name, hp, mp)
    super(name, hp)
    @mp = mp
  end

  def item # インスタンスメソッド（インスタンス名.メソッド）
    @mp += 5
  end

  
  def self.magic # クラスメソッド（クラス名.メソッド）
    p "Fire"
  end
end

hero1 = LittleHero.new('eiji', 50, 10)
