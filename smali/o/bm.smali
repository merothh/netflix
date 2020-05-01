.class Lo/bm;
.super Lo/aT;
.source ""


# instance fields
.field private e:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lo/aT;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 24
    iput-wide p3, p0, Lo/bm;->e:J

    return-void
.end method


# virtual methods
.method public w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 5

    const-string v0, "NflxHandler"

    const-string v1, "Profile gate is required."

    .line 33
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lo/bm;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lo/bm;->a:Ljava/util/Map;

    iget-wide v2, p0, Lo/bm;->e:J

    invoke-static {v0, v1, v2, v3}, Lo/aeb;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)V

    .line 37
    sget-object v0, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    .line 38
    iget-object v1, p0, Lo/bm;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v2, Lo/Zg;->c:Lo/Zg;

    iget-object v3, p0, Lo/bm;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v4, p0, Lo/bm;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 39
    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v4

    .line 38
    invoke-virtual {v2, v3, v0, v4}, Lo/Zg;->e(Landroid/app/Activity;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
