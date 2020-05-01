.class public Lo/Ul;
.super Lcom/netflix/mediaclient/ui/player/PostPlay;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ul$ActionBar;,
        Lo/Ul$StateListAnimator;
    }
.end annotation


# instance fields
.field private A:Lo/Uv;

.field private B:I

.field private final C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final D:Landroid/view/animation/DecelerateInterpolator;

.field private E:Lo/Xb;

.field private F:Lo/WN;

.field private G:Landroid/widget/TextView;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TZ;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lo/Xw;

.field protected z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Ur;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V

    const/4 p1, -0x1

    .line 70
    iput p1, p0, Lo/Ul;->B:I

    .line 74
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lo/Ul;->D:Landroid/view/animation/DecelerateInterpolator;

    .line 79
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/Ul;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/Ul;->z:Ljava/util/List;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/Ul;->H:Ljava/util/List;

    .line 100
    iput-object p2, p0, Lo/Ul;->t:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    .line 101
    invoke-direct {p0}, Lo/Ul;->z()V

    return-void
.end method

.method private A()V
    .locals 2

    .line 556
    iget-object v0, p0, Lo/Ul;->A:Lo/Uv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/Uv;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0, v0}, Lo/Ul;->g(Z)V

    .line 558
    iget-object v1, p0, Lo/Ul;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private C()V
    .locals 3

    .line 245
    iget-object v0, p0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->x()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 247
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 252
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayTrailerAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 253
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->isAutoPlay()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getAutoplaySeconds()I

    move-result v1

    if-lez v1, :cond_1

    .line 254
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p0, v0}, Lo/Ul;->a(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private D()V
    .locals 1

    .line 549
    iget-object v0, p0, Lo/Ul;->A:Lo/Uv;

    invoke-interface {v0}, Lo/Uv;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 550
    invoke-virtual {p0, v0}, Lo/Ul;->g(Z)V

    .line 552
    :cond_0
    iget-object v0, p0, Lo/Ul;->A:Lo/Uv;

    invoke-interface {v0}, Lo/Uv;->b()V

    return-void
.end method

.method static synthetic a(Lo/Ul;)I
    .locals 0

    .line 59
    iget p0, p0, Lo/Ul;->B:I

    return p0
.end method

.method static synthetic a(Lo/Ul;I)I
    .locals 0

    .line 59
    iput p1, p0, Lo/Ul;->B:I

    return p1
.end method

.method static synthetic d(Lo/Ul;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 59
    iget-object p0, p0, Lo/Ul;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private d(IZ)V
    .locals 3

    .line 419
    iget-object v0, p0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-static {}, Lo/afw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    rsub-int/lit8 v0, p1, 0x4

    goto :goto_0

    :cond_1
    move v0, p1

    .line 425
    :goto_0
    invoke-virtual {p0, v0}, Lo/Ul;->c(I)I

    move-result v0

    if-eqz p2, :cond_2

    .line 427
    iget-object p2, p0, Lo/Ul;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0xfa

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-object v0, p0, Lo/Ul;->D:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 429
    :cond_2
    iget-object p2, p0, Lo/Ul;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 430
    iget-object p2, p0, Lo/Ul;->g:Landroid/widget/LinearLayout;

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setX(F)V

    .line 433
    :goto_1
    iget-object p2, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 434
    iput p1, p0, Lo/Ul;->B:I

    goto :goto_2

    .line 436
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PostPlay not found for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nf_postplay"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method static synthetic d(Lo/Ul;IZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lo/Ul;->d(IZ)V

    return-void
.end method

.method static synthetic e(Lo/Ul;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lo/Ul;->D()V

    return-void
.end method

.method private z()V
    .locals 2

    .line 105
    iget-object v0, p0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-nez v0, :cond_0

    const-string v0, "nf_postplay"

    const-string v1, "init() - called with null PlayerFragment!"

    .line 106
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lo/Ul;->b:Z

    .line 110
    new-instance v0, Lo/Ut;

    iget-object v1, p0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-direct {v0, v1}, Lo/Ut;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V

    iput-object v0, p0, Lo/Ul;->A:Lo/Uv;

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 2

    .line 441
    iget v0, p0, Lo/Ul;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 442
    invoke-direct {p0, v0, v1}, Lo/Ul;->d(IZ)V

    :cond_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 610
    iget-object v0, p0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nr:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Ul;->G:Landroid/widget/TextView;

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 542
    iget-object v0, p0, Lo/Ul;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Ur;

    .line 543
    invoke-virtual {v1, p1}, Lo/Ur;->d(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Lo/Ur;Lcom/netflix/model/leafs/PostPlayItem;Lo/TZ;ZZI)V
    .locals 10

    move-object v0, p0

    if-eqz p4, :cond_0

    .line 312
    iget-object v2, v0, Lo/Ul;->c:Lo/Uq;

    iget-object v4, v0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    new-instance v6, Lo/Ul$StateListAnimator;

    iget-object v1, v0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v6, p0, v1}, Lo/Ul$StateListAnimator;-><init>(Lo/Ul;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iget-object v7, v0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lo/Ur;->a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto/16 :goto_3

    :cond_0
    if-eqz p5, :cond_1

    .line 314
    iget-object v2, v0, Lo/Ul;->c:Lo/Uq;

    iget-object v4, v0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    move/from16 v1, p6

    invoke-virtual {p0, v1}, Lo/Ul;->d(I)Lo/Ul$ActionBar;

    move-result-object v6

    iget-object v7, v0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lo/Ur;->a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto/16 :goto_3

    :cond_1
    const-string v1, "nextEpisode"

    if-nez p2, :cond_4

    .line 318
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    .line 319
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getMoreInfoAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    if-nez v1, :cond_7

    .line 320
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Postplay dp action is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 324
    :cond_4
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "nextEpisodeSeamless"

    .line 326
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "betweenTitle"

    .line 327
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lo/gT;->a:Lo/gT$Activity;

    .line 328
    invoke-virtual {v1}, Lo/gT$Activity;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 332
    :cond_5
    new-instance v1, Lo/Uh;

    iget-object v3, v0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v4, v0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getMoreInfoAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v7, 0x0

    iget-object v8, v0, Lo/Ul;->c:Lo/Uq;

    move-object v2, v1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lo/Uh;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View;Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;)V

    .line 333
    iget-object v3, v0, Lo/Ul;->c:Lo/Uq;

    iget-object v5, v0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v1}, Lo/Uh;->a()Landroid/view/View$OnClickListener;

    move-result-object v7

    iget-object v8, v0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lo/Ur;->a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_3

    .line 329
    :cond_6
    :goto_2
    new-instance v1, Lo/Uh;

    iget-object v3, v0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v4, v0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v7, 0x0

    iget-object v8, v0, Lo/Ul;->c:Lo/Uq;

    move-object v2, v1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lo/Uh;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View;Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;)V

    .line 330
    iget-object v3, v0, Lo/Ul;->c:Lo/Uq;

    iget-object v5, v0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v1}, Lo/Uh;->e()Landroid/view/View$OnClickListener;

    move-result-object v7

    iget-object v8, v0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lo/Ur;->a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public b()V
    .locals 4

    .line 585
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->b()V

    .line 586
    invoke-static {}, Lo/fd;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lo/Ul;->A:Lo/Uv;

    invoke-interface {v0, v1}, Lo/Uv;->c(Z)V

    .line 590
    :cond_0
    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 591
    invoke-virtual {p0, v0}, Lo/Ul;->g(Z)V

    .line 592
    iget-object v2, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "recommendations"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 593
    iget-object v2, p0, Lo/Ul;->G:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v2, p0, Lo/Ul;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lo/Ul;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lo/Uj;

    if-eqz v2, :cond_1

    iget v2, p0, Lo/Ul;->B:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 596
    iget-object v2, p0, Lo/Ul;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/Uj;

    .line 597
    invoke-virtual {v2, v0}, Lo/Uj;->setSelected(Z)V

    .line 598
    iput v1, p0, Lo/Ul;->B:I

    .line 602
    :cond_1
    iget-object v0, p0, Lo/Ul;->F:Lo/WN;

    if-eqz v0, :cond_2

    .line 603
    invoke-interface {v0}, Lo/WN;->j()V

    :cond_2
    return-void
