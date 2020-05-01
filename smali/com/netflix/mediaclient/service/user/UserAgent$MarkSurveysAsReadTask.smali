.class Lcom/netflix/mediaclient/service/user/UserAgent$MarkSurveysAsReadTask;
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


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MarkSurveysAsReadTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 1807
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1808
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MarkSurveysAsReadTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserWebClient;->markSurveysAsRead()V

    .line 1813
    return-void
.end method
