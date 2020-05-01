.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$4;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$geoPlayabilityResult:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$4;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$4;->val$geoPlayabilityResult:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$4;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$4;->val$geoPlayabilityResult:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V

    .line 330
    return-void
.end method
