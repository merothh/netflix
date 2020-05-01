.class public final Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CommonTimeUtils;-><init>(Lo/CountDownTimer;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Build;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/CommonTimeUtils;

.field final synthetic d:Lo/CountDownTimer;


# direct methods
.method public constructor <init>(Lo/CommonTimeUtils;Lo/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->a:Lo/CommonTimeUtils;

    iput-object p2, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->d:Lo/CountDownTimer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Build;)V
    .locals 7

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    instance-of v0, p1, Lo/Build$CursorFactory;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->d:Lo/CountDownTimer;

    invoke-interface {v0}, Lo/CountDownTimer;->e()V

    .line 37
    check-cast p1, Lo/Build$CursorFactory;

    invoke-virtual {p1}, Lo/Build$CursorFactory;->d()Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$1;-><init>(Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 42
    sget-object v0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$2;->d:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$2;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$3;

    invoke-direct {v0, p0}, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$3;-><init>(Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 48
    sget-object v0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$4;->d:Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$4;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 49
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "stateEvent.seeksInSecond\u2026dSchedulers.mainThread())"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 51
    new-instance p1, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$5;

    invoke-direct {p1, p0}, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1$5;-><init>(Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 50
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 58
    :cond_0
    instance-of p1, p1, Lo/Build$Bitmap;

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->d:Lo/CountDownTimer;

    invoke-interface {p1}, Lo/CountDownTimer;->b()V

    .line 60
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->d:Lo/CountDownTimer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/CountDownTimer;->c(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->d:Lo/CountDownTimer;

    invoke-interface {p1, v0}, Lo/CountDownTimer;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/Build;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;->a(Lo/Build;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
