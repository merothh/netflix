.class public final Lo/HandlerThread;
.super Lo/ChildZygoteProcess;
.source ""

# interfaces
.implements Lo/GraphicsEnvironment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HandlerThread$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/HandlerThread$StateListAnimator;

.field static final synthetic e:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private d:Ljava/lang/String;

.field private final f:Lo/aka;

.field private final g:Landroid/view/View;

.field private final h:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/HandlerThread;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "skipIntro"

    const-string v4, "getSkipIntro()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/HandlerThread;->e:[Lo/amT;

    new-instance v0, Lo/HandlerThread$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/HandlerThread$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/HandlerThread;->b:Lo/HandlerThread$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/alB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundingLayout"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLayoutChanged"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lo/ChildZygoteProcess;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/HandlerThread;->h:Lo/alB;

    .line 35
    sget p2, Lo/CancellationSignal$Activity;->I:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/HandlerThread;->a:Lo/ams;

    .line 40
    new-instance p2, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;

    invoke-direct {p2, p0}, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;-><init>(Lo/HandlerThread;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lo/HandlerThread;->f:Lo/aka;

    .line 70
    invoke-direct {p0}, Lo/HandlerThread;->t()Lo/HorizontalScrollView;

    move-result-object p2

    new-instance v0, Lo/HandlerThread$5;

    invoke-direct {v0, p0}, Lo/HandlerThread$5;-><init>(Lo/HandlerThread;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object p1, p0, Lo/HandlerThread;->g:Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Lo/HandlerThread;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lo/HandlerThread;->i:I

    return-void
.end method

.method public static final synthetic a(Lo/HandlerThread;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/HandlerThread;->v()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lo/HandlerThread;)Lo/alB;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/HandlerThread;->h:Lo/alB;

    return-object p0
.end method

.method private final b(F)V
    .locals 4

    .line 96
    invoke-direct {p0}, Lo/HandlerThread;->v()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/HandlerThread;->v()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    invoke-direct {p0}, Lo/HandlerThread;->v()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 100
    :cond_1
    invoke-direct {p0}, Lo/HandlerThread;->v()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lo/HandlerThread;->v()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 101
    :goto_0
    invoke-direct {p0}, Lo/HandlerThread;->v()Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 102
    invoke-direct {p0}, Lo/HandlerThread;->v()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 100
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic c(Lo/HandlerThread;)Lo/HorizontalScrollView;
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/HandlerThread;->t()Lo/HorizontalScrollView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/HandlerThread;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/HandlerThread;->d:Ljava/lang/String;

    return-object p0
.end method

.method private final t()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/HandlerThread;->a:Lo/ams;

    sget-object v1, Lo/HandlerThread;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method private final v()Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lo/HandlerThread;->f:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 75
    iget v0, p0, Lo/HandlerThread;->i:I

    return v0
.end method

.method public c()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lo/HandlerThread;->t()Lo/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setEnabled(Z)V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skipIntroType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lo/HandlerThread;->t()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iput-object p2, p0, Lo/HandlerThread;->d:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 88
    invoke-direct {p0, p1}, Lo/HandlerThread;->b(F)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/HandlerThread;->g:Landroid/view/View;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lo/HandlerThread;->t()Lo/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setEnabled(Z)V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lo/HandlerThread;->b(F)V

    return-void
.end method
