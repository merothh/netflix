.class Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask$1;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;)V
    .locals 0

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurveyFetched(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask$1$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask$1;Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1767
    return-void
.end method
