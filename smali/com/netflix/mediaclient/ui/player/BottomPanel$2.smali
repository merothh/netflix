.class final Lcom/netflix/mediaclient/ui/player/BottomPanel$2;
.super Ljava/lang/Object;
.source "BottomPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic val$extraSeekbarHandler:Landroid/view/View;

.field final synthetic val$params:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$2;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$2;->val$extraSeekbarHandler:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 304
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$2;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$2;->val$extraSeekbarHandler:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 306
    return-void
.end method
