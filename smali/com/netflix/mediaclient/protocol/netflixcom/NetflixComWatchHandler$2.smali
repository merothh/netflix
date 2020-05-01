.class Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "NetflixComWatchHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field final synthetic val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

.field final synthetic val$targetDialUuid:Ljava/lang/String;

.field final synthetic val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    iput-object p4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$targetDialUuid:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixComWatchHandler"

    const-string/jumbo v1, "%s:%s scene: %s, position: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    invoke-static {v4}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->access$000(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->access$102(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;I)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$targetDialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->play(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    return-void
.end method
