class HomeController < ApplicationController
  before_action :set_user, except: [:score]
  
  #test 
  def test_ok
    @test = params[:test_1]
    # num1 = params[:test_1]
    # result = num1
    # if (result == "1")
    #   render plain:"<script type='text/javascript'>alert('정답');</script>"
    #   # render(
    #   #   html: "<script>alert('Yes users!')</script>".html_safe,
    #   #   layout: 'application'
    #   # )
    # else
    #   render plain:"<script type='text/javascript'>alert('땡');</script>"
    #   # render(
    #   #   html: "<script>alert('No users!')</script>".html_safe,
    #   #   layout: 'application'
    #   # )
    # end
  end
  
  def test
    a_date = Time.new(2015, 8, 1, 14, 35, 0)
    b_date = Time.new(2015, 8, 1, 14, 37, 0)
    @test = ((b_date - a_date)).to_i
  end
  
  # 랭킹
  def score
    reset_session
    @scores = Score.order(clear: :asc)
  end
  def fail
    Score.create(
      major: session[:current_user_major],
      number: session[:current_user_number],
      name: session[:current_user_name]
    )
    redirect_to "/home/score"
  end
  
  # 시나리오
  def scenario1
  end
  def scenario2
  end
  def scenario3
  end
  def scenario4
  end
  def scenario5
  end
  def scenario6
  end
  def scenario7
  end
  def scenario8
  end
  def scenario9
  end
  def scenario10
  end
  
  # 문제
  def question1
    
  end
  def question2
  end
  def question3
  end
  def question3_1
  end
  def question3_2
  end
  def question4
  end
  def question5
  end
  def question6
  end
  def question7
  end
  def question8
  end
  def question9
  end
  def question10
  end
  
  # 정답
  def answer1
    num1 = params[:text1]
    num2 = params[:text2]
    num3 = params[:text3]
    num4 = params[:text4]
    question1 = Question.find(1)
    # question1 = "0000"
    result = num1 + num2 + num3 + num4
    
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question1.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario2"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question1
    end
  end
  def answer2
    text1 = params[:text1]
    text2 = params[:text2]
    text3 = params[:text3]
    text4 = params[:text4]
    text5 = params[:text5]
    text6 = params[:text6]
    text7 = params[:text7]
    text8 = params[:text8]
    text9 = params[:text9]
    text10 = params[:text10]
    question2 = Question.find(2)
    result = text1+text2+text3+text4+text5+text6+text7+text8+text9+text10
    
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question2.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario3"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question2
    end
  end
  
  def answer3
    result=params[:major]
    question3 = Question.find(3)
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question3.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario4_1"
    
    elsif (result == "emb")
      redirect_to "/home/scenario4_2"
    
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question3
    end
  end

  def answer3_2
    text1=params[:major]
    num1=params[:lock_2]
    num2=params[:lock_3]
    result=text1+num1+num2
    question3_2 = Question.find(4)
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question3_2.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario5"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question3_2
    end
  end
  
  def answer4_1
    text1 = params[:text1]
    text2 = params[:text2]
    text3 = params[:text3]
    text4 = params[:text4]
    question4_1 = Question.find(5)
    result = text1+text2+text3+text4
    
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question4_1.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario5"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question4_1
    end
  end
  def answer4_2
    num1 = params[:text1]
    num2 = params[:text2]
    num3 = params[:text3]
    question4_2 = Question.find(6)
    result = num1 + num2 + num3
    
    # 여기서부터

    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question4_2.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario4_3"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question4_2
    end
  end
  
  def answer4_3
    result=params[:text1]
    question4_3 = Question.find(7)
  
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question4_3.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario3_2"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question4_3
    end
  end
  def answer5
    text1 = params[:text1]
    text2 = params[:text2]
    text3 = params[:text3]
    question5 = Question.find(8)
    result = text1+text2+text3
    
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question5.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario6"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question5
    end
  end
  
  def answer6
    result= params[:text1]
    question6 = Question.find(9)
    
    # 여기서부터
    check_answer
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question6.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      Score.create(
        major: session[:current_user_major],
        number: session[:current_user_number],
        name: session[:current_user_name],
        clear: @clear,
        clear_m: @clear_m,
        clear_s: @clear_s
      )
      redirect_to "/home/score"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question6
    end
  end
  
  public
  def set_user
    if (session[:current_user_number].nil?)
      redirect_to '/session/new'
    else
      set_time
      @user_name = session[:current_user_name]
    end
  end
  def set_time
    user = User.find_by(user_number: session[:current_user_number])
    @time = user.created_at.in_time_zone("Asia/Seoul").strftime("%B %d, %Y %H:%M:%S")
  end
  def check_answer
    user = User.find_by(user_number: session[:current_user_number])
    starttime = user.created_at.in_time_zone("Asia/Seoul")
    cleartime = Time.now.in_time_zone("Asia/Seoul")
    
    @clear = (cleartime-starttime).to_i
    @clear_m = ((cleartime-starttime)/60).to_i
    @clear_s = ((cleartime-starttime)%60).to_i
  end
end
