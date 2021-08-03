class InquiryMailer < ApplicationMailer
  default from: "engineer0906ryo@gmail.com"   # 送信元アドレス

    def received_email(inquiry)
      @inquiry = inquiry
      mail(:to => "engineer0906ryo@gmail.com", :subject => 'お問い合わせがありました')
    end

    def thanks_email(inquiry)
      @inquiry = inquiry
      mail(:to => inquiry.email, :subject => 'お問い合わせを承りました')
    end


end
