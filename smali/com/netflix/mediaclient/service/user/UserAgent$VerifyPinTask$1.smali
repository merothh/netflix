.class Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "prefs_last_successful_user_pin"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->enteredPin:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1;ZLcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
