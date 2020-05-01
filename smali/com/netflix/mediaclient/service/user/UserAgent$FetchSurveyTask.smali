.class Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;
.super Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserWebClient;->fetchSurvey(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    return-void
.end method
