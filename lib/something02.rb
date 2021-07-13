# 基本的なイミュータブル 4つ
# 数値 integer Float
# シンボル Symbol
# true/false TrueClass FalseClass
# nil NilClass

# モンキーパッチ・・・既存のメソッドを自分の期待する挙動に変更すること（オーバーライドよりも広い意味合い）
# オーバーライド・・・あくまで親クラスのメソッドを子クラスで上書きすること

class Hero
  attr_accessor :name, :hp

  def initialize(name, hp, mp)
    @name = name
    @hp = hp
    @mp = mp
  end

  def magic(incantation)
    incantation == 'hoimi' ? "よくやった" : "まだいける"
    # case incantation
    # when 'hoimi'
    #   @hp += 20
    #   "#{@name}はHPが20回復した！"
    # else
    #   "まだいける"
    # end
  end
end

hero1 = Hero.new("mori", 100, 20)
p hero1.magic('hoimi')
