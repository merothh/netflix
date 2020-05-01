.class public final Lo/EP;
.super Lo/EO;
.source ""


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;",
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Lo/ES;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct/range {p0 .. p5}, Lo/EO;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V

    .line 28
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/SeasonSelectionUIPresenter_Ab18255$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonSelectionUIPresenter_Ab18255$1;-><init>(Lo/EP;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 35
    sget-object p1, Lcom/netflix/mediaclient/ui/details/presenter/SeasonSelectionUIPresenter_Ab18255$2;->a:Lcom/netflix/mediaclient/ui/details/presenter/SeasonSelectionUIPresenter_Ab18255$2;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p2

    .line 27
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;ILo/amc;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 14
    move-object p4, v0

    check-cast p4, Lo/ES;

    :cond_0
    move-object v5, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 15
    move-object p5, v0

    check-cast p5, Ljava/lang/String;

    :cond_1
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lo/EP;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lo/EP;Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lo/EP;->c:Z

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lo/EP;->c:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-super {p0}, Lo/EO;->d()V

    :cond_0
    return-void
.end method
