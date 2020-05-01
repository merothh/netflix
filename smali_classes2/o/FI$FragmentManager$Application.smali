.class final Lo/FI$FragmentManager$Application;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FI$FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/FI$FragmentManager;

.field private final c:Lcom/netflix/mediaclient/android/app/Status;

.field private final e:Lo/Bb;


# direct methods
.method public constructor <init>(Lo/FI$FragmentManager;Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bb;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "showDetails"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultForCLV2"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iput-object p1, p0, Lo/FI$FragmentManager$Application;->b:Lo/FI$FragmentManager;

    .line 342
    invoke-direct {p0}, Lo/Ai;-><init>()V

    iput-object p2, p0, Lo/FI$FragmentManager$Application;->e:Lo/Bb;

    iput-object p3, p0, Lo/FI$FragmentManager$Application;->c:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-super {p0, p1, p2}, Lo/Ai;->f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 348
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-16063: Error when retrying to fetch seasons list"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lo/FI$FragmentManager$Application;->b:Lo/FI$FragmentManager;

    invoke-virtual {p1}, Lo/FI$FragmentManager;->d()Lio/reactivex/ObservableEmitter;

    move-result-object p1

    new-instance v0, Lo/FC$TaskDescription;

    invoke-direct {v0, p2}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 351
    iget-object p1, p0, Lo/FI$FragmentManager$Application;->b:Lo/FI$FragmentManager;

    invoke-virtual {p1}, Lo/FI$FragmentManager;->d()Lio/reactivex/ObservableEmitter;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 353
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    iget-object p2, p0, Lo/FI$FragmentManager$Application;->b:Lo/FI$FragmentManager;

    iget-object v0, p0, Lo/FI$FragmentManager$Application;->e:Lo/Bb;

    iget-object v1, p0, Lo/FI$FragmentManager$Application;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {p2, v0, p1, v1}, Lo/FI$FragmentManager;->c(Lo/FI$FragmentManager;Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 354
    :cond_2
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "SPY-16063: Seasons list is still empty after retry"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lo/FI$FragmentManager$Application;->b:Lo/FI$FragmentManager;

    invoke-virtual {p1}, Lo/FI$FragmentManager;->d()Lio/reactivex/ObservableEmitter;

    move-result-object p1

    new-instance p2, Lo/FC$TaskDescription;

    sget-object v0, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v1, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p2, v0}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 356
    iget-object p1, p0, Lo/FI$FragmentManager$Application;->b:Lo/FI$FragmentManager;

    invoke-virtual {p1}, Lo/FI$FragmentManager;->d()Lio/reactivex/ObservableEmitter;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_1
    return-void
.end method
