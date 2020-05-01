.class public final Lo/FL$Activity$5;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL$Activity;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic d:Lo/FL$Activity;


# direct methods
.method constructor <init>(Lo/FL$Activity;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter;",
            ")V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lo/FL$Activity$5;->d:Lo/FL$Activity;

    iput-object p2, p0, Lo/FL$Activity$5;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1, p2}, Lo/cq;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 201
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object p1, p0, Lo/FL$Activity$5;->a:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$TaskDescription;

    invoke-direct {v0, p2}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lo/FL$Activity$5;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 207
    invoke-interface {p1}, Lo/agg;->br()Lo/Ay;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    iget-object p2, p0, Lo/FL$Activity$5;->a:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$ActionBar;

    invoke-interface {p1}, Lo/agg;->br()Lo/Ay;

    move-result-object v1

    const-string v2, "fullDetails.detailsPageSummary"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/agg;->by()Lo/Bd;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/FC$ActionBar;-><init>(Lo/Ay;Lo/Bd;)V

    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 216
    iget-object p1, p0, Lo/FL$Activity$5;->d:Lo/FL$Activity;

    iget-object v0, p1, Lo/FL$Activity;->b:Lo/FL;

    .line 217
    iget-object p1, p0, Lo/FL$Activity$5;->d:Lo/FL$Activity;

    iget-object v1, p1, Lo/FL$Activity;->e:Lo/hW;

    .line 218
    iget-object p1, p0, Lo/FL$Activity$5;->d:Lo/FL$Activity;

    iget-object v2, p1, Lo/FL$Activity;->a:Ljava/lang/String;

    .line 219
    iget-object p1, p0, Lo/FL$Activity$5;->d:Lo/FL$Activity;

    iget-object v3, p1, Lo/FL$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 220
    iget-object p1, p0, Lo/FL$Activity$5;->d:Lo/FL$Activity;

    iget-boolean v4, p1, Lo/FL$Activity;->c:Z

    .line 221
    iget-object p1, p0, Lo/FL$Activity$5;->d:Lo/FL$Activity;

    iget-object v5, p1, Lo/FL$Activity;->h:Ljava/lang/String;

    .line 222
    iget-object v6, p0, Lo/FL$Activity$5;->a:Lio/reactivex/ObservableEmitter;

    const-string p1, "emitter"

    invoke-static {v6, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lo/FL$Activity$5;->d:Lo/FL$Activity;

    iget-object v7, p1, Lo/FL$Activity;->i:Lo/Am;

    .line 216
    invoke-virtual/range {v0 .. v7}, Lo/FL;->a(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;Lio/reactivex/ObservableEmitter;Lo/Am;)V

    return-void

    .line 208
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/FL$Activity$5;->a:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lo/FC$TaskDescription;

    sget-object v0, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v1, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p2, v0}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 209
    iget-object p1, p0, Lo/FL$Activity$5;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
