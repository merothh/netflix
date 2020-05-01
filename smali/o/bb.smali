.class Lo/bb;
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

    .line 35
    invoke-direct {p0, p1, p2}, Lo/aT;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    .line 44
    iget-object v0, p0, Lo/bb;->a:Ljava/util/Map;

    const-string v1, "genreid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "NflxHandler"

    const-string v1, "Could not find genre ID"

    .line 46
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 71
    :cond_0
    iget-object v1, p0, Lo/bb;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    new-instance v2, Lo/bb$TaskDescription;

    iget-object v3, p0, Lo/bb;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v2, p0, v3, v0}, Lo/bb$TaskDescription;-><init>(Lo/bb;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lo/zG;->a(Ljava/lang/String;Lo/zU;)Z

    .line 75
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
