.class public abstract Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;
.super Ljava/lang/Object;
.source "PlayScreenDecorator.java"


# instance fields
.field private decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

.field protected final playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-void
.end method

.method protected constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->getPlayScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    return-void
.end method


# virtual methods
.method public getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPlayScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-object v0
.end method

.method public onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStop()V

    :cond_0
    return-void
.end method

.method public onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    :cond_0
    return-void
.end method

.method public playExtraHandlerAnimation(ILjava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public playerOverlayVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerOverlayVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setDraggingState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    :cond_0
    return-void
.end method

.method public setSeekbarEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setSeekbarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setTimelineMaxProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineMaxProgress(I)V

    :cond_0
    return-void
.end method

.method public setTimelineProgress(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineProgress(IZ)V

    :cond_0
    return-void
.end method

.method public updatePlaybackStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->updatePlaybackStatus(Z)V

    :cond_0
    return-void
.end method
