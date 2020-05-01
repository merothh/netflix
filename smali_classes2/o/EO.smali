.class public Lo/EO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation


# instance fields
.field private a:Lo/SimpleExpandableListAdapter;

.field private b:Z

.field private final c:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

.field private e:Z


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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    iput-object p3, p0, Lo/EO;->c:Lio/reactivex/Observable;

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lo/EO;->e:Z

    .line 29
    iput-boolean p1, p0, Lo/EO;->b:Z

    .line 34
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;-><init>(Lo/EO;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 33
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 63
    iget-object p1, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lo/EO;->c:Lio/reactivex/Observable;

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 65
    sget-object p2, Lo/EO$4;->a:Lo/EO$4;

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "uiView.uiEventsThatNeeds\u2026SeasonsSelectionClicked }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$3;-><init>(Lo/EO;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 66
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 74
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;-><init>(Lo/EO;)V

    check-cast p1, Lo/alN;

    invoke-static {p4, p5, p1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;ILo/amc;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 23
    move-object p4, v0

    check-cast p4, Lo/ES;

    :cond_0
    move-object v5, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 24
    move-object p5, v0

    check-cast p5, Ljava/lang/String;

    :cond_1
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lo/EO;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lo/EO;)Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    return-object p0
.end method

.method public static final synthetic b(Lo/EO;Ljava/util/List;)Lo/SimpleExpandableListAdapter;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lo/EO;->e(Ljava/util/List;)Lo/SimpleExpandableListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/EO;)Lio/reactivex/Observable;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/EO;->c:Lio/reactivex/Observable;

    return-object p0
.end method

.method private final d(Lo/SimpleExpandableListAdapter;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Lo/SimpleExpandableListAdapter;->b()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->c()V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->g()V

    :goto_0
    if-lez v0, :cond_1

    .line 99
    invoke-virtual {p1}, Lo/SimpleExpandableListAdapter;->d()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-virtual {p1}, Lo/SimpleExpandableListAdapter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ba;

    invoke-interface {p1}, Lo/Ba;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "model.getSelected().title"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_1
    iget-object p1, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final e(Ljava/util/List;)Lo/SimpleExpandableListAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Ba;",
            ">;)",
            "Lo/SimpleExpandableListAdapter;"
        }
    .end annotation

    .line 131
    new-instance v0, Lo/SimpleExpandableListAdapter;

    invoke-direct {v0, p1}, Lo/SimpleExpandableListAdapter;-><init>(Ljava/util/List;)V

    .line 132
    invoke-virtual {v0}, Lo/SimpleExpandableListAdapter;->e()Lio/reactivex/Observable;

    move-result-object p1

    .line 133
    iget-object v1, p0, Lo/EO;->c:Lio/reactivex/Observable;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x1

    .line 137
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v3

    const-string p1, "newModel.getIndexChanges\u2026zes.\n            .skip(1)"

    invoke-static {v3, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$updatedSeasonList$1;

    invoke-direct {p1, p0, v0}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$updatedSeasonList$1;-><init>(Lo/EO;Lo/SimpleExpandableListAdapter;)V

    move-object v6, p1

    check-cast v6, Lo/alA;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 138
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 144
    iput-object v0, p0, Lo/EO;->a:Lo/SimpleExpandableListAdapter;

    .line 145
    invoke-direct {p0, v0}, Lo/EO;->d(Lo/SimpleExpandableListAdapter;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lo/SimpleExpandableListAdapter;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/EO;->a:Lo/SimpleExpandableListAdapter;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lo/EO;->b:Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lo/EO;->b:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->b()V

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->f()Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->e:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    if-ne v0, v1, :cond_2

    .line 115
    iget-boolean v0, p0, Lo/EO;->e:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->b()V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->e()V

    goto :goto_0

    .line 122
    :cond_2
    iget-boolean v0, p0, Lo/EO;->e:Z

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->e()V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lo/EO;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->b()V

    :goto_0
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lo/EO;->e:Z

    return-void
.end method
