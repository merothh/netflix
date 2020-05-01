.class final Lo/Yo$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yo;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Yo;


# direct methods
.method constructor <init>(Lo/Yo;)V
    .locals 0

    iput-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 6

    .line 254
    iget-object v0, p0, Lo/Yo$Application;->c:Lo/Yo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player status changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Yo;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 256
    :cond_0
    sget-object v0, Lo/Ys;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 296
    :pswitch_0
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-virtual {p1}, Lo/Yo;->a()Lo/Yn;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 297
    invoke-virtual {p1}, Lo/Yn;->c()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {p1}, Lo/Yn;->getSupplementalVideoDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 301
    :cond_1
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->e(Lo/Yo;)Lo/XY;

    move-result-object p1

    invoke-virtual {p1}, Lo/XY;->b()V

    .line 302
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->g(Lo/Yo;)Lo/UpdateLock;

    move-result-object p1

    new-instance v0, Lo/YB$LoaderManager;

    iget-object v1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-virtual {v1}, Lo/Yo;->getAdapterPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lo/YB$LoaderManager;-><init>(I)V

    invoke-interface {p1, v0}, Lo/UpdateLock;->e(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 289
    :pswitch_1
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->c(Lo/Yo;)Lo/YF;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/YF;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->e(Lo/Yo;)Lo/XY;

    move-result-object p1

    invoke-virtual {p1}, Lo/XY;->b()V

    .line 291
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->e(Lo/Yo;)Lo/XY;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/XY;->setVisibility(I)V

    goto/16 :goto_2

    .line 285
    :pswitch_2
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->g(Lo/Yo;)Lo/UpdateLock;

    move-result-object p1

    new-instance v0, Lo/YB$FragmentManager;

    iget-object v1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-virtual {v1}, Lo/Yo;->getAdapterPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lo/YB$FragmentManager;-><init>(I)V

    invoke-interface {p1, v0}, Lo/UpdateLock;->e(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 266
    :pswitch_3
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play delay = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {v4}, Lo/Yo;->d(Lo/Yo;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x73

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->e(Lo/Yo;)Lo/XY;

    move-result-object p1

    invoke-virtual {p1}, Lo/XY;->Q()Z

    move-result p1

    if-nez p1, :cond_2

    .line 268
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->i(Lo/Yo;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 270
    :cond_2
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1, v1}, Lo/Yo;->d(Lo/Yo;I)V

    .line 271
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->f(Lo/Yo;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 272
    iget-object v0, p0, Lo/Yo$Application;->c:Lo/Yo;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lo/Yo;->b(Lo/Yo;Ljava/lang/Boolean;)V

    .line 273
    iget-object v0, p0, Lo/Yo$Application;->c:Lo/Yo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deferred action - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string v3, "play"

    goto :goto_0

    :cond_3
    const-string v3, "pause"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/Yo;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 275
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->e(Lo/Yo;)Lo/XY;

    move-result-object p1

    invoke-virtual {p1}, Lo/XY;->aa()V

    goto :goto_1

    .line 277
    :cond_4
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->e(Lo/Yo;)Lo/XY;

    move-result-object p1

    invoke-virtual {p1}, Lo/XY;->ab()V

    .line 280
    :cond_5
    :goto_1
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->g(Lo/Yo;)Lo/UpdateLock;

    move-result-object p1

    new-instance v0, Lo/YB$VoiceInteractor;

    iget-object v2, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-virtual {v2}, Lo/Yo;->getAdapterPosition()I

    move-result v2

    invoke-direct {v0, v2}, Lo/YB$VoiceInteractor;-><init>(I)V

    invoke-interface {p1, v0}, Lo/UpdateLock;->e(Ljava/lang/Object;)V

    .line 281
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1, v1}, Lo/Yo;->a(Lo/Yo;Z)V

    goto :goto_2

    .line 259
    :pswitch_4
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->c(Lo/Yo;)Lo/YF;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/YF;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lo/Yo$Application;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->e(Lo/Yo;)Lo/XY;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/XY;->setVisibility(I)V

    :goto_2
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
