.class Lo/bl;
.super Lo/aT;
.source ""


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
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

    .line 28
    invoke-direct {p0, p1, p2}, Lo/aT;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 3

    .line 34
    iget-object v0, p0, Lo/bl;->a:Ljava/util/Map;

    const-string v1, "query"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "NflxHandler"

    const-string v1, "Could not find query param"

    .line 36
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object v1

    sget-object v2, Lo/u$VoiceInteractor;->e:Lo/u$VoiceInteractor;

    .line 40
    invoke-virtual {v1, v2}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object v0

    iget-object v1, p0, Lo/bl;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 42
    invoke-virtual {v0, v1}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
