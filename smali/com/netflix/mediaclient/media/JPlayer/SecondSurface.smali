.class public Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;
.super Ljava/lang/Object;
.source "SecondSurface.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JPlayer_Surface2"


# instance fields
.field private final layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private final mSurface2:Landroid/view/TextureView;

.field private mSurfaceTextureHeight:I

.field private mSurfaceTextureWidth:I


# direct methods
.method public constructor <init>(Landroid/view/TextureView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurfaceTextureWidth:I

    iput v1, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurfaceTextureHeight:I

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public final getSurface()Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string/jumbo v0, "JPlayer_Surface2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "JPlayer_Surface2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceTextureAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string/jumbo v0, "JPlayer_Surface2"

    const-string/jumbo v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string/jumbo v0, "JPlayer_Surface2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "JPlayer_Surface2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceTextureSizeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setSurfaceInvisible()V
    .locals 2

    const-string/jumbo v0, "JPlayer_Surface2"

    const-string/jumbo v1, "Surface2 invisiable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 3

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurfaceTextureWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurfaceTextureHeight:I

    if-eq v0, p2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->requestLayout()V

    const-string/jumbo v0, "JPlayer_Surface2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "JPlayer_Surface2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "layout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurfaceTextureWidth:I

    iput p2, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurfaceTextureHeight:I

    :cond_2
    return-void
.end method

.method public setSurfaceVisible()V
    .locals 2

    const-string/jumbo v0, "JPlayer_Surface2"

    const-string/jumbo v1, "Surface2 visiable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->mSurface2:Landroid/view/TextureView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    return-void
.end method
