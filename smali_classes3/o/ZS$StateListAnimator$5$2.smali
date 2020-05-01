.class public final Lo/ZS$StateListAnimator$5$2;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZS$StateListAnimator$5;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ZS$StateListAnimator$5;


# direct methods
.method constructor <init>(Lo/ZS$StateListAnimator$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lo/ZS$StateListAnimator$5$2;->a:Lo/ZS$StateListAnimator$5;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 1

    const-string p3, "res"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 106
    iget-object p1, p0, Lo/ZS$StateListAnimator$5$2;->a:Lo/ZS$StateListAnimator$5;

    iget-object p1, p1, Lo/ZS$StateListAnimator$5;->c:Lio/reactivex/ObservableEmitter;

    sget-object p2, Lo/ZR$ActionBar;->a:Lo/ZR$ActionBar;

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 107
    iget-object p1, p0, Lo/ZS$StateListAnimator$5$2;->a:Lo/ZS$StateListAnimator$5;

    iget-object p1, p1, Lo/ZS$StateListAnimator$5;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 110
    iget-object p3, p0, Lo/ZS$StateListAnimator$5$2;->a:Lo/ZS$StateListAnimator$5;

    iget-object p3, p3, Lo/ZS$StateListAnimator$5;->c:Lio/reactivex/ObservableEmitter;

    .line 111
    new-instance v0, Lo/ZR$ComponentCallbacks;

    invoke-direct {v0, p1, p2}, Lo/ZR$ComponentCallbacks;-><init>(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 110
    invoke-interface {p3, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lo/ZS$StateListAnimator$5$2;->a:Lo/ZS$StateListAnimator$5;

    iget-object p1, p1, Lo/ZS$StateListAnimator$5;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Bv;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    iget-object p1, p0, Lo/ZS$StateListAnimator$5$2;->a:Lo/ZS$StateListAnimator$5;

    iget-object p1, p1, Lo/ZS$StateListAnimator$5;->c:Lio/reactivex/ObservableEmitter;

    sget-object p2, Lo/ZR$ActionBar;->a:Lo/ZR$ActionBar;

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lo/ZS$StateListAnimator$5$2;->a:Lo/ZS$StateListAnimator$5;

    iget-object p1, p1, Lo/ZS$StateListAnimator$5;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.model.leafs.SearchSectionSummary"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_2
    iget-object p1, p0, Lo/ZS$StateListAnimator$5$2;->a:Lo/ZS$StateListAnimator$5;

    iget-object p1, p1, Lo/ZS$StateListAnimator$5;->c:Lio/reactivex/ObservableEmitter;

    .line 93
    new-instance v0, Lo/ZR$ComponentName;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p2}, Lo/ZR$ComponentName;-><init>(Ljava/util/List;)V

    .line 92
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lo/ZS$StateListAnimator$5$2;->a:Lo/ZS$StateListAnimator$5;

    iget-object p1, p1, Lo/ZS$StateListAnimator$5;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_3
    :goto_1
    return-void
.end method
