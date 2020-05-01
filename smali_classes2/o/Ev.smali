.class public final Lo/Ev;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/DC;",
        "Lo/DG;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/Ff;


# direct methods
.method public constructor <init>(Lo/Ff;Lio/reactivex/Observable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Ff;",
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 20
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/Ev;->a:Lo/Ff;

    .line 25
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;-><init>(Lo/Ev;)V

    check-cast p1, Lo/alA;

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$2;-><init>(Lo/Ev;)V

    check-cast v0, Lo/alB;

    .line 74
    new-instance v1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$3;-><init>(Lo/Ev;)V

    check-cast v1, Lo/alA;

    .line 24
    invoke-static {p2, v1, v0, p1}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/Ev;)Lo/Ff;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/Ev;->a:Lo/Ff;

    return-object p0
.end method

.method public static final synthetic a(Lo/Ev;Ljava/lang/String;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lo/Ev;->e(Ljava/lang/String;I)V

    return-void
.end method

.method private final b(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 87
    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/advisory/Advisory;

    .line 93
    instance-of v3, v2, Lcom/netflix/model/leafs/advisory/ContentAdvisory;

    if-eqz v3, :cond_0

    .line 94
    move-object v3, v2

    check-cast v3, Lcom/netflix/model/leafs/advisory/ContentAdvisory;

    invoke-interface {v3}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getBoard()Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getRatingIconValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 95
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 126
    const-class p1, Lo/l;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/l;

    .line 95
    check-cast v2, Lcom/netflix/model/leafs/advisory/RatingDetails;

    const/4 v0, 0x1

    invoke-interface {p1, v2, v0}, Lo/l;->d(Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    invoke-interface {v3}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getI18nRating()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 104
    iget-object p1, p0, Lo/Ev;->a:Lo/Ff;

    invoke-virtual {p1, v1, v0}, Lo/Ff;->d(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lo/Ev;->a:Lo/Ff;

    invoke-virtual {p1}, Lo/Ff;->f()V

    goto :goto_0

    .line 107
    :cond_2
    iget-object p1, p0, Lo/Ev;->a:Lo/Ff;

    invoke-virtual {p1, p2}, Lo/Ff;->d(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lo/Ev;->a:Lo/Ff;

    invoke-virtual {p1}, Lo/Ff;->l()V

    :goto_0
    return-void
.end method

.method public static final synthetic b(Lo/Ev;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lo/Ev;->b(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final d(I)Ljava/lang/String;
    .locals 3

    .line 82
    sget-object v0, Lo/amj;->c:Lo/amj;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    array-length p1, v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic e(Lo/Ev;I)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lo/Ev;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final e(Ljava/lang/String;I)V
    .locals 1

    .line 116
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 117
    iget-object p2, p0, Lo/Ev;->a:Lo/Ff;

    invoke-virtual {p2, p1}, Lo/Ff;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-lez p2, :cond_3

    .line 119
    iget-object p1, p0, Lo/Ev;->a:Lo/Ff;

    invoke-virtual {p1, p2}, Lo/Ff;->a(I)V

    goto :goto_2

    .line 121
    :cond_3
    iget-object p1, p0, Lo/Ev;->a:Lo/Ff;

    invoke-virtual {p1}, Lo/Ff;->k()V

    :goto_2
    return-void
.end method
