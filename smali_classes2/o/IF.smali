.class public abstract Lo/IF;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final a:Lo/bY;


# direct methods
.method public constructor <init>(Lo/bY;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/IF;->a:Lo/bY;

    return-void
.end method


# virtual methods
.method protected b(Lo/bY$ActionBar;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result p1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lio/reactivex/subjects/PublishSubject;Lo/bY$TaskDescription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;",
            "Lo/bY$TaskDescription;",
            ")V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/IF;->a:Lo/bY;

    invoke-interface {v0, p2}, Lo/bY;->c(Lo/bY$TaskDescription;)Lio/reactivex/Observable;

    move-result-object p2

    .line 38
    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lo/IF$5;

    invoke-direct {p2, p0}, Lo/IF$5;-><init>(Lo/IF;)V

    .line 39
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected abstract c(Lo/bY$ActionBar;)V
.end method

.method protected abstract d(Ljava/lang/Throwable;)V
.end method

.method protected e(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const-string v0, "ModuleInstall"

    const-string v1, "getErrorMessageFrom onError "

    .line 91
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method protected e(Ljava/util/Collection;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-virtual {p2}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 63
    iget-object v0, p0, Lo/IF;->a:Lo/bY;

    .line 64
    invoke-interface {v0, p1}, Lo/bY;->d(Ljava/util/Collection;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/IF$1;

    invoke-direct {v0, p0}, Lo/IF$1;-><init>(Lo/IF;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    .line 63
    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
