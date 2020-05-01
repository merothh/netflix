.class public final Lo/We;
.super Lo/VW;
.source ""

# interfaces
.implements Lo/Wd;
.implements Lo/Wf;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

.field private final c:Lo/Xv;

.field private d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

.field private e:Z


# direct methods
.method public constructor <init>(Lo/Xv;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Xv;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    check-cast v0, Lo/WI;

    invoke-direct {p0, v0, p2}, Lo/VW;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/We;->c:Lo/Xv;

    .line 29
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    iput-object p1, p0, Lo/We;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    .line 32
    iget-object p1, p0, Lo/We;->c:Lo/Xv;

    invoke-interface {p1}, Lo/Xv;->g()V

    .line 36
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;-><init>(Lo/We;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 35
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/We;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/We;->b:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-object p0
.end method

.method public static final synthetic a(Lo/We;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lo/We;->b:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-void
.end method

.method public static final synthetic d(Lo/We;)Lo/Xv;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/We;->c:Lo/Xv;

    return-object p0
.end method

.method private final d(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->headerText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lo/We;->c:Lo/Xv;

    invoke-interface {v0, p1}, Lo/Xv;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final synthetic d(Lo/We;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lo/We;->d(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/We;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lo/Wd$TaskDescription;->e(Lo/Wd;Lio/reactivex/Observable;)V

    return-void
.end method

.method public a_(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lo/Wf$Activity;->a(Lo/Wf;Lio/reactivex/Observable;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lo/We;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-void
.end method

.method public c()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lo/We;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/We;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/We;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0}, Lo/VW;->c()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/We;->a:Ljava/lang/String;

    return-void
.end method

.method public d_(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lo/We;->e:Z

    return-void
.end method

.method public e()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/We;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 17
    invoke-static {p0}, Lo/Wf$Activity;->b(Lo/Wf;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/We;->e:Z

    return v0
.end method
