.class public final Lo/Ia$StateListAnimator$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ia$StateListAnimator;-><init>(Landroid/view/View;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo/Ia$StateListAnimator;


# direct methods
.method constructor <init>(Lo/Ia$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 12

    .line 348
    iget-object v0, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;)Lo/HY;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 349
    sget-object v1, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 350
    iget-object v1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v1}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 351
    :cond_1
    sget-object v1, Lo/Ig;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 458
    :pswitch_0
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->k()V

    goto/16 :goto_4

    .line 439
    :pswitch_1
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->t(Lo/Ia$StateListAnimator;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->g(Lo/Ia$StateListAnimator;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 443
    :cond_2
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-virtual {p1}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lo/GridView;->setVisibility(I)V

    .line 445
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZILjava/lang/Object;)V

    .line 446
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1, v0, v5, v2, v4}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;Lo/HY;ZILjava/lang/Object;)V

    goto :goto_1

    .line 440
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->b(Z)V

    .line 448
    :goto_1
    invoke-virtual {v0, v5}, Lo/HY;->e(Z)V

    .line 450
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->n(Lo/Ia$StateListAnimator;)Lcom/netflix/cl/model/event/session/action/Play;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 451
    new-instance v0, Lcom/netflix/cl/model/event/session/SessionCanceled;

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/session/SessionCanceled;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    .line 452
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v0, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 453
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    check-cast v4, Lcom/netflix/cl/model/event/session/action/Play;

    invoke-static {p1, v4}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;Lcom/netflix/cl/model/event/session/action/Play;)V

    goto/16 :goto_4

    .line 401
    :pswitch_2
    iget-object v1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object v1

    invoke-virtual {v1, v5}, Lo/HZ;->c(I)V

    .line 402
    iget-object v1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-virtual {v1}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lo/GridView;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v1}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->b(Z)V

    .line 404
    invoke-virtual {v0, v3}, Lo/HY;->e(Z)V

    .line 405
    iget-object v1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v1}, Lo/Ia$StateListAnimator;->m(Lo/Ia$StateListAnimator;)J

    move-result-wide v1

    const-wide/16 v5, -0x1

    cmp-long v3, v1, v5

    if-eqz v3, :cond_4

    .line 406
    iget-object v1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v5}, Lo/Ia$StateListAnimator;->m(Lo/Ia$StateListAnimator;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-static {v1, v2, v3}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;J)V

    .line 407
    iget-object v1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v1}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v3}, Lo/Ia$StateListAnimator;->k(Lo/Ia$StateListAnimator;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " msec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 409
    :cond_4
    iget-object v1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v1}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;)Lo/HY;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lo/HY;->t()Z

    move-result v1

    if-nez v1, :cond_5

    .line 410
    iget-object v1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object v1

    invoke-virtual {v1}, Lo/HZ;->f()Lio/reactivex/Observable;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v2}, Lo/Ia$StateListAnimator;->l(Lo/Ia$StateListAnimator;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v5

    const-string v1, "video.clicks()\n         \u2026        .takeUntil(idles)"

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$1;-><init>(Lo/Ia$StateListAnimator$5;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    move-object v8, v1

    check-cast v8, Lo/alA;

    const/4 v7, 0x0

    .line 417
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$2;-><init>(Lo/Ia$StateListAnimator$5;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 412
    invoke-static/range {v5 .. v10}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 419
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->o(Lo/Ia$StateListAnimator;)V

    .line 428
    :cond_5
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    .line 422
    new-instance v1, Lcom/netflix/cl/model/event/session/action/Play;

    .line 423
    invoke-static {p1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object v2

    invoke-virtual {v2}, Lo/HZ;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 425
    invoke-virtual {v0}, Lo/HY;->D()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 426
    iget-object v3, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v3}, Lo/Ia$StateListAnimator;->q(Lo/Ia$StateListAnimator;)Z

    move-result v3

    .line 424
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/cl/model/TrackingInfo;Z)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 422
    invoke-direct {v1, v2, v0}, Lcom/netflix/cl/model/event/session/action/Play;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 429
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v2, v1

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 428
    invoke-static {p1, v1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;Lcom/netflix/cl/model/event/session/action/Play;)V

    .line 432
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->f(Lo/Ia$StateListAnimator;)Lcom/netflix/cl/model/event/session/action/StartPlay;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 433
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/action/StartPlay;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 434
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    check-cast v4, Lcom/netflix/cl/model/event/session/action/StartPlay;

    invoke-static {p1, v4}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;Lcom/netflix/cl/model/event/session/action/StartPlay;)V

    goto/16 :goto_4

    .line 362
    :pswitch_3
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;)Lo/HY;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lo/HY;->t()Z

    move-result p1

    if-ne p1, v3, :cond_6

    .line 364
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lo/HZ;->a(J)V

    .line 365
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v3}, Lo/Ia$StateListAnimator;->e(Z)V

    goto/16 :goto_4

    .line 367
    :cond_6
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-virtual {p1}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lo/GridView;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1, v0, v3}, Lo/Ia$StateListAnimator;->b(Lo/Ia$StateListAnimator;Lo/HY;Z)V

    .line 370
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->n(Lo/Ia$StateListAnimator;)Lcom/netflix/cl/model/event/session/action/Play;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 371
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/action/Play;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 372
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    move-object v0, v4

    check-cast v0, Lcom/netflix/cl/model/event/session/action/Play;

    invoke-static {p1, v0}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;Lcom/netflix/cl/model/event/session/action/Play;)V

    .line 374
    :cond_7
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;)Lo/HY;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 375
    invoke-virtual {p1}, Lo/HY;->h()Lo/agg;

    move-result-object v0

    invoke-interface {v0}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item.topNodeVideo.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lo/HY;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lo/akz;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AG;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lo/AG;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v1, v4

    :goto_2
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 380
    iget-object v2, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v2}, Lo/Ia$StateListAnimator;->j(Lo/Ia$StateListAnimator;)Lo/GK;

    move-result-object v2

    .line 381
    iget-object v3, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {v3}, Lo/Ia$StateListAnimator;->j(Lo/Ia$StateListAnimator;)Lo/GK;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lo/GK;->l()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object v4

    .line 382
    :cond_9
    new-instance v3, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;

    invoke-direct {v3, v0, v1, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/HY;)V

    check-cast v3, Lo/alN;

    .line 379
    invoke-static {v2, v4, v3}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto :goto_4

    .line 357
    :pswitch_4
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-virtual {p1}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lo/GridView;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1, v0, v5, v2, v4}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;Lo/HY;ZILjava/lang/Object;)V

    goto :goto_4

    .line 472
    :goto_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_a
    :goto_4
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
