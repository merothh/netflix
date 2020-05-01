.class Lcom/netflix/mediaclient/util/gfx/AnimationUtils$ShowViewOnAnimatorStart;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$ShowViewOnAnimatorStart;->view:Landroid/view/View;

    .line 119
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$ShowViewOnAnimatorStart;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void
.end method
