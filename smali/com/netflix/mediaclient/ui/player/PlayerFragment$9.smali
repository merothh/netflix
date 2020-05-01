.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Surface changed, format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Holder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Native surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Surface created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1802(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVisibility(I)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Native surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Do not un-pause player until user exits out of interactive post play."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1802(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "surfaceCreated again, playout already set to null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "SurfaceCreated again, no playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1802(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2002(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Surface destroyed,, background player"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2002(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->showNotificationOffline(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->showNotification(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->canExitPlaybackEndOfPlay()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "In posplay when surface is destroyed, do not exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Surface destroyed, exit if we are not already in it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method
