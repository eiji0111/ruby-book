module SelfAid

  HP = [200]

  def selfaid
    @hp += 100
    p "#{@name}はHPを100回復した！"
  end

  def run
    p "逃げた"
  end

  module_function :run
  class << self
    def sleep
      p "お昼寝"
    end

    def hello
      p "Hello"
    end
  end
end

class Hero
  include SelfAid
  attr_accessor :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  # デフォルトがpublic
  
  def bad(hp)
    slip
    p "さらに#{name}は毒になった"
    new_hp = hp -= 20
    p "#{name}はHPが#{new_hp}になった"
  end

  # privateはレシーバを指定できない！！
  # 子クラス（サブクラス）でも呼び出し可能
  def slip
    new_hp = hp - 5
    p "#{name}は転んで5のダメージを受けた"
    p "#{name}はHPが#{new_hp}になった"
    run
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

  def selfaid
    @hp += 200
    p "#{@name}はHPを200回復した！"
  end
end

hero1 = Hero.new('eiji', 50)

hero1.slip

SelfAid.run

p SelfAid::HP