class CalendarController < ApplicationController
  def month
    @date = Date.parse(params.fetch(:date, Date.today.to_s))
    #@events = Event.where(start_date: @date.all_month)
    @events = Event.where(start_date: @date.all_month).group_by { |e| e.start_date.to_date }
    # 뭔지 모르겠는데 이렇게 하는게 훨씬 효율적이라고 함!
  end
end

