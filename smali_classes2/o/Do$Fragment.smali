.class final Lo/Do$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Do;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Do;


# direct methods
.method constructor <init>(Lo/Do;)V
    .locals 0

    iput-object p1, p0, Lo/Do$Fragment;->c:Lo/Do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lo/gB;->e:Lo/gB$Application;

    invoke-virtual {v0}, Lo/gB$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object p1, p0, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {p1}, Lo/Do;->f(Lo/Do;)Lo/FI;

    move-result-object p1

    iget-object v0, p0, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v0}, Lo/Do;->j(Lo/Do;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/FI;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v0}, Lo/Do;->f(Lo/Do;)Lo/FI;

    move-result-object v0

    iget-object v1, p0, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v1}, Lo/Do;->j(Lo/Do;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/FI;->b(Lo/Am;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 306
    :goto_0
    iget-object v0, p0, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v0}, Lo/Do;->g(Lo/Do;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 308
    new-instance v0, Lo/Do$Fragment$5;

    invoke-direct {v0, p0}, Lo/Do$Fragment$5;-><init>(Lo/Do$Fragment;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 353
    sget-object v1, Lo/Do$Fragment$2;->c:Lo/Do$Fragment$2;

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 307
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
