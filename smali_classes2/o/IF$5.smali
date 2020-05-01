.class Lo/IF$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IF;->c(Lio/reactivex/subjects/PublishSubject;Lo/bY$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lo/bY$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/IF;


# direct methods
.method constructor <init>(Lo/IF;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/IF$5;->d:Lo/IF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/bY$ActionBar;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/IF$5;->d:Lo/IF;

    invoke-virtual {v0, p1}, Lo/IF;->c(Lo/bY$ActionBar;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "ModuleInstall"

    const-string v1, "onComplete"

    .line 56
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/IF$5;->d:Lo/IF;

    invoke-virtual {v0, p1}, Lo/IF;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lo/bY$ActionBar;

    invoke-virtual {p0, p1}, Lo/IF$5;->c(Lo/bY$ActionBar;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
