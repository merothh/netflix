.class public Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;
.super Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
.source "AlphaPressedStateHandler.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected handlePressCancelled(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected handlePressComplete(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler$1;-><init>(Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;)V

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startPressedStateCompleteAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected handlePressStarted(Landroid/view/View;)V
    .locals 1

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
