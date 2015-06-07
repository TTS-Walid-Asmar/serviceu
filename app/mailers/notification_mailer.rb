class NotificationMailer < ApplicationMailer::Base
    default from: "walid.e.asmar@gmail.com"

    def forum_post_notification(user, forum_post)
        @user = user
        @forum_post = forum_post

        mail(
            to: "#{user.email}",
            subject: "[ServiceU] New post in #{forum_post.forum_thread.title}"
            )
    end
end
