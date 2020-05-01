.class Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;
.super Ljava/lang/Object;
.source "CurrentTimeTablet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

.field final synthetic val$updateCurrentTimeLabel:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;->this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;->val$updateCurrentTimeLabel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStopAnimation was canceled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;->this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setTimelineExitOnSnap(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStopAnimation end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CurrentTimeTablet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Movie current time from stopCurrentTime#onAnimationEnd, tablet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;->val$updateCurrentTimeLabel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;->this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->restorePlaybackIfSnapOnExit()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
