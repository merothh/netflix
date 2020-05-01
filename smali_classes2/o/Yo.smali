.class public final Lo/Yo;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yo$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/Yo$ActionBar;

.field static final synthetic d:[Lo/amT;

.field private static final t:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;


# instance fields
.field private final a:Lo/ams;

.field private final c:Lo/ams;

.field private final e:Lo/ams;

.field private f:Lo/Yn;

.field private g:Z

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private j:J

.field private k:Landroid/animation/AnimatorSet;

.field private final l:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Boolean;

.field private final n:Lo/DataOutput;

.field private o:I

.field private p:Lio/reactivex/disposables/Disposable;

.field private final q:Landroid/graphics/Rect;

.field private final r:Lo/Ab;

.field private final s:Lo/UpdateLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UpdateLock<",
            "Lo/YB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Yo;

    const/4 v1, 0x5

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "playbackErrorTextView"

    const-string v5, "getPlaybackErrorTextView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "retryButton"

    const-string v5, "getRetryButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "placeHolderImgView"

    const-string v5, "getPlaceHolderImgView()Lcom/netflix/mediaclient/ui/previews/PulsatingImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "videoView"

    const-string v5, "getVideoView()Lcom/netflix/mediaclient/ui/player/videoview/TimeoutableVideoView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "debugView"

    const-string v4, "getDebugView()Lcom/netflix/android/widgetry/widget/RecyclerViewHolderDebugView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lo/Yo;->d:[Lo/amT;

    new-instance v0, Lo/Yo$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Yo$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Yo;->b:Lo/Yo$ActionBar;

    .line 55
    new-instance v0, Lo/Yp;

    invoke-direct {v0}, Lo/Yp;-><init>()V

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    sput-object v0, Lo/Yo;->t:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/Ab;Lo/UpdateLock;Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/Ab;",
            "Lo/UpdateLock<",
            "Lo/YB;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/Yo;->r:Lo/Ab;

    iput-object p3, p0, Lo/Yo;->s:Lo/UpdateLock;

    iput-object p4, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    .line 69
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oR:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yo;->c:Lo/ams;

    .line 71
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oS:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yo;->a:Lo/ams;

    .line 73
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oO:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yo;->e:Lo/ams;

    .line 75
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oY:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yo;->i:Lo/ams;

    .line 77
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->pb:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yo;->h:Lo/ams;

    .line 85
    new-instance p2, Lo/DataOutput;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Lo/Yo$Activity;

    invoke-direct {p3, p0}, Lo/Yo$Activity;-><init>(Lo/Yo;)V

    check-cast p3, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, p3}, Lo/DataOutput;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lo/Yo;->n:Lo/DataOutput;

    .line 118
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lo/Yo;->k:Landroid/animation/AnimatorSet;

    .line 122
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<IPlayer.PlaybackError>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Yo;->l:Lio/reactivex/subjects/PublishSubject;

    .line 127
    invoke-direct {p0}, Lo/Yo;->h()Lo/ServiceManagerNative;

    move-result-object p1

    sget-object p2, Lo/Yl;->c:Lo/Yl$TaskDescription;

    invoke-virtual {p2}, Lo/Yl$TaskDescription;->e()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Lo/ServiceManagerNative;->setVisibility(I)V

    .line 128
    invoke-direct {p0}, Lo/Yo;->m()V

    .line 129
    iget-object p1, p0, Lo/Yo;->itemView:Landroid/view/View;

    new-instance p2, Lo/Yo$4;

    invoke-direct {p2, p0}, Lo/Yo$4;-><init>(Lo/Yo;)V

    check-cast p2, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/YF;->setPassActualScaleTypeToParent(Z)V

    .line 147
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object p1

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p4}, Lo/YF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object p1

    const p4, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, p4}, Lo/YF;->setAlpha(F)V

    .line 149
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object p1

    invoke-virtual {p1, p4}, Lo/YF;->setAnimationStartingAlpha(F)V

    .line 151
    iget-object p1, p0, Lo/Yo;->k:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 152
    iget-object p1, p0, Lo/Yo;->k:Landroid/animation/AnimatorSet;

    const/4 p4, 0x2

    new-array v0, p4, [Landroid/animation/Animator;

    .line 153
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, p4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v0, p3

    .line 154
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p4, p4, [F

    fill-array-data p4, :array_1

    invoke-static {v1, v2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    check-cast p4, Landroid/animation/Animator;

    aput-object p4, v0, p2

    .line 152
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 155
    iget-object p1, p0, Lo/Yo;->k:Landroid/animation/AnimatorSet;

    new-instance p2, Lo/Yo$3;

    invoke-direct {p2, p0}, Lo/Yo$3;-><init>(Lo/Yo;)V

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    invoke-direct {p0, p3}, Lo/Yo;->b(Z)V

    .line 169
    invoke-direct {p0}, Lo/Yo;->f()Lo/HorizontalScrollView;

    move-result-object p1

    new-instance p2, Lo/Yo$5;

    invoke-direct {p2, p0}, Lo/Yo$5;-><init>(Lo/Yo;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic a(Lo/Yo;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/Yo;->l:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic a(Lo/Yo;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/Yo;->b(Z)V

    return-void
.end method

.method public static synthetic a(Lo/Yo;ZZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 416
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lo/Yo;->b(ZZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lo/Yo;)I
    .locals 0

    .line 43
    iget p0, p0, Lo/Yo;->o:I

    return p0
.end method

.method public static final synthetic b()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;
    .locals 1

    .line 43
    sget-object v0, Lo/Yo;->t:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-object v0
.end method

.method public static final synthetic b(Lo/Yo;Ljava/lang/Boolean;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/Yo;->m:Ljava/lang/Boolean;

    return-void
.end method

.method private final b(Z)V
    .locals 4

    .line 235
    invoke-direct {p0}, Lo/Yo;->f()Lo/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 236
    invoke-direct {p0}, Lo/Yo;->i()Lo/ImageSwitcher;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic c(Lo/Yo;)Lo/YF;
    .locals 0

    .line 43
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/Yo;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lo/Yo;->j:J

    return-wide v0
.end method

.method public static final synthetic d(Lo/Yo;I)V
    .locals 0

    .line 43
    iput p1, p0, Lo/Yo;->o:I

    return-void
.end method

.method public static final synthetic e(Lo/Yo;)Lo/XY;
    .locals 0

    .line 43
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lo/Yo;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/Yo;->m:Ljava/lang/Boolean;

    return-object p0
.end method

.method private final f()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/Yo;->a:Lo/ams;

    sget-object v1, Lo/Yo;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method public static final synthetic g(Lo/Yo;)Lo/UpdateLock;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/Yo;->s:Lo/UpdateLock;

    return-object p0
.end method

.method private final g()Lo/YF;
    .locals 3

    iget-object v0, p0, Lo/Yo;->e:Lo/ams;

    sget-object v1, Lo/Yo;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/YF;

    return-object v0
.end method

.method private final h()Lo/ServiceManagerNative;
    .locals 3

    iget-object v0, p0, Lo/Yo;->h:Lo/ams;

    sget-object v1, Lo/Yo;->d:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ServiceManagerNative;

    return-object v0
.end method

.method public static final synthetic i(Lo/Yo;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/Yo;->k:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private final i()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Yo;->c:Lo/ams;

    sget-object v1, Lo/Yo;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public static final synthetic j(Lo/Yo;)Lo/DataOutput;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/Yo;->n:Lo/DataOutput;

    return-object p0
.end method

.method private final j()Lo/XY;
    .locals 3

    iget-object v0, p0, Lo/Yo;->i:Lo/ams;

    sget-object v1, Lo/Yo;->d:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/XY;

    return-object v0
.end method

.method private final m()V
    .locals 5

    .line 240
    iget-object v0, p0, Lo/Yo;->r:Lo/Ab;

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    invoke-virtual {v0, v1}, Lo/XY;->setScaleType(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V

    .line 243
    iget-object v0, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subtitle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    iget-object v1, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lo/Yo;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/XY;->a(IIII)V

    .line 248
    :cond_0
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    new-instance v1, Lo/Yo$StateListAnimator;

    invoke-direct {v1, p0}, Lo/Yo$StateListAnimator;-><init>(Lo/Yo;)V

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/XY;->setErrorListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V

    .line 253
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    new-instance v1, Lo/Yo$Application;

    invoke-direct {v1, p0}, Lo/Yo$Application;-><init>(Lo/Yo;)V

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    invoke-virtual {v0, v1}, Lo/XY;->setPlayerStatusChangeListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V

    .line 307
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Lo/XY;->e(J)V

    .line 309
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    new-instance v1, Lo/Yo$TaskDescription;

    invoke-direct {v1, p0}, Lo/Yo$TaskDescription;-><init>(Lo/Yo;)V

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

    invoke-virtual {v0, v1}, Lo/XY;->setPlayProgressListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;)V

    :cond_1
    return-void
.end method

.method private final n()V
    .locals 9

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/Yo;->j:J

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewFullyVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Yo;->f:Lo/Yn;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Yn;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    sget-object v0, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast v0, Lo/MessagePdu;

    goto/16 :goto_3

    .line 356
    :cond_1
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->Q()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 359
    :cond_2
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->S()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->T()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 406
    :cond_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This code should not be reached => videoView.isIdle -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v2

    invoke-virtual {v2}, Lo/XY;->T()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", videoView.isPaused -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v2

    invoke-virtual {v2}, Lo/XY;->Q()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", videoView.isStalled  -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v2

    invoke-virtual {v2}, Lo/XY;->S()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 360
    :cond_4
    :goto_1
    sget-object v0, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 362
    iget-object v0, p0, Lo/Yo;->f:Lo/Yn;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lo/Yn;->getSupplementalVideoId()Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_8

    .line 366
    sget-object v0, Lo/dI;->e:Lo/dI$StateListAnimator;

    invoke-virtual {v0}, Lo/dI$StateListAnimator;->d()Z

    move-result v0

    if-nez v0, :cond_6

    .line 367
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->b()V

    .line 369
    :cond_6
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object v0

    invoke-virtual {v0}, Lo/YF;->h()V

    .line 370
    iget-object v0, p0, Lo/Yo;->p:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 371
    :cond_7
    iget-object v0, p0, Lo/Yo;->l:Lio/reactivex/subjects/PublishSubject;

    const-wide/16 v3, 0x3e8

    .line 372
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Lio/reactivex/subjects/PublishSubject;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 373
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v0, "retryOnPlaybackError\n   \u2026dSchedulers.mainThread())"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    new-instance v0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;-><init>(Lo/Yo;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    const/4 v5, 0x0

    .line 385
    sget-object v0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$5;->e:Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$5;

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 374
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/Yo;->p:Lio/reactivex/disposables/Disposable;

    .line 390
    iget-object v0, p0, Lo/Yo;->f:Lo/Yn;

    iget-object v1, p0, Lo/Yo;->r:Lo/Ab;

    new-instance v3, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$6;

    invoke-direct {v3, p0, v2}, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$6;-><init>(Lo/Yo;Ljava/lang/String;)V

    check-cast v3, Lo/alN;

    invoke-static {v0, v1, v3}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto :goto_3

    .line 403
    :cond_8
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "supplementalVideoId is null - cannot play trailer."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "PreviewsPlayerItemViewHolder"

    invoke-interface {v0, v2, v1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 357
    :cond_9
    :goto_2
    sget-object v0, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 358
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->aa()V

    :goto_3
    return-void
.end method


# virtual methods
.method public final a()Lo/Yn;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/Yo;->f:Lo/Yn;

    return-object v0
.end method

.method public final a(Landroid/content/Context;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "previewItems"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Yn;

    iput-object p1, p0, Lo/Yo;->f:Lo/Yn;

    .line 181
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Yn;

    invoke-virtual {p1}, Lo/Yn;->getPanelArtUrl()Ljava/lang/String;

    move-result-object p1

    .line 182
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 183
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "image url is empty, PreviewsPlayerItemViewHolder.bind"

    .line 184
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 186
    :cond_3
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object v0

    .line 187
    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 188
    invoke-virtual {v3, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 189
    sget-object v3, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 190
    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 186
    invoke-virtual {v0, p1}, Lo/YF;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 193
    :goto_2
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object p1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Yn;

    invoke-virtual {p2}, Lo/Yn;->getTitle()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/YF;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 194
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/YF;->setVisibility(I)V

    .line 196
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lo/XY;->setVisibility(I)V

    .line 197
    invoke-direct {p0, v2}, Lo/Yo;->b(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lo/Yo;->h()Lo/ServiceManagerNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 438
    sget-object p1, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public final b(ZZLjava/lang/String;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object p3

    invoke-virtual {p3}, Lo/XY;->z()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (setting to - "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p3, "play"

    goto :goto_0

    :cond_0
    const-string p3, "pause"

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 419
    iget-boolean p3, p0, Lo/Yo;->g:Z

    if-eqz p3, :cond_5

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 423
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_2

    .line 424
    :cond_1
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object p2

    invoke-virtual {p2}, Lo/XY;->T()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object p2

    invoke-virtual {p2}, Lo/XY;->R()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    .line 425
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 422
    :goto_2
    iput-object p2, p0, Lo/Yo;->m:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 430
    invoke-direct {p0}, Lo/Yo;->n()V

    goto :goto_3

    .line 431
    :cond_4
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object p1

    invoke-virtual {p1}, Lo/XY;->ab()V

    :cond_5
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 7

    .line 411
    sget-object v0, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast v0, Lo/MessagePdu;

    const-string v0, "setPlaybackTo from onScrollingStarted"

    .line 412
    invoke-virtual {p0, v0}, Lo/Yo;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    .line 413
    invoke-static/range {v1 .. v6}, Lo/Yo;->a(Lo/Yo;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const-string v0, "onViewRecycled"

    .line 348
    invoke-virtual {p0, v0}, Lo/Yo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;)V"
        }
    .end annotation

    const-string v0, "previewItems"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lo/Yo;->g:Z

    const-string v0, "onViewDetachedToWindow"

    .line 218
    invoke-virtual {p0, v0}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->ab()V

    .line 220
    :cond_0
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0}, Lo/XY;->b()V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detached playback session @ PTS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Yo;->f:Lo/Yn;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/Yn;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/XY;->setViewInFocus(Z)V

    .line 223
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/YF;->setVisibility(I)V

    .line 224
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/XY;->setVisibility(I)V

    .line 225
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object v0

    invoke-virtual {v0}, Lo/YF;->l()V

    .line 226
    iget-object v0, p0, Lo/Yo;->p:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 227
    :cond_2
    check-cast v2, Lio/reactivex/disposables/Disposable;

    iput-object v2, p0, Lo/Yo;->p:Lio/reactivex/disposables/Disposable;

    .line 228
    invoke-direct {p0, p1}, Lo/Yo;->b(Z)V

    .line 230
    iget-object p1, p0, Lo/Yo;->f:Lo/Yn;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/Yn;->c()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 1

    const-string v0, "onFailedToRecycleView"

    .line 344
    invoke-virtual {p0, v0}, Lo/Yo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Z)V
    .locals 6

    .line 201
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/YF;->setVisibility(I)V

    .line 202
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lo/YF;->setAlpha(F)V

    .line 203
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/XY;->setVisibility(I)V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lo/Yo;->g:Z

    const-string v1, "onViewAttachedToWindow"

    .line 205
    invoke-virtual {p0, v1}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lo/Yo;->j()Lo/XY;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/XY;->setViewInFocus(Z)V

    if-eqz p1, :cond_0

    const-string p1, "setPlaybackTo from onViewAttached"

    .line 210
    invoke-virtual {p0, p1}, Lo/Yo;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 211
    invoke-static/range {v0 .. v5}, Lo/Yo;->a(Lo/Yo;ZZLjava/lang/String;ILjava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lo/Yo;->g()Lo/YF;

    move-result-object p1

    invoke-virtual {p1}, Lo/YF;->h()V

    :cond_0
    return-void
.end method
