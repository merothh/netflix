.class Lo/br;
.super Lo/aT;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lo/aT;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    .line 35
    iget-object v0, p0, Lo/br;->a:Ljava/util/Map;

    const-string v1, "targetid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/aeb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lo/br;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->l()Lo/zN;

    move-result-object v1

    const-string v2, "NflxHandler"

    if-nez v1, :cond_0

    const-string v0, "Sync action is required, MDX agent is null. This should NOT happen!"

    .line 38
    invoke-static {v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 42
    :cond_0
    invoke-static {v1, v0}, Lo/Mn;->b(Lo/zN;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Sync action is required, target is available, sync"

    .line 43
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-interface {v1, v0}, Lo/zN;->e(Ljava/lang/String;)Z

    .line 49
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    :cond_1
    const-string v0, "Sync action is required, target not available, do nothing!"

    .line 51
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
