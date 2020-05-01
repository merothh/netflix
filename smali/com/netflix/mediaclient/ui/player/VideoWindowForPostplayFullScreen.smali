.class public Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayFullScreen.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected mParent:Landroid/widget/RelativeLayout;

.field protected mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

.field protected mSurface2:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_postplay"

    sput-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f028c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const v0, 0x7f0f028d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mSurface2:Landroid/view/TextureView;

    const v0, 0x7f0f017e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mParent:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithScaling:: surface not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mSurface2:Landroid/view/TextureView;

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithScaling:: surface2 not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mParent:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithScaling:: rootFrame not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 0

    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public canVideoVindowResize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mSurface2:Landroid/view/TextureView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;->mSurface2:Landroid/view/TextureView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0
.end method
