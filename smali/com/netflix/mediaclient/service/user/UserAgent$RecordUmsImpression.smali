.class Lcom/netflix/mediaclient/service/user/UserAgent$RecordUmsImpression;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final mImpressionType:Ljava/lang/String;

.field final mMsgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordUmsImpression;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordUmsImpression;->mMsgName:Ljava/lang/String;

    .line 1027
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordUmsImpression;->mImpressionType:Ljava/lang/String;

    .line 1028
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordUmsImpression;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordUmsImpression;->mMsgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordUmsImpression;->mImpressionType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserWebClient;->recordUmsImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    return-void
.end method