.end method

.method protected c(I)I
    .locals 1

    .line 415
    iget-object v0, p0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    mul-int v0, v0, p1

    return v0
.end method

.method protected c(ZZZ)I
    .locals 0

    if-eqz p1, :cond_0

    .line 291
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eM:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 293
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eK:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 295
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eH:I

    goto :goto_0

    .line 297
    :cond_2
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eG:I

    :goto_0
    return p1
.end method

.method public c()V
    .locals 2

    .line 448
    iget-object v0, p0, Lo/Ul;->l:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/Ul;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lo/Ul;->l:Lo/aeC$TaskDescription;

    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    .line 450
    iget-object v0, p0, Lo/Ul;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Ur;

    .line 451
    invoke-virtual {v1}, Lo/Ur;->aj_()V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lo/Ul;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TZ;

    .line 454
    invoke-virtual {v1}, Lo/TZ;->d()V

    goto :goto_1

    .line 458
    :cond_1
    iget-object v0, p0, Lo/Ul;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Ur;

    .line 459
    invoke-virtual {v1}, Lo/Ur;->h()V

    goto :goto_2

    .line 462
    :cond_2
    invoke-static {}, Lo/fd;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    iget-object v0, p0, Lo/Ul;->A:Lo/Uv;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/Uv;->c(Z)V

    .line 466
    :cond_3
    iget-object v0, p0, Lo/Ul;->E:Lo/Xb;

    if-eqz v0, :cond_4

    .line 467
    invoke-virtual {v0}, Lo/Xb;->b()V

    .line 470
    :cond_4
    iget-object v0, p0, Lo/Ul;->F:Lo/WN;

    if-eqz v0, :cond_5

    .line 471
    invoke-interface {v0}, Lo/WN;->b()V

    :cond_5
    return-void
