.class public Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;
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
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;->view:Landroid/view/View;

    .line 102
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
