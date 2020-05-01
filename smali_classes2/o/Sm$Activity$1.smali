.class public final Lo/Sm$Activity$1;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sm$Activity;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic c:Lo/hW;

.field final synthetic d:Lo/Sm$Activity;


# direct methods
.method constructor <init>(Lo/Sm$Activity;Lo/hW;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hW;",
            "Lio/reactivex/ObservableEmitter;",
            ")V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lo/Sm$Activity$1;->d:Lo/Sm$Activity;

    iput-object p2, p0, Lo/Sm$Activity$1;->c:Lo/hW;

    iput-object p3, p0, Lo/Sm$Activity$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AA;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 35
    iget-object p2, p0, Lo/Sm$Activity$1;->d:Lo/Sm$Activity;

    iget-object p2, p2, Lo/Sm$Activity;->b:Lo/Sm;

    iget-object v0, p0, Lo/Sm$Activity$1;->c:Lo/hW;

    iget-object v1, p0, Lo/Sm$Activity$1;->a:Lio/reactivex/ObservableEmitter;

    const-string v2, "subscriber"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0, p1, v1}, Lo/Sm;->d(Lo/Sm;Lo/hW;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    goto :goto_0

    .line 36
    :cond_0
    move-object p1, p0

    check-cast p1, Lo/Sm$Activity$1;

    .line 38
    iget-object p1, p0, Lo/Sm$Activity$1;->a:Lio/reactivex/ObservableEmitter;

    .line 39
    new-instance p2, Lo/Sh$TaskDescription;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Lo/Sh$TaskDescription;-><init>(Ljava/util/List;)V

    .line 38
    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lo/Sm$Activity$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_0
    return-void
.end method
