.class final Lo/FI$StateListAnimator;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic a:Lo/FI;

.field private final d:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/FI;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "publisher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    iput-object p1, p0, Lo/FI$StateListAnimator;->a:Lo/FI;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    iput-object p2, p0, Lo/FI$StateListAnimator;->d:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-super {p0, p1, p2}, Lo/Ai;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 602
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 603
    iget-object p1, p0, Lo/FI$StateListAnimator;->d:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$Dialog;

    invoke-direct {v0, v1, p2}, Lo/FC$Dialog;-><init>(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 604
    iget-object p1, p0, Lo/FI$StateListAnimator;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 609
    iget-object p1, p0, Lo/FI$StateListAnimator;->d:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lo/FC$Dialog;

    sget-object v0, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p2, v1, v0}, Lo/FC$Dialog;-><init>(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 610
    iget-object p1, p0, Lo/FI$StateListAnimator;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lo/FI$StateListAnimator;->d:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lo/FC$Dialog;

    invoke-direct {v1, p1, p2}, Lo/FC$Dialog;-><init>(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 615
    iget-object p1, p0, Lo/FI$StateListAnimator;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
