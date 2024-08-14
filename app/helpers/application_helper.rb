module ApplicationHelper
  def month_offset(date)
    date.beginning_of_month.wday - 1
    #date.beginning_of_month.wday -1 # 이렇게 해서 오류가 나면... 대체 이 빌어먹을 ruby를 누가 쓰겠냐고
  end

  def today?(date)
    date == Date.today
  end

  def today_class(date)
    #"background-color: #F33A6A" if today?(date)
    "bg-rose-200" if today?(date)
  end

end
