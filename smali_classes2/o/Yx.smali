.class public Lo/Yx;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yx$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/YD;",
        "Lo/YB;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/Yx$TaskDescription;


# instance fields
.field private final a:Lio/reactivex/disposables/CompositeDisposable;

.field private b:Lo/Yw;

.field private c:Lo/Yu;

.field private d:I

.field private final f:Ljava/lang/String;

.field private g:Lo/Am;

.field private final h:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/YD;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private final j:Lo/Yz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Yx$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Yx$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Yx;->e:Lo/Yx$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lo/Yz;Lio/reactivex/Observable;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Yz;",
            "Lio/reactivex/Observable<",
            "Lo/YD;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 38
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/Yx;->j:Lo/Yz;

    iput-object p2, p0, Lo/Yx;->h:Lio/reactivex/Observable;

    iput-object p4, p0, Lo/Yx;->f:Ljava/lang/String;

    .line 59
    new-instance p1, Lo/Yu;

    invoke-direct {p1}, Lo/Yu;-><init>()V

    iput-object p1, p0, Lo/Yx;->c:Lo/Yu;

    .line 62
    new-instance p1, Lo/Yw;

    const/4 p2, 0x0

    const/4 p4, 0x3

    invoke-direct {p1, p2, p2, p4, p2}, Lo/Yw;-><init>(Ljava/util/List;Ljava/lang/Integer;ILo/amc;)V

    iput-object p1, p0, Lo/Yx;->b:Lo/Yw;

    .line 64
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lo/Yx;->a:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz p3, :cond_0

    const-string p1, "extra_last_preview_item_on_restore"

    .line 74
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 75
    sget-object p2, Lo/YE;->a:Lo/YE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Lo/YE;->a(Ljava/lang/Integer;)V

    .line 76
    sget-object p2, Lo/YE;->a:Lo/YE;

    const-string p4, "extra_previews_lomo"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p2, p4}, Lo/YE;->c(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    .line 77
    sget-object p2, Lo/YE;->a:Lo/YE;

    const-string p4, "extra_lolomo_id"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/YE;->c(Ljava/lang/String;)V

    .line 78
    sget-object p2, Lo/YE;->a:Lo/YE;

    invoke-virtual {p2, v2}, Lo/YE;->b(I)V

    .line 79
    sget-object p2, Lo/YE;->a:Lo/YE;

    add-int/lit8 p1, p1, 0xa

    invoke-virtual {p2, p1}, Lo/YE;->c(I)V

    .line 80
    sget-object p1, Lo/YE;->a:Lo/YE;

    invoke-virtual {p1, v2}, Lo/YE;->e(I)V

    .line 81
    sget-object p1, Lo/YE;->a:Lo/YE;

    sget-object p2, Lo/YE;->a:Lo/YE;

    invoke-virtual {p2}, Lo/YE;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/YE;->a(I)V

    .line 84
    :cond_0
    iget-object p1, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {p1}, Lo/Yz;->k()V

    .line 85
    iget-object p1, p0, Lo/Yx;->j:Lo/Yz;

    new-instance p2, Lo/YA$Application;

    iget-object p3, p0, Lo/Yx;->b:Lo/Yw;

    invoke-direct {p2, p3}, Lo/YA$Application;-><init>(Lo/Yw;)V

    check-cast p2, Lo/YA;

    invoke-virtual {p1, p2}, Lo/Yz;->d(Lo/YA;)V

    .line 87
    iget-object p1, p0, Lo/Yx;->a:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {p2}, Lo/Yz;->w()Lio/reactivex/Observable;

    move-result-object p2

    .line 88
    sget-object p3, Lo/YB$PendingIntent;->a:Lo/YB$PendingIntent;

    invoke-static {p3}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p2, "uiView.uiEventsThatNeeds\u2026servable.just(NullEvent))"

    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance p2, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$1;-><init>(Lo/Yx;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    const/4 v2, 0x0

    .line 91
    sget-object p2, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$2;->b:Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$2;

    move-object v1, p2

    check-cast v1, Lo/alA;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 89
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic b(Lo/Yx;IIZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 104
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/Yx;->d(IIZ)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchPreviewsData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final d(IIZ)V
    .locals 7

    .line 105
    iget-object v0, p0, Lo/Yx;->a:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lo/Yx;->c:Lo/Yu;

    iget-object v2, p0, Lo/Yx;->g:Lo/Am;

    iget-object v3, p0, Lo/Yx;->f:Ljava/lang/String;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lo/Yu;->b(Lo/Am;Ljava/lang/String;IIZ)Lio/reactivex/Observable;

    move-result-object p1

    .line 106
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p3

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "dataRepo.fetchPreviews(s\u2026monStatus.OK, listOf())))"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance p1, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$fetchPreviewsData$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIPresenter$fetchPreviewsData$1;-><init>(Lo/Yx;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 107
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    add-int/lit8 v0, p1, 0x1

    .line 312
    iget-object v1, p0, Lo/Yx;->b:Lo/Yw;

    invoke-virtual {v1}, Lo/Yw;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    .line 313
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    iget-object v3, p0, Lo/Yx;->b:Lo/Yw;

    invoke-virtual {v3}, Lo/Yw;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x2

    .line 316
    iget-object v0, p0, Lo/Yx;->b:Lo/Yw;

    invoke-virtual {v0}, Lo/Yw;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    if-le v0, p1, :cond_3

    .line 317
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lo/Yx;->b:Lo/Yw;

    invoke-virtual {v1}, Lo/Yw;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_3
    :goto_1
    sget-object p1, Lo/Ym;->a:Lo/Ym;

    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {v0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uiView.contentView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/Ym;->c(Landroid/content/Context;)V

    .line 320
    sget-object p1, Lo/Ym;->a:Lo/Ym;

    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {v0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/Ym;->b(Lo/Ym;Ljava/util/List;Landroid/content/Context;IIILjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;)V"
        }
    .end annotation

    const-string v0, "previewsFeedItemModels"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lo/Yx;->b:Lo/Yw;

    invoke-virtual {v0}, Lo/Yw;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object p1, p0, Lo/Yx;->b:Lo/Yw;

    sget-object v0, Lo/YE;->a:Lo/YE;

    invoke-virtual {v0}, Lo/YE;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Yw;->d(Ljava/lang/Integer;)V

    .line 120
    sget-object p1, Lo/YE;->a:Lo/YE;

    invoke-virtual {p1}, Lo/YE;->e()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 121
    invoke-virtual {p0, p1}, Lo/Yx;->a(I)V

    .line 122
    iput p1, p0, Lo/Yx;->d:I

    .line 124
    :cond_0
    iget-object p1, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {p1}, Lo/Yz;->n()V

    .line 126
    sget-object p1, Lo/YE;->a:Lo/YE;

    invoke-virtual {p1}, Lo/YE;->e()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lo/Yx;->j:Lo/Yz;

    new-instance v0, Lo/YA$Application;

    iget-object v1, p0, Lo/Yx;->b:Lo/Yw;

    invoke-direct {v0, v1}, Lo/YA$Application;-><init>(Lo/Yw;)V

    check-cast v0, Lo/YA;

    invoke-virtual {p1, v0}, Lo/Yz;->d(Lo/YA;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lo/Yx;->j:Lo/Yz;

    new-instance v0, Lo/YA$ActionBar;

    iget-object v1, p0, Lo/Yx;->b:Lo/Yw;

    invoke-direct {v0, v1}, Lo/YA$ActionBar;-><init>(Lo/Yw;)V

    check-cast v0, Lo/YA;

    invoke-virtual {p1, v0}, Lo/Yz;->d(Lo/YA;)V

    .line 131
    :goto_0
    sget-object p1, Lo/YE;->a:Lo/YE;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lo/YE;->a(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 132
    iput p1, p0, Lo/Yx;->i:I

    goto :goto_1

    .line 133
    :cond_2
    iget-object p1, p0, Lo/Yx;->b:Lo/Yw;

    invoke-virtual {p1}, Lo/Yw;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lo/Yx;->i:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_3

    .line 134
    iget-object p1, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {p1}, Lo/Yz;->k()V

    .line 135
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feed list empty: need to refetch. COUNT - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Yx;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 136
    iget p1, p0, Lo/Yx;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/Yx;->i:I

    .line 137
    invoke-virtual {p0}, Lo/Yx;->c()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected c()V
    .locals 3

    .line 148
    sget-object v0, Lo/YE;->a:Lo/YE;

    invoke-virtual {v0}, Lo/YE;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 146
    invoke-direct {p0, v1, v0, v2}, Lo/Yx;->d(IIZ)V

    return-void
.end method

.method public c(I)V
    .locals 6

    .line 286
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    instance-of v0, v0, Lo/Yz;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lo/Yx;->b:Lo/Yw;

    invoke-virtual {v0}, Lo/Yw;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    .line 289
    sget-object p1, Lo/YE;->a:Lo/YE;

    invoke-virtual {p1}, Lo/YE;->d()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    sget-object p1, Lo/YE;->a:Lo/YE;

    invoke-virtual {p1}, Lo/YE;->d()I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lo/Yx;->b(Lo/Yx;IIZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(Lo/Am;)V
    .locals 6

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lo/Yx;->g:Lo/Am;

    .line 101
    sget-object p1, Lo/YE;->a:Lo/YE;

    invoke-virtual {p1}, Lo/YE;->b()I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lo/Yx;->b(Lo/Yx;IIZILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 294
    iget-object v0, p0, Lo/Yx;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 299
    iget v0, p0, Lo/Yx;->d:I

    const-string v1, "extra_last_preview_item_on_restore"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    sget-object v0, Lo/YE;->a:Lo/YE;

    invoke-virtual {v0}, Lo/YE;->a()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "extra_previews_lomo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 301
    sget-object v0, Lo/YE;->a:Lo/YE;

    invoke-virtual {v0}, Lo/YE;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_lolomo_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 324
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {v0, p1}, Lo/Yz;->a(I)V

    return-void
.end method

.method public final e(Lo/YB;)V
    .locals 10

    const-string v0, "uiEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    instance-of v0, p1, Lo/YB$TaskStackBuilder;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lo/Yx;->e:Lo/Yx$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 166
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    new-instance v1, Lo/YA$ActionBar;

    iget-object v2, p0, Lo/Yx;->b:Lo/Yw;

    invoke-direct {v1, v2}, Lo/YA$ActionBar;-><init>(Lo/Yw;)V

    check-cast v1, Lo/YA;

    invoke-virtual {v0, v1}, Lo/Yz;->d(Lo/YA;)V

    .line 167
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    check-cast p1, Lo/YB$TaskStackBuilder;

    invoke-virtual {p1}, Lo/YB$TaskStackBuilder;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Yz;->b(I)V

    goto/16 :goto_4

    .line 170
    :cond_0
    instance-of v0, p1, Lo/YB$PictureInPictureParams;

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lo/Yx;->e:Lo/Yx$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 172
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    new-instance v1, Lo/YA$ActionBar;

    iget-object v2, p0, Lo/Yx;->b:Lo/Yw;

    invoke-direct {v1, v2}, Lo/YA$ActionBar;-><init>(Lo/Yw;)V

    check-cast v1, Lo/YA;

    invoke-virtual {v0, v1}, Lo/Yz;->d(Lo/YA;)V

    .line 173
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    check-cast p1, Lo/YB$PictureInPictureParams;

    invoke-virtual {p1}, Lo/YB$PictureInPictureParams;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Yz;->b(I)V

    goto/16 :goto_4

    .line 176
    :cond_1
    instance-of v0, p1, Lo/YB$ActionBar;

    if-eqz v0, :cond_2

    .line 177
    sget-object v0, Lo/Yx;->e:Lo/Yx$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 178
    check-cast p1, Lo/YB$ActionBar;

    invoke-virtual {p1}, Lo/YB$ActionBar;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/Yx;->c(I)V

    .line 179
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {p1}, Lo/YB$ActionBar;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/Yz;->d(I)V

    .line 180
    invoke-virtual {p1}, Lo/YB$ActionBar;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/Yx;->e(I)V

    .line 181
    invoke-virtual {p1}, Lo/YB$ActionBar;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/Yx;->a(I)V

    .line 182
    invoke-virtual {p1}, Lo/YB$ActionBar;->a()I

    move-result v0

    iput v0, p0, Lo/Yx;->d:I

    .line 183
    iget-object v0, p0, Lo/Yx;->b:Lo/Yw;

    invoke-virtual {p1}, Lo/YB$ActionBar;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Yw;->b(I)Lo/Yn;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 184
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {v0, p1}, Lo/Yi;->b(Lo/Yn;)V

    goto/16 :goto_4

    .line 188
    :cond_2
    instance-of v0, p1, Lo/YB$VoiceInteractor;

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lo/Yx;->b:Lo/Yw;

    check-cast p1, Lo/YB$VoiceInteractor;

    invoke-virtual {p1}, Lo/YB$VoiceInteractor;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Yw;->b(I)Lo/Yn;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 190
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {v0, p1}, Lo/Yi;->d(Lo/Yn;)V

    .line 192
    :cond_3
    iget-object p1, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {p1}, Lo/Yz;->n()V

    goto/16 :goto_4

    .line 195
    :cond_4
    instance-of v0, p1, Lo/YB$FragmentManager;

    if-eqz v0, :cond_5

    .line 196
    sget-object p1, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {p1}, Lo/Yi;->b()V

    goto/16 :goto_4

    .line 199
    :cond_5
    instance-of v0, p1, Lo/YB$LoaderManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 200
    sget-object v0, Lo/Yx;->e:Lo/Yx$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 201
    check-cast p1, Lo/YB$LoaderManager;

    invoke-virtual {p1}, Lo/YB$LoaderManager;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/Yx;->c(I)V

    .line 202
    invoke-virtual {p1}, Lo/YB$LoaderManager;->d()I

    move-result v0

    iget-object v2, p0, Lo/Yx;->b:Lo/Yw;

    invoke-virtual {v2}, Lo/Yw;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_6

    .line 203
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {p1}, Lo/YB$LoaderManager;->d()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lo/Yz;->c(I)V

    goto :goto_0

    .line 205
    :cond_6
    iget-object p1, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {p1}, Lo/Yz;->j()V

    .line 207
    :goto_0
    sget-object p1, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {p1}, Lo/Yi;->c()V

    goto/16 :goto_4

    .line 210
    :cond_7
    instance-of v0, p1, Lo/YB$Dialog;

    if-eqz v0, :cond_8

    .line 211
    sget-object v0, Lo/Yx;->e:Lo/Yx$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 213
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previews playback error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lo/YB$Dialog;

    invoke-virtual {p1}, Lo/YB$Dialog;->e()Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 214
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {p1}, Lo/YB$Dialog;->e()Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Yi;->d(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    goto/16 :goto_4

    .line 217
    :cond_8
    instance-of v0, p1, Lo/YB$ClipData;

    if-eqz v0, :cond_f

    .line 218
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    invoke-virtual {v0}, Lo/Yz;->o()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 222
    move-object v3, p1

    check-cast v3, Lo/YB$ClipData;

    invoke-virtual {v3}, Lo/YB$ClipData;->c()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3}, Lo/YB$ClipData;->e()I

    move-result v3

    int-to-double v6, v3

    const-wide v8, 0x3fe55810624dd2f2L    # 0.667

    mul-double v6, v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_a

    goto :goto_1

    .line 224
    :cond_9
    move-object v3, p1

    check-cast v3, Lo/YB$ClipData;

    invoke-virtual {v3}, Lo/YB$ClipData;->c()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3}, Lo/YB$ClipData;->e()I

    move-result v3

    int-to-double v6, v3

    const-wide v8, 0x3fd54fdf3b645a1dL    # 0.333

    mul-double v6, v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_a

    :goto_1
    const/4 v2, 0x1

    .line 226
    :cond_a
    sget-object v3, Lo/Yi;->e:Lo/Yi;

    if-eqz v2, :cond_b

    const/4 v4, 0x3

    goto :goto_2

    :cond_b
    const/4 v4, 0x5

    :goto_2
    invoke-virtual {v3, v4}, Lo/Yi;->c(I)V

    const/4 v3, -0x1

    if-eqz v0, :cond_c

    if-eqz v2, :cond_d

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_e

    :cond_d
    const/4 v1, -0x1

    .line 235
    :cond_e
    :goto_3
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    check-cast p1, Lo/YB$ClipData;

    invoke-virtual {p1}, Lo/YB$ClipData;->b()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lo/Yz;->c(I)V

    goto/16 :goto_4

    .line 238
    :cond_f
    instance-of v0, p1, Lo/YB$AssistContent;

    if-eqz v0, :cond_10

    .line 239
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    check-cast p1, Lo/YB$AssistContent;

    invoke-virtual {p1}, Lo/YB$AssistContent;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Yi;->b(I)V

    goto/16 :goto_4

    .line 242
    :cond_10
    instance-of v0, p1, Lo/YB$TaskDescription;

    if-eqz v0, :cond_11

    .line 243
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    check-cast p1, Lo/YB$TaskDescription;

    invoke-virtual {p1}, Lo/YB$TaskDescription;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Yi;->b(I)V

    goto/16 :goto_4

    .line 246
    :cond_11
    instance-of v0, p1, Lo/YB$StateListAnimator;

    if-eqz v0, :cond_12

    .line 247
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    check-cast p1, Lo/YB$StateListAnimator;

    invoke-virtual {p1}, Lo/YB$StateListAnimator;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Yi;->e(I)V

    goto/16 :goto_4

    .line 250
    :cond_12
    instance-of v0, p1, Lo/YB$ComponentName;

    if-eqz v0, :cond_13

    .line 251
    iget-object v0, p0, Lo/Yx;->j:Lo/Yz;

    check-cast p1, Lo/YB$ComponentName;

    invoke-virtual {p1}, Lo/YB$ComponentName;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Yz;->c(I)V

    .line 252
    iget-object p1, p0, Lo/Yx;->b:Lo/Yw;

    iget v0, p0, Lo/Yx;->d:I

    invoke-virtual {p1, v0}, Lo/Yw;->b(I)Lo/Yn;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 253
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {v0, p1}, Lo/Yi;->a(Lo/Yn;)V

    goto :goto_4

    .line 257
    :cond_13
    instance-of v0, p1, Lo/YB$Activity;

    if-eqz v0, :cond_14

    .line 258
    iget-object p1, p0, Lo/Yx;->b:Lo/Yw;

    iget v0, p0, Lo/Yx;->d:I

    invoke-virtual {p1, v0}, Lo/Yw;->b(I)Lo/Yn;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 259
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {v0, p1}, Lo/Yi;->c(Lo/Yn;)V

    goto :goto_4

    .line 263
    :cond_14
    instance-of v0, p1, Lo/YB$Application;

    if-eqz v0, :cond_15

    .line 264
    iget-object p1, p0, Lo/Yx;->b:Lo/Yw;

    iget v0, p0, Lo/Yx;->d:I

    invoke-virtual {p1, v0}, Lo/Yw;->b(I)Lo/Yn;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 265
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {v0, p1}, Lo/Yi;->c(Lo/Yn;)V

    goto :goto_4

    .line 269
    :cond_15
    instance-of v0, p1, Lo/YB$SharedElementCallback;

    if-eqz v0, :cond_16

    .line 270
    iget-object p1, p0, Lo/Yx;->b:Lo/Yw;

    iget v0, p0, Lo/Yx;->d:I

    invoke-virtual {p1, v0}, Lo/Yw;->b(I)Lo/Yn;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 271
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {v0, p1}, Lo/Yi;->f(Lo/Yn;)V

    goto :goto_4

    .line 276
    :cond_16
    instance-of p1, p1, Lo/YB$Fragment;

    if-eqz p1, :cond_17

    .line 277
    iget-object p1, p0, Lo/Yx;->b:Lo/Yw;

    iget v0, p0, Lo/Yx;->d:I

    invoke-virtual {p1, v0}, Lo/Yw;->b(I)Lo/Yn;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 278
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {v0, p1}, Lo/Yi;->g(Lo/Yn;)V

    :cond_17
    :goto_4
    return-void
.end method
