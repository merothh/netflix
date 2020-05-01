.class final Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Z

.field final synthetic e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 490
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 6

    .line 694
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 695
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->as()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->e()Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 699
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->c:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 698
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 703
    :cond_0
    invoke-static {v0, v2}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 706
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    .line 707
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->h()Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    :cond_2
    return-void
.end method

.method private final e(Ljava/lang/String;)V
    .locals 3

    .line 670
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->m(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->c(Z)V

    .line 673
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v0

    const-string v1, "Required value was null."

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->m(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    move-result-object v2

    check-cast v2, Lo/Af;

    invoke-interface {v0, v2}, Lo/zJ;->e(Lo/Af;)V

    .line 675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;)V

    .line 676
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq()V

    .line 677
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->i()V

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/UD;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/UD;->d(Lo/zJ;)V

    goto :goto_0

    .line 677
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 674
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 681
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 685
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->t()J

    .line 686
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(J)V

    .line 687
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 690
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 599
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScreenBrightnessIfNeeded()V

    .line 600
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 601
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->h(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 602
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 604
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 605
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->C()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(I)V

    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    if-ne v0, v2, :cond_2

    .line 626
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->g(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/Ts;

    move-result-object v0

    invoke-virtual {v0}, Lo/Ts;->e()Z

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->f(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleVisibility(Z)V

    .line 629
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->i(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)F

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ar()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->g(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/Ts;

    move-result-object v0

    invoke-virtual {v0}, Lo/Ts;->e()Z

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->i(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)F

    move-result v0

    invoke-interface {v1, v0}, Lo/zJ;->e(F)V

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u()Lo/Ya;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 634
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 635
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F()I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 633
    invoke-interface {v0, v1, v2}, Lo/Ya;->a(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 637
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Offline"

    goto :goto_0

    :cond_5
    const-string v0, "Streaming"

    .line 638
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " playback started"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ai()V

    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->l(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 641
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    return-void

    .line 606
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    .line 607
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->h()Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 608
    new-instance v2, Lo/sZ;

    .line 609
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ao()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ap()Ljava/lang/String;

    move-result-object v4

    .line 608
    invoke-direct {v2, v3, v4, v0}, Lo/sZ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    .line 607
    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    .line 618
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/media/PlayerManifestData;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 504
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 507
    :try_start_0
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 508
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    return-void

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v1

    if-nez v1, :cond_1

    .line 514
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 515
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    return-void

    .line 518
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v4, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lo/zJ;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 522
    invoke-interface {v1}, Lo/zJ;->p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v6

    .line 523
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    .line 524
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j()J

    move-result-wide v8

    long-to-int v8, v8

    .line 525
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->c()Lo/Aq;

    move-result-object v9

    .line 519
    invoke-static/range {v4 .. v9}, Lo/Ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILo/Aq;)Landroid/content/Intent;

    move-result-object v2

    .line 527
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v4

    .line 528
    invoke-virtual {v4, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 529
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(Z)V

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->isAV1Profile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    sget-object v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 535
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->isHDR10Profile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 536
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/UD;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Lo/UD;->c(Lo/zJ;)V

    .line 538
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPrimarySurface$NetflixApp_release(Lcom/netflix/mediaclient/media/PlayerManifestData;)V

    .line 540
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->aspectRatioDimension:Landroid/graphics/Point;

    if-eqz v1, :cond_5

    .line 541
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_5

    .line 542
    sget-object v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 543
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVideoSize(II)V

    .line 546
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->croppedAspectRatioDimension:Landroid/graphics/Point;

    if-eqz v2, :cond_6

    .line 547
    iget v4, v2, Landroid/graphics/Point;->x:I

    if-eqz v4, :cond_6

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-eqz v4, :cond_6

    .line 548
    sget-object v4, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v4, Lo/MessagePdu;

    .line 549
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;II)V

    .line 551
    :cond_6
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->C()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    if-ne v4, v5, :cond_f

    .line 552
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u()Lo/Ya;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4, v1, v2}, Lo/Ya;->a(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 553
    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 554
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->al()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 555
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScaleType(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V

    .line 556
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u()Lo/Ya;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Lo/Ya;->e(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V

    .line 559
    :cond_9
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->h()Z

    move-result v1

    if-nez v1, :cond_e

    .line 562
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->i()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    if-ne v1, v2, :cond_e

    .line 561
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/aek;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lo/zJ;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    goto :goto_1

    :cond_a
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lo/zJ;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    :cond_b
    if-nez v0, :cond_c

    invoke-static {}, Lo/amh;->c()V

    :cond_c
    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 564
    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v1

    invoke-static {v0, v1}, Lo/aex;->a(Landroid/content/Context;Lo/zJ;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 565
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    .line 569
    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->f(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleVisibility(Z)V

    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->A()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 572
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getGopMaxSizeInMs()I

    move-result p1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;I)V

    goto :goto_2

    .line 574
    :cond_f
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 575
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 578
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 579
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Failed to start player"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 583
    :goto_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->C()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    if-eq p1, v0, :cond_10

    .line 585
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 586
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    :cond_10
    return-void
.end method

.method public b()V
    .locals 2

    .line 728
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 729
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 730
    sget-object v0, Lo/fd;->d:Lo/fd$StateListAnimator;

    invoke-virtual {v0}, Lo/fd$StateListAnimator;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;)V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->j:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 496
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->a:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->h:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    .line 593
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 594
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Z)V

    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    check-cast v1, Lo/UD;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/UD;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playback error happens after playback ends. Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void

    .line 660
    :cond_0
    instance-of v0, p1, Lo/rB;

    if-eqz v0, :cond_1

    .line 661
    check-cast p1, Lo/rB;

    invoke-virtual {p1}, Lo/rB;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rid"

    .line 662
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 711
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 712
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;)V

    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq()V

    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->m(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    move-result-object v1

    check-cast v1, Lo/Af;

    invoke-interface {v0, v1}, Lo/zJ;->e(Lo/Af;)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->g(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/Ts;

    move-result-object v0

    invoke-virtual {v0}, Lo/Ts;->d()V

    .line 717
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Z)V

    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lo/zJ;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lo/zJ;)V

    .line 719
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->N()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/UD;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    check-cast v2, Lo/UD;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/UD;)V

    .line 724
    :cond_1
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->o(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method
