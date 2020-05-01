.class public Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;,
        Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mListener:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

.field private mSurface:Landroid/view/Surface;

.field private mVideoPreviewView:Landroid/view/SurfaceView;

.field private mVideoRenderingView:Landroid/view/SurfaceView;

.field private renderer:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;

.field private useGLrendering:Z


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    iput-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mSurface:Landroid/view/Surface;

    .line 45
    iput-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mListener:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

    .line 80
    iput-object p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoRenderingView:Landroid/view/SurfaceView;

    .line 81
    iput-object p2, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoPreviewView:Landroid/view/SurfaceView;

    .line 82
    instance-of p1, p1, Landroid/opengl/GLSurfaceView;

    iput-boolean p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->useGLrendering:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    iput-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mSurface:Landroid/view/Surface;

    .line 45
    iput-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mListener:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

    .line 67
    iput-object p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoRenderingView:Landroid/view/SurfaceView;

    .line 68
    iput-object p2, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoPreviewView:Landroid/view/SurfaceView;

    .line 69
    instance-of p1, p1, Landroid/opengl/GLSurfaceView;

    iput-boolean p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->useGLrendering:Z

    .line 70
    iput-object p3, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mListener:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

    .line 71
    invoke-virtual {p0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->useGLrendering:Z

    return p0
.end method

.method static synthetic access$102(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$300(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mListener:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

    return-object p0
.end method

.method static synthetic access$400(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Landroid/view/SurfaceView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoRenderingView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Landroid/view/SurfaceView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoPreviewView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static rotationToAngle(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 168
    iget-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->useGLrendering:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "View class does not match Video display filter used (you must use a non-GL View)"

    aput-object v2, v0, v1

    .line 169
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 3

    .line 163
    iget-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->useGLrendering:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "View class does not match Video display filter used (you must use a non-GL View)"

    aput-object v2, v0, v1

    .line 164
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoRenderingView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoRenderingView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;

    invoke-direct {v1, p0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;-><init>(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 121
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoPreviewView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$2;

    invoke-direct {v1, p0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$2;-><init>(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 143
    :cond_0
    iget-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->useGLrendering:Z

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;

    invoke-direct {v0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;-><init>()V

    iput-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->renderer:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;

    .line 145
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoRenderingView:Landroid/view/SurfaceView;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->renderer:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 146
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoRenderingView:Landroid/view/SurfaceView;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mVideoRenderingView:Landroid/view/SurfaceView;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public setListener(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mListener:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

    return-void
.end method

.method public setOpenGLESDisplay(J)V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->useGLrendering:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "View class does not match Video display filter used (you must use a GL View)"

    aput-object v2, v0, v1

    .line 175
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->renderer:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;

    invoke-virtual {v0, p1, p2}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->setOpenGLESDisplay(J)V

    return-void
.end method

.method public declared-synchronized update()V
    .locals 4

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 187
    :try_start_1
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 189
    iget-object v1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    :try_start_2
    invoke-virtual {v0}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
