.class public Lo/Lm;
.super Lo/MenuInflater;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Lm$StateListAnimator;
    }
.end annotation


# instance fields
.field protected a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field private b:Ljava/lang/String;

.field protected c:Lo/GridView;

.field d:I

.field private e:J

.field protected f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final g:Landroid/animation/ValueAnimator;

.field protected h:Lo/Ab;

.field protected i:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private j:Landroid/widget/ProgressBar;

.field private k:Z

.field private l:Ljava/lang/String;

.field private final m:Landroid/animation/ValueAnimator;

.field private n:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field private o:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

.field private p:I

.field private s:Lo/Lm$StateListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 105
    invoke-direct {p0, p1}, Lo/MenuInflater;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lo/Lm;->e:J

    const/4 p1, 0x2

    .line 68
    iput p1, p0, Lo/Lm;->d:I

    new-array v0, p1, [F

    .line 75
    fill-array-data v0, :array_0

    .line 76
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lo/Lm;->g:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 77
    fill-array-data p1, :array_1

    .line 78
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lo/Lm;->m:Landroid/animation/ValueAnimator;

    .line 80
    new-instance p1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const-string v0, "LolomoVideoRowView"

    const/16 v1, -0x1d6

    invoke-direct {p1, v0, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lo/Lm;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lo/Lm;->i:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 86
    iput-object p1, p0, Lo/Lm;->l:Ljava/lang/String;

    const-string p1, "billboard-bigRow"

    .line 92
    invoke-static {p1}, Lo/KZ;->b(Ljava/lang/String;)Lo/KZ;

    move-result-object p1

    iput-object p1, p0, Lo/Lm;->o:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lo/Lm;->k:Z

    .line 96
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/adq;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lo/Lm;->p:I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 109
    invoke-direct {p0, p1, p2}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 58
    iput-wide p1, p0, Lo/Lm;->e:J

    const/4 p1, 0x2

    .line 68
    iput p1, p0, Lo/Lm;->d:I

    new-array p2, p1, [F

    .line 75
    fill-array-data p2, :array_0

    .line 76
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lo/Lm;->g:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 77
    fill-array-data p1, :array_1

    .line 78
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lo/Lm;->m:Landroid/animation/ValueAnimator;

    .line 80
    new-instance p1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const-string p2, "LolomoVideoRowView"

    const/16 v0, -0x1d6

    invoke-direct {p1, p2, v0}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lo/Lm;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lo/Lm;->i:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 86
    iput-object p1, p0, Lo/Lm;->l:Ljava/lang/String;

    const-string p1, "billboard-bigRow"

    .line 92
    invoke-static {p1}, Lo/KZ;->b(Ljava/lang/String;)Lo/KZ;

    move-result-object p1

    iput-object p1, p0, Lo/Lm;->o:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lo/Lm;->k:Z

    .line 96
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/adq;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lo/Lm;->p:I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 58
    iput-wide p1, p0, Lo/Lm;->e:J

    const/4 p1, 0x2

    .line 68
    iput p1, p0, Lo/Lm;->d:I

    new-array p2, p1, [F

    .line 75
    fill-array-data p2, :array_0

    .line 76
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lo/Lm;->g:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 77
    fill-array-data p1, :array_1

    .line 78
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lo/Lm;->m:Landroid/animation/ValueAnimator;

    .line 80
    new-instance p1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const-string p2, "LolomoVideoRowView"

    const/16 p3, -0x1d6

    invoke-direct {p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lo/Lm;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lo/Lm;->i:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 86
    iput-object p1, p0, Lo/Lm;->l:Ljava/lang/String;

    const-string p1, "billboard-bigRow"

    .line 92
    invoke-static {p1}, Lo/KZ;->b(Ljava/lang/String;)Lo/KZ;

    move-result-object p1

    iput-object p1, p0, Lo/Lm;->o:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lo/Lm;->k:Z

    .line 96
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/adq;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lo/Lm;->p:I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lo/Lm;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Lm;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    return-void
.end method

.method private synthetic b(J)V
    .locals 0

    .line 128
    iget-object p1, p0, Lo/Lm;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Lo/Lm;->j:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private c(Lo/Ab;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lo/Lm;->l:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 236
    invoke-static {}, Lo/aed;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lo/Lm;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Lm;->k:Z

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lo/Lm;->b(Lo/Ab;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 241
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video started "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LolomoVideoRowView"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c()Z
    .locals 4

    .line 250
    invoke-virtual {p0}, Lo/Lm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 252
    :cond_0
    invoke-virtual {p0}, Lo/Lm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 255
    :cond_1
    invoke-virtual {p0}, Lo/Lm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/x;->c(Landroid/content/Context;)I

    move-result v0

    sget-object v3, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->e:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v3

    if-lt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic d(Lo/Lm;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/Lm;->b(J)V

    return-void
.end method

.method private synthetic e(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 6

    .line 134
    iget-object v0, p0, Lo/Lm;->n:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 135
    iput-object p1, p0, Lo/Lm;->n:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerStatusChangeListener new status\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " old status\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LolomoVideoRowView"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v1, Lo/Lm$3;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 158
    :pswitch_0
    iget-object p1, p0, Lo/Lm;->j:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    iget p1, p0, Lo/Lm;->d:I

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v4}, Lo/Lm;->e(Z)V

    goto :goto_2

    .line 154
    :pswitch_1
    iget-object p1, p0, Lo/Lm;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v3

    div-long/2addr v3, v1

    iput-wide v3, p0, Lo/Lm;->e:J

    goto :goto_2

    .line 146
    :pswitch_2
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-eq v0, p1, :cond_1

    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne v0, p1, :cond_2

    .line 147
    :cond_1
    invoke-virtual {p0, v5}, Lo/Lm;->a(Z)V

    .line 149
    :cond_2
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v3

    div-long/2addr v3, v1

    iput-wide v3, p0, Lo/Lm;->e:J

    goto :goto_2

    :pswitch_3
    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lo/Lm;->e:J

    .line 141
    iput-boolean v4, p0, Lo/Lm;->k:Z

    .line 142
    iget p1, p0, Lo/Lm;->d:I

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v4}, Lo/Lm;->a(Z)V

    .line 143
    invoke-virtual {p0}, Lo/Lm;->i()V

    :goto_2
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic e(Lo/Lm;Lo/Ab;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lo/Lm;->c(Lo/Ab;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 420
    invoke-direct {p0}, Lo/Lm;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ka:I

    invoke-virtual {p0, v0}, Lo/Lm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 425
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    new-instance v1, Lo/Lm$1;

    invoke-direct {v1, p0, v0}, Lo/Lm$1;-><init>(Lo/Lm;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private j()Z
    .locals 1

    .line 440
    sget-object v0, Lo/aeI;->c:Lo/aeI;

    invoke-virtual {v0}, Lo/aeI;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 268
    invoke-virtual {p0}, Lo/Lm;->i()V

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, v0}, Lo/Lm;->a(Z)V

    .line 270
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lo/GridView;->i()V

    :cond_0
    return-void
.end method

.method protected a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 184
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    invoke-virtual {v0, p1}, Lo/GridView;->setAlpha(F)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 301
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lo/Lm;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lo/Lm;->e()V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lo/Lm;->b()V

    :goto_0
    return-void
.end method

.method public a(Lo/Lp;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Z
    .locals 13

    .line 196
    iget-object v0, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setViewInFocus(Z)V

    .line 199
    invoke-virtual {p1}, Lo/Lp;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/Lm;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iput-boolean v1, p0, Lo/Lm;->k:Z

    const-wide/16 v2, 0x0

    .line 201
    iput-wide v2, p0, Lo/Lm;->e:J

    .line 203
    :cond_0
    invoke-virtual {p1}, Lo/Lp;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Lm;->b:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lo/Lm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 209
    :cond_1
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    new-instance v2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 211
    invoke-virtual {p1}, Lo/Lp;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    const/4 v3, 0x1

    .line 212
    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    sget-object v4, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 213
    invoke-virtual {v2, v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    .line 209
    invoke-virtual {v0, v2}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 215
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    invoke-virtual {p1}, Lo/Lp;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p1}, Lo/Lp;->f()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    .line 220
    new-instance v2, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTrackId()I

    move-result v6

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListPos()I

    move-result v7

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1}, Lo/Lp;->i()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lo/Lp;->h()Ljava/lang/String;

    move-result-object v12

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lo/Lm;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 221
    invoke-virtual {p1}, Lo/Lp;->e()Lo/AR;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p2

    iput-object p2, p0, Lo/Lm;->i:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 223
    invoke-virtual {p1}, Lo/Lp;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/Lm;->l:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Lo/Lp;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 226
    invoke-virtual {p1}, Lo/Lp;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/KZ;->b(Ljava/lang/String;)Lo/KZ;

    move-result-object p1

    iput-object p1, p0, Lo/Lm;->o:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    :cond_2
    return v3
.end method

.method protected b()V
    .locals 2

    .line 315
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/GridView;->setAlpha(F)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 337
    iput p1, p0, Lo/Lm;->d:I

    return-void
.end method

.method protected b(Lo/Ab;)Z
    .locals 13

    .line 245
    iget-object v0, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setViewInFocus(Z)V

    .line 246
    iget-object v2, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aw()J

    move-result-wide v3

    iget-object v6, p0, Lo/Lm;->l:Ljava/lang/String;

    sget-object v7, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v8, p0, Lo/Lm;->o:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    iget-object v9, p0, Lo/Lm;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    new-instance v10, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-wide v0, p0, Lo/Lm;->e:J

    const-string v5, "-1"

    invoke-direct {v10, v5, v5, v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, p1

    invoke-virtual/range {v2 .. v12}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;Lo/Ab;)V
    .locals 7

    if-eqz p1, :cond_4

    .line 387
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 391
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->isAttachedToWindow()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array v1, p1, [I

    .line 393
    iget-object v2, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 394
    aget v1, v1, v2

    int-to-float v1, v1

    .line 395
    iget-object v3, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    int-to-float v5, v3

    add-float/2addr v5, v1

    .line 396
    iget v6, p0, Lo/Lm;->p:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    .line 398
    iget-object v6, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getHeight()I

    move-result v6

    div-int/2addr v6, p1

    int-to-float p1, v6

    add-float/2addr p1, v1

    float-to-int p1, p1

    if-lez p1, :cond_3

    .line 399
    iget v6, p0, Lo/Lm;->p:I

    if-ge p1, v6, :cond_3

    if-gtz v4, :cond_1

    int-to-float p1, v3

    add-float/2addr v1, p1

    int-to-float p1, v6

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 402
    :cond_3
    :goto_1
    invoke-virtual {p0, v5, v0, p2}, Lo/Lm;->setIsInViewPort(ZZLo/Ab;)V

    :cond_4
    return-void
.end method

.method protected d()V
    .locals 2

    .line 293
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/GridView;->setAlpha(F)V

    .line 294
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 310
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setAlpha(F)V

    .line 311
    iget-object v0, p0, Lo/Lm;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x8

    .line 263
    invoke-virtual {p0, v0}, Lo/Lm;->setVisibility(I)V

    .line 264
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to show lolomo video row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lo/Lm;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 286
    iget-object p1, p0, Lo/Lm;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lo/Lm;->d()V

    :goto_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 416
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->j()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 2

    .line 276
    iget-object v0, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setViewInFocus(Z)V

    .line 277
    iget-object v0, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b()V

    .line 279
    iget-object v0, p0, Lo/Lm;->h:Lo/Ab;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lo/Lm;->h:Lo/Ab;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 118
    invoke-super {p0}, Lo/MenuInflater;->onFinishInflate()V

    .line 119
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->W:I

    invoke-virtual {p0, v0}, Lo/Lm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    iput-object v0, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    .line 120
    iget-object v0, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScaleType(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V

    .line 121
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->R:I

    invoke-virtual {p0, v0}, Lo/Lm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    iput-object v0, p0, Lo/Lm;->c:Lo/GridView;

    .line 123
    invoke-direct {p0}, Lo/Lm;->f()V

    .line 125
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->X:I

    invoke-virtual {p0, v0}, Lo/Lm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lo/Lm;->j:Landroid/widget/ProgressBar;

    .line 127
    iget-object v0, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    new-instance v1, Lo/Ln;

    invoke-direct {v1, p0}, Lo/Ln;-><init>(Lo/Lm;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayProgressListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;)V

    .line 133
    iget-object v0, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    new-instance v1, Lo/Lr;

    invoke-direct {v1, p0}, Lo/Lr;-><init>(Lo/Lm;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayerStatusChangeListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V

    .line 164
    new-instance v0, Lo/Lu;

    invoke-direct {v0, p0}, Lo/Lu;-><init>(Lo/Lm;)V

    .line 166
    iget-object v1, p0, Lo/Lm;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    iget-object v1, p0, Lo/Lm;->g:Landroid/animation/ValueAnimator;

    new-instance v2, Lo/Lm$4;

    invoke-direct {v2, p0}, Lo/Lm$4;-><init>(Lo/Lm;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    iget-object v1, p0, Lo/Lm;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    iget-object v0, p0, Lo/Lm;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lo/Lm$5;

    invoke-direct {v1, p0}, Lo/Lm$5;-><init>(Lo/Lm;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 320
    invoke-super {p0, p1}, Lo/MenuInflater;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lo/Lm;->l:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 323
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aa()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 326
    invoke-virtual {p0, p1}, Lo/Lm;->a(Z)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 331
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ab()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBackgroundImageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lo/Lm;->c:Lo/GridView;

    invoke-virtual {v0, p1}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIsInViewPort(ZZLo/Ab;)V
    .locals 3

    .line 341
    iget v0, p0, Lo/Lm;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 342
    :goto_0
    iput p1, p0, Lo/Lm;->d:I

    .line 343
    iget p1, p0, Lo/Lm;->d:I

    if-eq v0, p1, :cond_b

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "visibility changed : oldVisibility "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lo/Lm;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LolomoVideoRowView"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lo/Lm;->s:Lo/Lm$StateListAnimator;

    if-eqz p1, :cond_2

    .line 346
    iget p2, p0, Lo/Lm;->d:I

    invoke-interface {p1, p2}, Lo/Lm$StateListAnimator;->c(I)V

    .line 348
    :cond_2
    iget p1, p0, Lo/Lm;->d:I

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_1

    .line 380
    :cond_3
    invoke-virtual {p0}, Lo/Lm;->i()V

    goto :goto_1

    .line 364
    :cond_4
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setViewInFocus(Z)V

    .line 365
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 366
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ab()V

    goto :goto_1

    .line 367
    :cond_5
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 368
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aa()V

    goto :goto_1

    .line 369
    :cond_6
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 370
    invoke-direct {p0}, Lo/Lm;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 371
    invoke-direct {p0, p3}, Lo/Lm;->c(Lo/Ab;)V

    goto :goto_1

    .line 375
    :cond_7
    iput-object p3, p0, Lo/Lm;->h:Lo/Ab;

    goto :goto_1

    .line 350
    :cond_8
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setViewInFocus(Z)V

    .line 351
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 352
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aa()V

    goto :goto_1

    .line 353
    :cond_9
    iget-object p1, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 354
    invoke-direct {p0}, Lo/Lm;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 355
    invoke-direct {p0, p3}, Lo/Lm;->c(Lo/Ab;)V

    goto :goto_1

    .line 359
    :cond_a
    iput-object p3, p0, Lo/Lm;->h:Lo/Ab;

    :cond_b
    :goto_1
    return-void
.end method

.method public setVideoViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lo/Lm;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVisibilityChangeListener(Lo/Lm$StateListAnimator;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lo/Lm;->s:Lo/Lm$StateListAnimator;

    return-void
.end method
