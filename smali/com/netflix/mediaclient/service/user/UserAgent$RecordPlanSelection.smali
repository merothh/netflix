.class Lcom/netflix/mediaclient/service/user/UserAgent$RecordPlanSelection;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final mPlanId:Ljava/lang/String;

.field final mPriceTier:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordPlanSelection;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordPlanSelection;->mPlanId:Ljava/lang/String;

    .line 987
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordPlanSelection;->mPriceTier:Ljava/lang/String;

    .line 988
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 992
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordPlanSelection;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordPlanSelection;->mPlanId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordPlanSelection;->mPriceTier:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserWebClient;->recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    return-void
.end method
