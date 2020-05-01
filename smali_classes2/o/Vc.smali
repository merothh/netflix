.class public abstract Lo/Vc;
.super Lo/Vd;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Vc$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/Vc$Application;


# instance fields
.field protected b:Lo/GridView;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/view/animation/PathInterpolator;

.field private final j:Landroid/animation/AnimatorSet;

.field private k:Landroid/animation/AnimatorSet;

.field private l:Landroid/animation/AnimatorSet;

.field private m:Landroid/animation/AnimatorSet;

.field private n:F

.field private o:Lo/MenuInflater;

.field private p:Z

.field private q:F

.field private s:J

.field private t:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Vc$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Vc$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Vc;->e:Lo/Vc$Application;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Vc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Vc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lo/Vd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3f251eb8    # 0.645f

    const p3, 0x3d3851ec    # 0.045f

    const v0, 0x3eb5c28f    # 0.355f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lo/Vc;->i:Landroid/view/animation/PathInterpolator;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Vc;->g:Ljava/util/ArrayList;

    .line 48
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lo/Vc;->j:Landroid/animation/AnimatorSet;

    .line 49
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lo/Vc;->m:Landroid/animation/AnimatorSet;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lo/Vc;->p:Z

    const-wide/16 p1, 0x640

    .line 73
    iput-wide p1, p0, Lo/Vc;->s:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 38
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Vc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lo/Vc;Ljava/util/Collection;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 168
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    :cond_0
    invoke-virtual {p0, p1}, Lo/Vc;->e(Ljava/util/Collection;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: initHideUserSelectionChoicePointAnimation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final c(Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;)V
    .locals 12

    .line 278
    invoke-virtual {p0}, Lo/Vc;->l()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lo/Vc;->j()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-eqz v0, :cond_4

    .line 279
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->action()Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->type()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "playNextEpisode"

    invoke-static {v1, v5, v3, v4, v2}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_4

    .line 283
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lo/Vc;->m()Z

    move-result v2

    .line 280
    invoke-interface {p1, p2, v0, v1, v2}, Lo/Xt;->d(Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Z)V

    goto :goto_2

    .line 287
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 288
    invoke-virtual {p0}, Lo/Vc;->n()Z

    move-result v1

    const-string v2, "segmentId"

    const-string v3, "it.id()"

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isInterstitialPostPlay()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    const/4 v4, 0x0

    .line 301
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-static {v7, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v3, p1

    move-object v5, p2

    .line 298
    invoke-static/range {v3 .. v11}, Lo/Xt$StateListAnimator;->d(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 290
    invoke-virtual {p0}, Lo/Vc;->m()Z

    move-result v4

    .line 292
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-static {v7, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v8

    .line 295
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->startTimeMs()I

    move-result v9

    move-object v3, p1

    move-object v5, p2

    .line 289
    invoke-interface/range {v3 .. v9}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static final synthetic d(Lo/Vc;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/Vc;->j:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic e(Lo/Vc;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/Vc;->m:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic e(Lo/Vc;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lo/Vc;->c(Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;)V

    return-void
.end method

.method private final e(Lo/Xt;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;)V
    .locals 12

    .line 194
    sget-object v0, Lo/Vq;->b:Lo/Vq;

    invoke-virtual {v0, p2, p3}, Lo/Vq;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;)J

    move-result-wide v0

    const/16 p2, 0x3e8

    int-to-long v2, p2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lo/amG;->d(JJ)J

    move-result-wide v0

    .line 196
    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 199
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 205
    new-instance v3, Lo/Vc$Activity;

    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move-object v7, p3

    move-wide v8, v0

    invoke-direct/range {v4 .. v9}, Lo/Vc$Activity;-><init>(Lo/Vc;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V

    check-cast v3, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 218
    sget-object v3, Lo/Vf;->h:Lo/Vf$Activity;

    invoke-virtual {v3}, Lo/Vf$Activity;->c()Landroid/view/animation/LinearInterpolator;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 219
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 204
    check-cast v2, Landroid/view/animation/Animation;

    iput-object v2, p0, Lo/Vc;->t:Landroid/view/animation/Animation;

    .line 222
    iget-object v2, p0, Lo/Vc;->b:Lo/GridView;

    const-string v3, "timerLayout"

    if-nez v2, :cond_0

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lo/GridView;->setScaleX(F)V

    .line 223
    iget-object v2, p0, Lo/Vc;->b:Lo/GridView;

    if-nez v2, :cond_1

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {p0, v2}, Lo/Vc;->e(Landroid/animation/Animator;)V

    .line 224
    invoke-virtual {p0}, Lo/Vc;->u()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 225
    :cond_2
    invoke-virtual {p0}, Lo/Vc;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    :cond_3
    invoke-virtual {p0}, Lo/Vc;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lo/Vc$StateListAnimator;

    invoke-direct {v1, p0, p2, p1, p3}, Lo/Vc$StateListAnimator;-><init>(Lo/Vc;Lkotlin/jvm/internal/Ref$BooleanRef;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected final a()Lo/GridView;
    .locals 2

    .line 51
    iget-object v0, p0, Lo/Vc;->b:Lo/GridView;

    if-nez v0, :cond_0

    const-string v1, "timerLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-boolean p1, p0, Lo/Vc;->p:Z

    if-nez p1, :cond_5

    .line 263
    iget-object p1, p0, Lo/Vc;->t:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 264
    iget-object p1, p0, Lo/Vc;->b:Lo/GridView;

    const-string v1, "timerLayout"

    if-nez p1, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Lo/GridView;->setScaleX(F)V

    .line 265
    iget-object p1, p0, Lo/Vc;->b:Lo/GridView;

    if-nez p1, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lo/Vc;->b:Lo/GridView;

    if-nez p1, :cond_2

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lo/Vc;->t:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Lo/GridView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, p1}, Lo/Vc;->c(Z)V

    .line 269
    iget-object p1, p0, Lo/Vc;->o:Lo/MenuInflater;

    if-nez p1, :cond_4

    const-string v1, "choicePointContainer"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v0}, Lo/MenuInflater;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xz;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;",
            "Lo/ErrorCodes;",
            "Lo/Xz;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            "Lcom/netflix/model/leafs/originals/interactive/BaseLayout;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "imageLoaderRepository"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moment"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseLayout"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-super/range {p0 .. p7}, Lo/Vd;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xz;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;I)V

    .line 88
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/Moment;->config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->queueSelectedChoice()Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-static {p2, p6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p6, 0x1

    xor-int/2addr p2, p6

    invoke-virtual {p0, p2}, Lo/Vc;->a(Z)V

    .line 89
    check-cast p5, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 90
    sget-object p2, Lo/Vc;->e:Lo/Vc$Application;

    check-cast p2, Lo/MessagePdu;

    .line 91
    invoke-virtual {p0, p3}, Lo/Vc;->c(Z)V

    .line 92
    invoke-virtual {p0, p3}, Lo/Vc;->d(Z)V

    const/4 p2, 0x0

    .line 93
    iput p2, p0, Lo/Vc;->q:F

    .line 97
    invoke-virtual {p0}, Lo/Vc;->getContext()Landroid/content/Context;

    move-result-object p7

    .line 98
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 96
    invoke-static {p7, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/app/Activity;

    .line 95
    invoke-static {p7}, Lo/adq;->b(Landroid/app/Activity;)I

    move-result p7

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p7

    :goto_1
    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ac()Lo/Ya;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lo/Ya;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_2

    :cond_2
    move p1, p7

    :goto_2
    if-le p1, v0, :cond_3

    move p7, v0

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    sub-int/2addr p7, p1

    .line 111
    div-int/lit8 p7, p7, 0x2

    move v1, p7

    move p7, p1

    :goto_3
    int-to-float v2, p7

    .line 116
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;

    move-result-object p5

    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/Size;->height()Ljava/lang/Integer;

    move-result-object p5

    const-string v3, "layout.canvasSize().height()"

    invoke-static {p5, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr v2, p5

    .line 118
    iget-object p5, p0, Lo/Vc;->o:Lo/MenuInflater;

    const-string v3, "choicePointContainer"

    if-nez p5, :cond_4

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p5}, Lo/MenuInflater;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    iget p5, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p5, p5

    iput p5, p0, Lo/Vc;->n:F

    .line 121
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/Moment;->config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object p5

    const/16 v4, 0x23

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->is4By3()Z

    move-result p5

    if-ne p5, p6, :cond_5

    iput p2, p0, Lo/Vc;->q:F

    goto :goto_4

    :cond_5
    if-gt p1, v0, :cond_6

    int-to-float p1, v4

    mul-float p1, p1, v2

    .line 122
    iput p1, p0, Lo/Vc;->q:F

    goto :goto_4

    :cond_6
    sub-int/2addr p1, v0

    .line 123
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget p5, p0, Lo/Vc;->n:F

    cmpg-float p5, p1, p5

    if-gez p5, :cond_7

    int-to-float p5, v4

    mul-float p5, p5, v2

    sub-float/2addr p5, p1

    .line 124
    invoke-static {p2, p5}, Lo/amG;->c(FF)F

    move-result p1

    iput p1, p0, Lo/Vc;->q:F

    .line 127
    :cond_7
    :goto_4
    iget p1, p0, Lo/Vc;->n:F

    iget p2, p0, Lo/Vc;->q:F

    cmpl-float p5, p1, p2

    if-lez p5, :cond_8

    sub-float/2addr p1, p2

    .line 128
    iput p1, p0, Lo/Vc;->n:F

    :cond_8
    int-to-float p1, v1

    .line 131
    iget-object p2, p0, Lo/Vc;->o:Lo/MenuInflater;

    if-nez p2, :cond_9

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lo/MenuInflater;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lo/Vc;->setSubtitleY(F)V

    .line 132
    invoke-virtual {p0}, Lo/Vc;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_b

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p2, -0x1

    .line 133
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 134
    iput p7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 135
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 136
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/Moment;->config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->is4By3()Z

    move-result p2

    if-ne p2, p6, :cond_a

    goto :goto_5

    :cond_a
    int-to-float p2, v4

    mul-float p2, p2, v2

    float-to-double p2, p2

    const-wide/high16 p4, 0x3fe0000000000000L    # 0.5

    add-double/2addr p2, p4

    double-to-int p3, p2

    :goto_5
    add-int/2addr v1, p3

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 137
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1}, Lo/Vc;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {p0, v2}, Lo/Vc;->e(F)V

    .line 140
    invoke-virtual {p0, v2}, Lo/Vc;->b(F)V

    return-void

    .line 132
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-boolean p1, p0, Lo/Vc;->p:Z

    if-nez p1, :cond_1

    .line 313
    iget-object p1, p0, Lo/Vc;->o:Lo/MenuInflater;

    if-nez p1, :cond_0

    const-string v0, "choicePointContainer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/MenuInflater;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected final b()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lo/Vc;->p:Z

    return v0
.end method

.method protected final c()F
    .locals 1

    .line 54
    iget v0, p0, Lo/Vc;->n:F

    return v0
.end method

.method protected final c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hideAnimatorList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lo/Vc;->o:Lo/MenuInflater;

    const-string v1, "choicePointContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 147
    :cond_0
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 149
    iget v5, p0, Lo/Vc;->n:F

    const/4 v7, 0x1

    aput v5, v4, v7

    .line 145
    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "hideAnimation"

    .line 151
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, p0, Lo/Vc;->s:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x118

    .line 152
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 153
    iget-object v2, p0, Lo/Vc;->i:Landroid/view/animation/PathInterpolator;

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget-object v2, p0, Lo/Vc;->o:Lo/MenuInflater;

    if-nez v2, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "fadeOutChoicePoint"

    .line 155
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x758

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0xc8

    .line 156
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    sget-object v2, Lo/Vf;->h:Lo/Vf$Activity;

    invoke-virtual {v2}, Lo/Vf$Activity;->c()Landroid/view/animation/LinearInterpolator;

    move-result-object v2

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    iget-object v2, p0, Lo/Vc;->b:Lo/GridView;

    if-nez v2, :cond_2

    const-string v4, "timerLayout"

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v4, "timerBarFadeOutAnimation"

    .line 159
    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x28

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 160
    iget-object v4, p0, Lo/Vc;->i:Landroid/view/animation/PathInterpolator;

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v3, [Landroid/animation/Animator;

    .line 163
    check-cast v0, Landroid/animation/Animator;

    aput-object v0, v2, v6

    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v2, v7

    invoke-static {v2}, Lo/akz;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 164
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object p1, p0, Lo/Vc;->j:Landroid/animation/AnimatorSet;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method protected final d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/Vc;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final e()Landroid/view/animation/PathInterpolator;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/Vc;->i:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method protected e(F)V
    .locals 2

    .line 254
    sget-object p1, Lo/Vc;->e:Lo/Vc$Application;

    check-cast p1, Lo/MessagePdu;

    .line 255
    invoke-virtual {p0}, Lo/Vc;->s()Lo/Xt;

    move-result-object p1

    invoke-virtual {p0}, Lo/Vc;->r()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    invoke-virtual {p0}, Lo/Vc;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lo/Vc;->e(Lo/Xt;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;)V

    return-void
.end method

.method protected final e(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extraFadeOuts"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lo/Vc;->o:Lo/MenuInflater;

    const-string v1, "choicePointContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 171
    :cond_0
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 173
    iget v5, p0, Lo/Vc;->n:F

    const/4 v7, 0x1

    aput v5, v4, v7

    .line 169
    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "hideChoicePointContainerAnimation"

    .line 175
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, p0, Lo/Vc;->s:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x118

    .line 176
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 177
    iget-object v2, p0, Lo/Vc;->i:Landroid/view/animation/PathInterpolator;

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    iget-object v2, p0, Lo/Vc;->o:Lo/MenuInflater;

    if-nez v2, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "fadeOutChoicePointContainer"

    .line 180
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x758

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0xc8

    .line 181
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    sget-object v2, Lo/Vf;->h:Lo/Vf$Activity;

    invoke-virtual {v2}, Lo/Vf$Activity;->c()Landroid/view/animation/LinearInterpolator;

    move-result-object v2

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v3, [Landroid/animation/Animator;

    .line 184
    check-cast v0, Landroid/animation/Animator;

    aput-object v0, v2, v6

    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v2, v7

    invoke-static {v2}, Lo/akz;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object p1, p0, Lo/Vc;->m:Landroid/animation/AnimatorSet;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected final e(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const-string v0, "choiceAnimatorList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, v0}, Lo/Vc;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lo/Vc;->o:Lo/MenuInflater;

    const-string v2, "choicePointContainer"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lo/Vc;->p:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Lo/MenuInflater;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lo/Vc;->o:Lo/MenuInflater;

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    iget-boolean v3, p0, Lo/Vc;->p:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v3}, Lo/MenuInflater;->setAlpha(F)V

    .line 329
    iget-object v1, p0, Lo/Vc;->b:Lo/GridView;

    const-string v3, "timerLayout"

    if-nez v1, :cond_4

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v0}, Lo/GridView;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lo/Vc;->b:Lo/GridView;

    if-nez v1, :cond_5

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    iget-boolean v6, p0, Lo/Vc;->p:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v6}, Lo/GridView;->setAlpha(F)V

    .line 331
    iget-object v1, p0, Lo/Vc;->b:Lo/GridView;

    if-nez v1, :cond_7

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1, v4}, Lo/GridView;->setScaleX(F)V

    .line 332
    iget-object v1, p0, Lo/Vc;->o:Lo/MenuInflater;

    if-nez v1, :cond_8

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_8
    iget-boolean v4, p0, Lo/Vc;->p:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lo/Vc;->n:F

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1, v4}, Lo/MenuInflater;->setTranslationY(F)V

    .line 334
    iget-object v1, p0, Lo/Vc;->b:Lo/GridView;

    if-nez v1, :cond_a

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_a
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v6, v4, [F

    fill-array-data v6, :array_0

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "ObjectAnimator.ofFloat(t\u20260F, 1F).setDuration(1000)"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lo/Vc;->o:Lo/MenuInflater;

    if-nez v3, :cond_b

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_b
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    fill-array-data v7, :array_1

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v8, "ObjectAnimator.ofFloat(c\u2026 0F, 1F).setDuration(200)"

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iget-object v8, p0, Lo/Vc;->o:Lo/MenuInflater;

    if-nez v8, :cond_c

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    .line 339
    :cond_c
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v4, [F

    .line 340
    iget v10, p0, Lo/Vc;->n:F

    aput v10, v9, v0

    const/4 v10, 0x1

    aput v5, v9, v10

    .line 337
    invoke-static {v8, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 342
    iget-wide v8, p0, Lo/Vc;->s:J

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v5, "ObjectAnimator.ofFloat(\n\u2026etDuration(popUpDuration)"

    invoke-static {v2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lo/Vc;->k:Landroid/animation/AnimatorSet;

    .line 345
    iget-object v5, p0, Lo/Vc;->k:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_d

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 346
    :cond_d
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v1, p0, Lo/Vc;->k:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_e

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 349
    :cond_e
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    .line 350
    iget-object p1, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_f

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    .line 351
    check-cast v3, Landroid/animation/Animator;

    aput-object v3, v1, v0

    .line 352
    check-cast v2, Landroid/animation/Animator;

    aput-object v2, v1, v10

    .line 353
    iget-object v0, p0, Lo/Vc;->k:Landroid/animation/AnimatorSet;

    check-cast v0, Landroid/animation/Animator;

    aput-object v0, v1, v4

    .line 350
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 356
    :cond_f
    iget-object p1, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lo/Vc;->i:Landroid/view/animation/PathInterpolator;

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    :cond_10
    iget-object p1, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_11

    new-instance v0, Lo/Vc$TaskDescription;

    invoke-direct {v0, p0}, Lo/Vc$TaskDescription;-><init>(Lo/Vc;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    :cond_11
    iget-boolean p1, p0, Lo/Vc;->p:Z

    if-eqz p1, :cond_12

    .line 365
    iget-object p1, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_12
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public f()V
    .locals 2

    .line 370
    invoke-virtual {p0}, Lo/Vc;->u()Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lo/Vc;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    .line 373
    :cond_0
    iget-object v0, p0, Lo/Vc;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 374
    iget-object v0, p0, Lo/Vc;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 376
    :cond_1
    iget-object v0, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 377
    iget-object v0, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 1

    .line 318
    invoke-virtual {p0}, Lo/Vc;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, v0}, Lo/Vc;->c(Z)V

    .line 320
    iget-object v0, p0, Lo/Vc;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 321
    :cond_1
    iget-object v0, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    return-void
.end method

.method public h()V
    .locals 2

    .line 382
    invoke-virtual {p0}, Lo/Vc;->u()Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lo/Vc;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    .line 385
    :cond_0
    iget-object v0, p0, Lo/Vc;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 386
    iget-object v0, p0, Lo/Vc;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 388
    :cond_1
    iget-object v0, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 389
    iget-object v0, p0, Lo/Vc;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_2
    return-void
.end method

.method protected final i()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lo/Vc;->s:J

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 63
    invoke-super {p0}, Lo/Vd;->onFinishInflate()V

    .line 64
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iq:I

    invoke-virtual {p0, v0}, Lo/Vc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.intera\u2026e_choice_point_container)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/MenuInflater;

    iput-object v0, p0, Lo/Vc;->o:Lo/MenuInflater;

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iG:I

    invoke-virtual {p0, v0}, Lo/Vc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.interactive_timer)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GridView;

    iput-object v0, p0, Lo/Vc;->b:Lo/GridView;

    .line 67
    invoke-virtual {p0}, Lo/Vc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    .line 66
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/Vc;->p:Z

    return-void
.end method
