.class Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$300(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$300(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$300(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->addRemoteControlClient(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$300(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->removeRemoteControlClient(Ljava/lang/Object;)V

    goto :goto_0
.end method
