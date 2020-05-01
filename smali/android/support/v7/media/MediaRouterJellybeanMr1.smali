.class final Landroid/support/v7/media/MediaRouterJellybeanMr1;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# direct methods
.method public static createCallback(Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;-><init>(Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;)V

    return-object v0
.end method