.end method

.method protected d(I)Lo/Ul$ActionBar;
    .locals 2

    .line 340
    new-instance v0, Lo/Ul$ActionBar;

    iget-object v1, p0, Lo/Ul;->i:Landroid/widget/LinearLayout;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lo/Ul$ActionBar;-><init>(Lo/Ul;ILjava/util/List;)V

    return-object v0
.end method

.method protected d(Landroid/view/LayoutInflater;Lcom/netflix/model/leafs/PostPlayItem;ZZZLo/TZ;I)V
    .locals 7

    .line 266
    sget-object v0, Lo/gm;->c:Lo/gm$ActionBar;

    invoke-virtual {v0}, Lo/gm$ActionBar;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 268
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisodeSeamless"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 270
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->aa_()Lio/reactivex/subjects/Subject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    sget-object p1, Lo/Xr;->b:Lo/Xr$ActionBar;

    iget-object p3, p0, Lo/Ul;->i:Landroid/widget/LinearLayout;

    iget-object p4, p0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 274
    invoke-interface {p4}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->aa_()Lio/reactivex/subjects/Subject;

    move-result-object p4

    iget-object p5, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 275
    invoke-interface {p5}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result p5

    .line 271
    invoke-virtual {p1, p3, p2, p4, p5}, Lo/Xr$ActionBar;->d(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;Z)Lo/Xr;

    move-result-object p1

    iput-object p1, p0, Lo/Ul;->F:Lo/WN;

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0, p3, p5, p4}, Lo/Ul;->c(ZZZ)I

    move-result p5

    .line 279
    iget-object v0, p0, Lo/Ul;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/Ur;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move v4, p3

    move v5, p4

    move v6, p7

    .line 280
    invoke-virtual/range {v0 .. v6}, Lo/Ul;->a(Lo/Ur;Lcom/netflix/model/leafs/PostPlayItem;Lo/TZ;ZZI)V

    .line 281
    iget-object p2, p0, Lo/Ul;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    iget-object p2, p0, Lo/Ul;->z:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 4

    .line 118
    iget-object v0, p0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->m()Lo/AK;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Lo/AK;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 120
    :goto_1
    iget-boolean v3, p0, Lo/Ul;->d:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 122
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 124
    :cond_3
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 4

    .line 622
    sget-object v0, Lo/gm;->c:Lo/gm$ActionBar;

    invoke-virtual {v0}, Lo/gm$ActionBar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->e()V

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisode"

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisodeSeamless"

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 634
    :cond_1
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->e()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 628
    sget-object v1, Lcom/netflix/cl/model/AppView;->nextEpisodeButton:Lcom/netflix/cl/model/AppView;

    iget-object v2, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 631
    invoke-static {v2}, Lo/Ul;->d(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 628
    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    :goto_1
    return-void
.end method

.method protected e(Lo/Uq;Lo/Ur;Lcom/netflix/model/leafs/PostPlayItem;Lo/TZ;ZZI)V
    .locals 7

    .line 305
    iput-object p1, p0, Lo/Ul;->c:Lo/Uq;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 306
    invoke-virtual/range {v0 .. v6}, Lo/Ul;->a(Lo/Ur;Lcom/netflix/model/leafs/PostPlayItem;Lo/TZ;ZZI)V

    return-void
.end method

.method public e(Z)V
    .locals 4

    .line 477
    iget-object v0, p0, Lo/Ul;->l:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/Ul;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lo/Ul;->l:Lo/aeC$TaskDescription;

    invoke-virtual {v0}, Lo/aeC$TaskDescription;->d()V

    .line 479
    iget-object v0, p0, Lo/Ul;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Ur;

    .line 480
    iget-object v2, p0, Lo/Ul;->l:Lo/aeC$TaskDescription;

    invoke-virtual {v2}, Lo/aeC$TaskDescription;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/Ur;->a(I)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lo/Ul;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TZ;

    .line 483
    invoke-virtual {v1}, Lo/TZ;->a()V

    goto :goto_1

    .line 487
    :cond_1
    iget-boolean v0, p0, Lo/Ul;->p:Z

    const/4 v1, 0x0

    const-string v2, "nf_postplay"

    if-eqz v0, :cond_5

    const-string p1, "Second time postplay "

    .line 488
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object p1, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 490
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nextEpisode"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 491
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nextEpisodeSeamless"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 492
    :cond_2
    invoke-direct {p0}, Lo/Ul;->D()V

    .line 494
    :cond_3
    invoke-static {}, Lo/fd;->j()Z

    move-result p1

    if-nez p1, :cond_4

    .line 495
    iget-object p1, p0, Lo/Ul;->A:Lo/Uv;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/Uv;->c(Z)V

    .line 497
    :cond_4
    iget-object p1, p0, Lo/Ul;->z:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ur;

    .line 498
    invoke-virtual {v0}, Lo/Ur;->b()V

    goto :goto_2

    .line 501
    :cond_5
    iget-object v0, p0, Lo/Ul;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Ur;

    .line 502
    invoke-virtual {v3}, Lo/Ur;->b()V

    goto :goto_3

    .line 505
    :cond_6
    iget-object v0, p0, Lo/Ul;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Ur;

    if-eqz p1, :cond_7

    .line 507
    invoke-virtual {v3}, Lo/Ur;->c()V

    goto :goto_4

    .line 511
    :cond_8
    iget-object p1, p0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->no:I

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 513
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    new-instance v0, Lo/Ul$5;

    invoke-direct {v0, p0}, Lo/Ul$5;-><init>(Lo/Ul;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const-string p1, "First time postplay"

    .line 522
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_a
    iget-object p1, p0, Lo/Ul;->I:Lo/Xw;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lo/Ul;->l:Lo/aeC$TaskDescription;

    if-eqz p1, :cond_b

    .line 525
    iget-object p1, p0, Lo/Ul;->l:Lo/aeC$TaskDescription;

    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/aeC$TaskDescription;->a(I)V

    .line 526
    iget-object p1, p0, Lo/Ul;->I:Lo/Xw;

    invoke-virtual {p1}, Lo/Xw;->e()V

    .line 528
    :cond_b
    iget-object p1, p0, Lo/Ul;->E:Lo/Xb;

    if-eqz p1, :cond_c

    .line 530
    iput-object v1, p0, Lo/Ul;->l:Lo/aeC$TaskDescription;

    .line 531
    invoke-virtual {p1}, Lo/Xb;->i()V

    .line 534
    :cond_c
    iget-object p1, p0, Lo/Ul;->F:Lo/WN;

    if-eqz p1, :cond_d

    .line 536
    invoke-interface {p1}, Lo/WN;->h()Z

    move-result v0

    iget-object v1, p0, Lo/Ul;->l:Lo/aeC$TaskDescription;

    invoke-virtual {v1}, Lo/aeC$TaskDescription;->a()I

    move-result v1

    .line 535
    invoke-interface {p1, v0, v1}, Lo/WN;->a(ZI)V

    :cond_d
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 563
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->g(Z)V

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lo/Ul;->H:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TZ;

    .line 566
    invoke-virtual {v0}, Lo/TZ;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()V
    .locals 0

    .line 639
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->m()V

    return-void
.end method

.method public r()V
    .locals 2

    .line 573
    invoke-virtual {p0}, Lo/Ul;->w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->r()V

    .line 575
    iget-boolean v0, p0, Lo/Ul;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 577
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisode"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisodeSeamless"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    :cond_0
    invoke-direct {p0}, Lo/Ul;->A()V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 20

    move-object/from16 v8, p0

    .line 134
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    const-string v1, "nf_postplay"

    if-eqz v0, :cond_13

    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 139
    :cond_0
    iget-object v0, v8, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Activity for playback is already not valid! Do nothing!"

    .line 140
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_1
    iget-object v0, v8, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_12

    iget-object v0, v8, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->l()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_9

    .line 149
    :cond_2
    iget-object v0, v8, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 150
    iget-object v0, v8, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->x()Z

    move-result v10

    .line 152
    iget-object v0, v8, Lo/Ul;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 153
    iget-object v0, v8, Lo/Ul;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 155
    iget-object v0, v8, Lo/Ul;->G:Landroid/widget/TextView;

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eqz v0, :cond_6

    .line 157
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getExperienceTitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getExperienceTitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getExperienceTitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommendations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, v8, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ja:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    .line 163
    :goto_0
    iget-object v1, v8, Lo/Ul;->G:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, v8, Lo/Ul;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    :cond_6
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "twoUpChoicepoint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 168
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v14, 0x1

    if-le v0, v14, :cond_7

    if-nez v13, :cond_7

    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    const/4 v15, 0x0

    .line 169
    :goto_2
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisodeSeamless"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    .line 171
    invoke-virtual/range {p0 .. p0}, Lo/Ul;->x()V

    if-eqz v15, :cond_8

    .line 173
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ex:I

    goto :goto_3

    :cond_8
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ew:I

    :goto_3
    move v7, v0

    .line 175
    iget-object v0, v8, Lo/Ul;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, v8, Lo/Ul;->s:Landroid/view/View;

    new-instance v1, Lo/Ul$3;

    invoke-direct {v1, v8}, Lo/Ul$3;-><init>(Lo/Ul;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x0

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    .line 187
    iget-object v1, v8, Lo/Ul;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/TZ;

    iput-object v1, v8, Lo/Ul;->f:Lo/TZ;

    .line 188
    invoke-virtual {v8, v0}, Lo/Ul;->e(Lcom/netflix/model/leafs/PostPlayItem;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 189
    iget-object v1, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v1

    invoke-virtual {v8, v1}, Lo/Ul;->e(I)Lo/aeC$TaskDescription;

    move-result-object v1

    .line 190
    iget-object v2, v8, Lo/Ul;->f:Lo/TZ;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->ns:I

    invoke-virtual {v2, v3}, Lo/TZ;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/Ue;

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 193
    invoke-virtual {v2, v0, v1}, Lo/Ue;->d(Lcom/netflix/model/leafs/PostPlayItem;Lo/aeC$TaskDescription;)V

    .line 194
    invoke-virtual {v2, v12}, Lo/Ue;->setVisibility(I)V

    goto :goto_5

    .line 196
    :cond_9
    invoke-virtual {v2, v11}, Lo/Ue;->setVisibility(I)V

    .line 201
    :cond_a
    :goto_5
    iget-object v1, v8, Lo/Ul;->g:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lo/Ul;->f:Lo/TZ;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v1, v8, Lo/Ul;->f:Lo/TZ;

    iget-object v2, v8, Lo/Ul;->c:Lo/Uq;

    iget-object v4, v8, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v5, v8, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lo/TZ;->a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    .line 204
    iget-object v1, v8, Lo/Ul;->f:Lo/TZ;

    invoke-virtual {v1}, Lo/TZ;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, v8, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    iget-object v1, v8, Lo/Ul;->H:Ljava/util/List;

    iget-object v2, v8, Lo/Ul;->f:Lo/TZ;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_b

    .line 207
    invoke-virtual/range {p0 .. p0}, Lo/Ul;->o()Z

    move-result v1

    if-nez v1, :cond_b

    .line 208
    iget-object v6, v8, Lo/Ul;->f:Lo/TZ;

    move-object v2, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    move/from16 v19, v7

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lo/Ul;->d(Landroid/view/LayoutInflater;Lcom/netflix/model/leafs/PostPlayItem;ZZZLo/TZ;I)V

    goto :goto_6

    :cond_b
    move/from16 v19, v7

    :goto_6
    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v19

    goto/16 :goto_4

    :cond_c
    if-eqz v13, :cond_d

    .line 215
    iget-object v0, v8, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->aa_()Lio/reactivex/subjects/Subject;

    move-result-object v0

    .line 216
    new-instance v1, Lo/Xw;

    iget-object v2, v8, Lo/Ul;->i:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-direct {v1, v2, v3, v0}, Lo/Xw;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayExperience;Lio/reactivex/subjects/Subject;)V

    iput-object v1, v8, Lo/Ul;->I:Lo/Xw;

    .line 219
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lo/Ul;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 220
    iget-object v0, v8, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->aa_()Lio/reactivex/subjects/Subject;

    move-result-object v3

    .line 222
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeasonRenewalPostPlayItem()Lcom/netflix/model/leafs/PostPlayItem;

    move-result-object v5

    if-eqz v3, :cond_f

    if-eqz v5, :cond_f

    .line 224
    new-instance v0, Lo/Xb;

    iget-object v2, v8, Lo/Ul;->i:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 227
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeasonRenewal()Lcom/netflix/model/leafs/SeasonRenewal;

    move-result-object v4

    .line 230
    invoke-virtual/range {p0 .. p0}, Lo/Ul;->l()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lo/aeI;->c:Lo/aeI;

    invoke-virtual {v1}, Lo/aeI;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v6, 0x1

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_7
    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/Xb;-><init>(Landroid/view/ViewGroup;Lio/reactivex/subjects/Subject;Lcom/netflix/model/leafs/SeasonRenewal;Lcom/netflix/model/leafs/PostPlayItem;Z)V

    iput-object v0, v8, Lo/Ul;->E:Lo/Xb;

    .line 235
    :cond_f
    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v8, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v0

    if-lez v0, :cond_10

    if-nez v10, :cond_10

    iget-object v0, v8, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_10

    iget-object v0, v8, Lo/Ul;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->k()Z

    move-result v0

    if-nez v0, :cond_10

    .line 236
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v8, v0}, Lo/Ul;->a(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    goto :goto_8

    :cond_10
    if-nez v13, :cond_11

    .line 238
    invoke-virtual/range {p0 .. p0}, Lo/Ul;->o()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lo/gT;->a:Lo/gT$Activity;

    .line 239
    invoke-virtual {v0}, Lo/gT$Activity;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 240
    invoke-direct/range {p0 .. p0}, Lo/Ul;->C()V

    :cond_11
    :goto_8
    return-void

    :cond_12
    :goto_9
    const-string v0, "Player fragment is null, do nothing!"

    .line 145
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    :goto_a
    const-string v0, "We do not have any data! Do nothing!"

    .line 135
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public t()V
    .locals 0

    .line 615
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->t()V

    .line 616
    invoke-virtual {p0}, Lo/Ul;->c()V

    return-void
.end method

.method protected x()V
    .locals 3

    .line 261
    iget-object v0, p0, Lo/Ul;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lo/Ul;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lo/Ul;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int v1, v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
