.class public Lo/Xr;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/WN;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Xr$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/UU;",
        ">;",
        "Lo/WN;"
    }
.end annotation


# static fields
.field public static final b:Lo/Xr$ActionBar;

.field static final synthetic d:[Lo/amT;

# The value of this static final field might be set in the static constructor
.field private static final s:J = 0x64L


# instance fields
.field private a:I

.field private final c:Landroid/view/ViewGroup;

.field private final e:I

.field private final f:Lo/ams;

.field private g:Z

.field private final h:Lo/ams;

.field private final i:Landroid/view/animation/Animation;

.field private j:Lio/reactivex/disposables/Disposable;

.field private final k:Landroid/view/animation/Animation;

.field private final l:Landroid/view/animation/Animation;

.field private m:Ljava/lang/Long;

.field private n:Lo/Tf;

.field private final o:Landroid/view/animation/Animation;

.field private final p:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/netflix/model/leafs/PostPlayItem;

.field private final r:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Xr;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "playButton"

    const-string v5, "getPlayButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "watchCreditButton"

    const-string v4, "getWatchCreditButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/Xr;->d:[Lo/amT;

    new-instance v0, Lo/Xr$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Xr$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Xr;->b:Lo/Xr$ActionBar;

    const-wide/16 v0, 0x64

    .line 52
    sput-wide v0, Lo/Xr;->s:J

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayItem"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayUIObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Xr;->r:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/Xr;->q:Lcom/netflix/model/leafs/PostPlayItem;

    iput-object p3, p0, Lo/Xr;->p:Lio/reactivex/subjects/Subject;

    .line 34
    iget-object p1, p0, Lo/Xr;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lo/Xr;->l()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Xr;->c:Landroid/view/ViewGroup;

    .line 35
    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, p0, Lo/Xr;->e:I

    .line 37
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->lp:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Xr;->f:Lo/ams;

    .line 38
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->vE:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Xr;->h:Lo/ams;

    .line 41
    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$ActionBar;->h:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lo/Xr;->i:Landroid/view/animation/Animation;

    .line 42
    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$ActionBar;->h:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lo/Xr;->o:Landroid/view/animation/Animation;

    .line 43
    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$ActionBar;->i:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lo/Xr;->l:Landroid/view/animation/Animation;

    .line 44
    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$ActionBar;->i:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lo/Xr;->k:Landroid/view/animation/Animation;

    .line 79
    invoke-direct {p0}, Lo/Xr;->u()Lo/HorizontalScrollView;

    move-result-object p1

    new-instance p2, Lo/Xr$5;

    invoke-direct {p2, p0}, Lo/Xr$5;-><init>(Lo/Xr;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0}, Lo/Xr;->m()Lo/HorizontalScrollView;

    move-result-object p1

    new-instance p2, Lo/Xr$3;

    invoke-direct {p2, p0}, Lo/Xr$3;-><init>(Lo/Xr;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 34
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(J)V
    .locals 8

    .line 140
    sget-object v0, Lo/gy;->a:Lo/gy$Activity;

    invoke-virtual {v0}, Lo/gy$Activity;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lo/Xr;->q:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "non_sequentialInSameTitle"

    invoke-static {v0, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lo/Xr;->n:Lo/Tf;

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Lo/Tf;->X()I

    move-result v3

    .line 144
    invoke-virtual {v0}, Lo/Tf;->V()I

    move-result v0

    .line 145
    invoke-virtual {p0}, Lo/Xr;->m()Lo/HorizontalScrollView;

    move-result-object v4

    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 146
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->oQ:I

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    const/4 v0, 0x2

    .line 149
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v0

    .line 145
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v4, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lo/Xr;->m()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 154
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->je:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 155
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    .line 153
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lo/Xr;->m()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 160
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->je:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 161
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    .line 159
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic a(Lo/Xr;J)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lo/Xr;->a(J)V

    return-void
.end method

.method private final u()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/Xr;->h:Lo/ams;

    sget-object v1, Lo/Xr;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 35
    iget v0, p0, Lo/Xr;->e:I

    return v0
.end method

.method protected final a(Landroid/view/View;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lo/Xr$Activity;

    invoke-direct {v0, p1}, Lo/Xr$Activity;-><init>(Landroid/view/View;)V

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public a(ZI)V
    .locals 2

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lo/Xr;->g:Z

    .line 99
    iput p2, p0, Lo/Xr;->a:I

    .line 100
    invoke-virtual {p0}, Lo/Xr;->f()V

    .line 101
    invoke-virtual {p0}, Lo/Xr;->i()V

    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0}, Lo/Xr;->u()Lo/HorizontalScrollView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setAlpha(F)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0}, Lo/Xr;->u()Lo/HorizontalScrollView;

    move-result-object p1

    invoke-virtual {p1}, Lo/HorizontalScrollView;->clearAnimation()V

    .line 107
    invoke-direct {p0}, Lo/Xr;->u()Lo/HorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lo/Xr;->i:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lo/Xr;->m()Lo/HorizontalScrollView;

    move-result-object p1

    invoke-virtual {p1}, Lo/HorizontalScrollView;->clearAnimation()V

    .line 110
    invoke-virtual {p0}, Lo/Xr;->m()Lo/HorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lo/Xr;->o:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lo/Xr;->q:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->isAutoPlay()Z

    move-result p1

    if-eqz p1, :cond_1

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    .line 115
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Countdown;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/event/session/Countdown;-><init>(Ljava/lang/Long;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/Xr;->m:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lo/Xr;->t()V

    .line 121
    invoke-direct {p0}, Lo/Xr;->u()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lo/HorizontalScrollView;->clearAnimation()V

    .line 122
    invoke-direct {p0}, Lo/Xr;->u()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/Xr;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    invoke-virtual {p0}, Lo/Xr;->m()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lo/HorizontalScrollView;->clearAnimation()V

    .line 124
    invoke-virtual {p0}, Lo/Xr;->m()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/Xr;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d(Lo/Tf;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lo/Xr;->n:Lo/Tf;

    return-void
.end method

.method public final e(Ljava/lang/Long;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/Xr;->m:Ljava/lang/Long;

    return-void
.end method

.method public f()V
    .locals 2

    .line 167
    iget v0, p0, Lo/Xr;->a:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lo/Xr;->a(J)V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lo/Xr;->g:Z

    return v0
.end method

.method public i()V
    .locals 3

    .line 171
    iget-object v0, p0, Lo/Xr;->o:Landroid/view/animation/Animation;

    const-string v1, "slideUpAnimPlay"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v1, Lo/Xr;->s:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 172
    iget-object v0, p0, Lo/Xr;->o:Landroid/view/animation/Animation;

    new-instance v1, Lo/Xr$TaskDescription;

    invoke-direct {v1, p0}, Lo/Xr$TaskDescription;-><init>(Lo/Xr;)V

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 177
    iget-object v0, p0, Lo/Xr;->l:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lo/Xr;->u()Lo/HorizontalScrollView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lo/Xr;->a(Landroid/view/View;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 178
    iget-object v0, p0, Lo/Xr;->k:Landroid/view/animation/Animation;

    const-string v1, "slideDownAnimPlay"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v1, Lo/Xr;->s:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 179
    iget-object v0, p0, Lo/Xr;->k:Landroid/view/animation/Animation;

    new-instance v1, Lo/Xr$StateListAnimator;

    invoke-direct {v1, p0}, Lo/Xr$StateListAnimator;-><init>(Lo/Xr;)V

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 218
    invoke-direct {p0}, Lo/Xr;->u()Lo/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public final k()Ljava/lang/Long;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/Xr;->m:Ljava/lang/Long;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 136
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eN:I

    return v0
.end method

.method protected final m()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/Xr;->f:Lo/ams;

    sget-object v1, Lo/Xr;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method protected final n()I
    .locals 1

    .line 36
    iget v0, p0, Lo/Xr;->a:I

    return v0
.end method

.method public o()Landroid/view/ViewGroup;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/Xr;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected final p()Lio/reactivex/subjects/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/Xr;->p:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public q()V
    .locals 8

    .line 188
    invoke-virtual {p0}, Lo/Xr;->t()V

    .line 190
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v5

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    invoke-static/range {v0 .. v5}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 191
    iget v1, p0, Lo/Xr;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 192
    new-instance v1, Lo/Xr$Application;

    invoke-direct {v1, p0}, Lo/Xr$Application;-><init>(Lo/Xr;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "Observable.interval(0, 1\u2026 { autoPlaySeconds - it }"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$2;-><init>(Lo/Xr;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 197
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$3;-><init>(Lo/Xr;)V

    move-object v4, v0

    check-cast v4, Lo/alB;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 193
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/Xr;->j:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final r()Landroid/view/ViewGroup;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/Xr;->r:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final s()Lcom/netflix/model/leafs/PostPlayItem;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/Xr;->q:Lcom/netflix/model/leafs/PostPlayItem;

    return-object v0
.end method

.method public t()V
    .locals 1

    .line 207
    iget-object v0, p0, Lo/Xr;->j:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
