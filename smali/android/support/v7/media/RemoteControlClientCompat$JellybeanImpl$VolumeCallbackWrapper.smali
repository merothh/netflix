.class final Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"

# interfaces
.implements Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;


# instance fields
.field private final mImplWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;->mImplWeak:Ljava/lang/ref/WeakReference;

    .line 169
    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;->mImplWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;

    .line 182
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mVolumeCallback:Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;

    if-eqz v1, :cond_0

    .line 183
    iget-object v0, v0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mVolumeCallback:Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;

    invoke-interface {v0, p2}, Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;->onVolumeSetRequest(I)V

    .line 185
    :cond_0
    return-void
.end method

.method public onVolumeUpdateRequest(Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;->mImplWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;

    .line 174
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mVolumeCallback:Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;

    if-eqz v1, :cond_0

    .line 175
    iget-object v0, v0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mVolumeCallback:Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;

    invoke-interface {v0, p2}, Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;->onVolumeUpdateRequest(I)V

    .line 177
    :cond_0
    return-void
.end method
