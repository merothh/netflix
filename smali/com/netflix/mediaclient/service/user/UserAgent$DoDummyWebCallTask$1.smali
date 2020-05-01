.class Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask$1;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "dummy web call done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
