.class public final Lo/VR;
.super Lo/Vs;
.source ""

# interfaces
.implements Lo/Wg;
.implements Lo/Wf;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private final d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/WI;

    .line 17
    move-object v1, p1

    check-cast v1, Lo/WI;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vs;-><init>(Lio/reactivex/Observable;[Lo/WI;)V

    iput-object p1, p0, Lo/VR;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    .line 32
    sget-object p1, Lo/VR$3;->e:Lo/VR$3;

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026rIsNotWithinCreditMarks }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$2;-><init>(Lo/VR;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 33
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 44
    new-instance p1, Lo/VR$4;

    invoke-direct {p1, p0}, Lo/VR$4;-><init>(Lo/VR;)V

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026filter { !isWithinMarks }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$4;-><init>(Lo/VR;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 45
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 73
    new-instance p1, Lo/VR$5;

    invoke-direct {p1, p0}, Lo/VR$5;-><init>(Lo/VR;)V

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026.filter { isWithinMarks }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$6;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$6;-><init>(Lo/VR;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 90
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$7;->e:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipCreditsUIPresenter$7;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v4, 0x2

    .line 74
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic b(Lo/VR;)Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;
    .locals 0

    .line 13
    iget-object p0, p0, Lo/VR;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    return-object p0
.end method

.method private final b(Z)V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lo/VR;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/VR;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lo/VR;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;->b(Z)V

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lo/VR;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/VR;->b(Z)V

    return-void
.end method

.method public static synthetic c(Lo/VR;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lo/VR;->b(Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/VR;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lo/VR;->b:Z

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

    .line 13
    invoke-static {p0, p1}, Lo/Wf$Activity;->a(Lo/Wf;Lio/reactivex/Observable;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/VR;->e:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lo/VR;->e:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/VR;->b:Z

    return v0
.end method

.method public d(Lio/reactivex/Observable;)V
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

    .line 13
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/VR;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 13
    invoke-static {p0}, Lo/Wf$Activity;->b(Lo/Wf;)Z

    move-result v0

    return v0
.end method
