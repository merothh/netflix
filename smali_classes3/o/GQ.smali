.class public final Lo/GQ;
.super Lo/GK;
.source ""


# instance fields
.field private final b:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/GK;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lo/alA;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/lang/String;",
            "Lo/alA<",
            "-",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLoaded"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lo/GQ;->m()Lo/GI;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/GI;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 39
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v3

    const-string v0, "repo.fetchItem(postId)\n            .take(1)"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$1;

    invoke-direct {v0, p1, p3}, Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/alA;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    .line 44
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$2;

    invoke-direct {p1, p2, p3}, Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$2;-><init>(Ljava/lang/String;Lo/alA;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 40
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lo/GQ;->p()V

    .line 17
    iput-object p1, p0, Lo/GQ;->e:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .line 11
    iget v0, p0, Lo/GQ;->b:I

    return v0
.end method

.method public r()Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Lo/GQ;->x()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()V
    .locals 1

    .line 21
    iget-object v0, p0, Lo/GQ;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lo/GQ;->e(Ljava/lang/String;)Lo/aoU;

    :cond_0
    return-void
.end method
