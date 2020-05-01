.class public final Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HandlerThread;-><init>(Landroid/view/View;Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/HandlerThread;


# direct methods
.method public constructor <init>(Lo/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;->c:Lo/HandlerThread;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/animation/ValueAnimator;
    .locals 4

    .line 41
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 42
    new-instance v1, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2$Activity;-><init>(Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 43
    iget-object v2, p0, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;->c:Lo/HandlerThread;

    invoke-static {v2}, Lo/HandlerThread;->c(Lo/HandlerThread;)Lo/HorizontalScrollView;

    move-result-object v2

    new-instance v3, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2$StateListAnimator;

    invoke-direct {v3, v1, p0}, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2$StateListAnimator;-><init>(Ljava/lang/Runnable;Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;)V

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Lo/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 49
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;->c:Lo/HandlerThread;

    invoke-static {v1}, Lo/HandlerThread;->c(Lo/HandlerThread;)Lo/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lo/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/CancellationSignal$TaskDescription;->m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 50
    new-instance v2, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2$TaskDescription;

    invoke-direct {v2, v1, p0}, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2$TaskDescription;-><init>(FLcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;)V

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xc8

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIViewImpl$skipIntroAnimator$2;->a()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method
