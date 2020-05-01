.class Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "LogoutActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/login/LogoutActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    const-string/jumbo v0, "LogoutActivity"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    const v3, 0x7f08017c

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->access$000(Lcom/netflix/mediaclient/ui/login/LogoutActivity;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LogoutActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not log user out - status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->access$100(Lcom/netflix/mediaclient/ui/login/LogoutActivity;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->finish()V

    goto :goto_0
.end method
