.class public abstract Lcom/netflix/mediaclient/ui/player/CurrentTime;
.super Lcom/netflix/mediaclient/ui/player/PlayerSection;
.source "CurrentTime.java"


# static fields
.field static final CURRENT_TIME_BOTTOM_MARGIN_REGULAR_DP:I = 0x0

.field static final CURRENT_TIME_BOTTOM_MARGIN_REGULAR_PHONE_DP:I = 0x0

.field static final CURRENT_TIME_BOTTOM_MARGIN_TABLET_PRESSED_DP:I = 0x28

.field protected static final TAG:Ljava/lang/String; = "screen"


# instance fields
.field protected currentTime:Landroid/view/View;

.field protected currentTimeLabel:Landroid/widget/TextView;

.field protected mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerSection;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f02a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTime:Landroid/view/View;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f02a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTimeLabel:Landroid/widget/TextView;

    return-void
.end method

.method static newInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/CurrentTime;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    goto :goto_0
.end method


# virtual methods
.method public changeActionState(Z)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 2

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Hide time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTime:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public isBifDownloaded()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected restorePlaybackIfSnapOnExit()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getTimelineExitOnSnap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->restorePlaybackAfterSnap()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setDraggingInProgress(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopBif()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setTimelineExitOnSnap(Z)V

    return-void
.end method

.method public setBifDownloaded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public show()V
    .locals 2

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Show time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTime:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public abstract start(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract stop(Z)V
.end method

.method public updateCurrentTime()V
    .locals 4

    const-string/jumbo v0, "screen"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTimeLabel:Landroid/widget/TextView;

    const-string/jumbo v2, "currentTimeLabel"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTimeStringForMs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->updateText(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->updateTimeMargins()V

    return-void
.end method

.method public abstract updateTimeMargins()V
.end method
