module RubyTimeModule
    class Clock
        def header
            puts " [ Ruby Time ]"
        end
        
        def nav
            puts "---------------"
            puts "| ----------- |"
            puts "| | NowTime | |"
            puts "| ----------- |"
            puts "| ----------- |"
            puts "| |  Timer  | |"
            puts "| ----------- |"
            puts "---------------"
        end
        
        def command(value)
            case value
                when "NowTime"
                result = nowTime()
                return "---------------\n#{result}\n---------------"
                when "Timer"
                print "Enter a sec\n> "
                sec = (gets.chomp).to_i
                result = timer(sec)
                return "---------------\n#{result}\n---------------"
                else
                return "명령어 에러"
            end
        end

        def nowTime
            time = Time.new
            result = "#{time.year}년 #{time.month}월 #{time.day}일\n" + "#{time.hour}시 #{time.min}분 #{time.sec}초"
            return result
        end
        
        def timer(sec)
            time = Time.new
            sleep sec
            return "#{sec}초 완료"
        end
        
        def last
            puts "\n\n"    
        end
    end
end