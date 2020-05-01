.class Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;
.source "SearchActionHandler.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v1, "query"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Could not find query param"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->search(Landroid/app/Activity;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0
.end method
