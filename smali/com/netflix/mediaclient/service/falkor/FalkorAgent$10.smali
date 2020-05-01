.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$10;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$10;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "fetchPreAppData - prefetch done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
