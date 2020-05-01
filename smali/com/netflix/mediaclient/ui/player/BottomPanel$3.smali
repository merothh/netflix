.class final Lcom/netflix/mediaclient/ui/player/BottomPanel$3;
.super Ljava/lang/Object;
.source "BottomPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic val$currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

.field final synthetic val$extraSeekbarHandler:Landroid/view/View;

.field final synthetic val$onFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CurrentTime;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;->val$currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;->val$extraSeekbarHandler:Landroid/view/View;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;->val$currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;->val$currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->show()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;->val$extraSeekbarHandler:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;->val$currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;->val$currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->hide()V

    .line 315
    :cond_0
    return-void
.end method
