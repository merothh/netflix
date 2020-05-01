.class Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;
.super Lcom/netflix/falkor/CachedModelProxy$CmpTask;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/CachedModelProxy",
        "<TT;>.CmpTask;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final newRating:I

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final trackId:I

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p6, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput p4, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->newRating:I

    iput p5, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->trackId:I

    return-void
.end method

.method private notifyUserRatingChanged(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;)V
    .locals 4

    if-nez p1, :cond_1

    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "null user rating - can\'t notify listeners"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "null service - can\'t notify listeners"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "extra_video_id"

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_user_rating"

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;->getUserRating()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sent notification of video ratings change, video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", rating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;->getUserRating()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "setRating"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$1800(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->notifyUserRatingChanged(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;)V

    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "param"

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->newRating:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "param"

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;->trackId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
