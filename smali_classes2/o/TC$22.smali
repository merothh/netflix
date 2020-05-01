.class Lo/TC$22;
.super Lio/reactivex/observers/DisposableObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lo/Ws$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lo/TC$22;->e:Lo/TC;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/Ws$TaskDescription;)V
    .locals 3

    .line 715
    invoke-virtual {p1}, Lo/Ws$TaskDescription;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {p1}, Lo/Ws$TaskDescription;->a()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object p1

    .line 717
    iget-object v0, p0, Lo/TC$22;->e:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->r()Lo/Tv;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0, p1}, Lo/Tv;->b(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 722
    :cond_0
    iget-object v0, p0, Lo/TC$22;->e:Lo/TC;

    iget-object v0, v0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    new-instance v2, Lo/UP$PendingIntent;

    invoke-direct {v2, p1}, Lo/UP$PendingIntent;-><init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 729
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "PlayerFragment Unable to fetch interactive data"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 711
    check-cast p1, Lo/Ws$TaskDescription;

    invoke-virtual {p0, p1}, Lo/TC$22;->c(Lo/Ws$TaskDescription;)V

    return-void
.end method
