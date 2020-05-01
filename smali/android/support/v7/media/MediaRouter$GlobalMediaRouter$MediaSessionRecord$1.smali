.class Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;
.super Landroid/support/v4/media/VolumeProviderCompat;
.source "MediaRouter.java"


# instance fields
.field final synthetic this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;III)V
    .locals 0

    .prologue
    .line 2297
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/media/VolumeProviderCompat;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 2

    .prologue
    .line 2312
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1300(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    move-result-object v0

    new-instance v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 2320
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 2

    .prologue
    .line 2300
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1300(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    move-result-object v0

    new-instance v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$1;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 2308
    return-void
.end method
