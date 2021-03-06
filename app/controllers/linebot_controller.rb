class LinebotController < ApplicationController
  require 'line/bot'

  # 環境変数に設定した情報を元にクライアントオブジェクトを作成
  # ここで設定したシークレットが署名チェックのところで使われている
  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end

  # コールバック関数
  def callback
    # リクエストボディ読み込み
    body = request.body.read

    # リクエストヘッダから署名を抜き出す
    signature = request.env['HTTP_X_LINE_SIGNATURE']

    # 署名をチェックし、不正だった場合はBad Requestのエラーを返す
    unless client.validate_signature(body, signature)
      head :bad_request
    end

    # 問題なかった場合はリクエストボディからeventsの配列をパースする
    # ここで返ってくるのはLine::Bot::Event::Classの配列である
    events = client.parse_events_from(body)

    # 配列の要素それぞれに対しイベントタイプで場合分け
    events.each { |event|
      # まずはイベント自体がメッセージイベントかどうかをチェック
      case event
      when Line::Bot::Event::Message
        # 次にメッセージオブジェクトがテキストかどうかをチェック
        case event.type
        when Line::Bot::Event::MessageType::Text
          # 送られてきたテキストの内容をチェック
          text = event.message['text']

          reply = create_reply_message(text)

          # privateメソッドのtemplateを呼び出して応答を行う
          # この時eventオブジェクトに含まれているreplyTokenを使用する
          client.reply_message(event['replyToken'], reply)
        when Line::Bot::Event::MessageType::Sticker
          test_text = {
            "type": "text",
            "text": "ありがとう！"
          }
          client.reply_message(event['replyToken'], test_text)
        end
      end
    }

    # 全部終わったらちゃんとOKレスポンスを返すこと
    head :ok
  end

  private

  # 応答用のメッセージテンプレート
  def create_reply_message(text)

    idol = Idol.find_by(name: text)

    if !idol.nil?
      reply_message = {
        "type": "text",
        "text": <<~IDOL
                名前: #{idol.name}
                年齢: #{idol.age}歳
                誕生日: #{idol.birth.month}月#{idol.birth.day}日
                身長: #{idol.height}cm
                体重: #{idol.weight}kg
                利き手: #{idol.handed}
                3サイズ: #{idol.bwh}
                IDOL
      }
    else
      reply_message = {
        "type": "sticker",
        "packageId": "1",
        "stickerId": "1"
      }
    end
  end
end
