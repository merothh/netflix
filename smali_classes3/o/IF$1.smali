.class Lo/IF$1;
.super Lio/reactivex/observers/DisposableObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IF;->e(Ljava/util/Collection;Lio/reactivex/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lo/bY$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/IF;


# direct methods
.method constructor <init>(Lo/IF;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lo/IF$1;->a:Lo/IF;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/bY$ActionBar;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/IF$1;->a:Lo/IF;

    invoke-virtual {v0, p1}, Lo/IF;->c(Lo/bY$ActionBar;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "ModuleInstall"

    const-string v1, "LanguageInstall onComplete"

    .line 78
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lo/IF$1;->a:Lo/IF;

    invoke-virtual {v0, p1}, Lo/IF;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lo/bY$ActionBar;

    invoke-virtual {p0, p1}, Lo/IF$1;->b(Lo/bY$ActionBar;)V

    return-void
.end method
