.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;
.super Ljava/lang/Object;
.source "OfflineAgent.java"


# instance fields
.field public final mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field public final mPlayableId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 0

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1261
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;->mPlayableId:Ljava/lang/String;

    .line 1262
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 1263
    return-void
.end method
