.class public abstract Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
.super Ljava/lang/Object;
.source "PressedStateHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PressedStateHandler"


# instance fields
.field private enabled:Z

.field private isAnimating:Z

.field private listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

.field private pressed:Z

.field private final view:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->enabled:Z

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    .line 28
    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->setCompletionCallback(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)V

    return-void
.end method

.method private setCompletionCallback(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

    .line 79
    return-void
.end method


# virtual methods
.method protected abstract handlePressCancelled(Landroid/view/View;)V
.end method

.method protected abstract handlePressComplete(Landroid/view/View;)V
.end method

.method protected abstract handlePressStarted(Landroid/view/View;)V
.end method

.method public handleSetPressed(Z)V
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->enabled:Z

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->pressed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handlePressComplete(Landroid/view/View;)V

    .line 55
    :goto_1
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->pressed:Z

    goto :goto_0

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->isAnimating:Z

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handlePressStarted(Landroid/view/View;)V

    goto :goto_1

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handlePressCancelled(Landroid/view/View;)V

    goto :goto_1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->isAnimating:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v1, "PressedStateHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected notifyParentOfAnimationComplete()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->isAnimating:Z

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "Notifying listener of pressed animation complete"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->log(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;->onPressedAnimationComplete()V

    .line 75
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->enabled:Z

    .line 60
    return-void
.end method
