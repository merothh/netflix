.class public abstract Landroid/support/v7/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onSelect()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onSetVolume(I)V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public onUnselect()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public onUnselect(I)V
    .locals 0

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 349
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method
