.class Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Renderer"
.end annotation


# instance fields
.field height:I

.field initPending:Z

.field ptr:J

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 207
    iput-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 231
    monitor-exit p0

    return-void

    .line 232
    :cond_0
    iget-boolean p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    if-eqz p1, :cond_1

    .line 233
    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    iget p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->width:I

    iget v2, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->height:I

    invoke-static {v0, v1, p1, v2}, Lorg/linphone/mediastream/video/display/OpenGLESDisplay;->init(JII)V

    const/4 p1, 0x0

    .line 234
    iput-boolean p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    .line 236
    :cond_1
    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    invoke-static {v0, v1}, Lorg/linphone/mediastream/video/display/OpenGLESDisplay;->render(J)V

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 242
    iput p2, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->width:I

    .line 243
    iput p3, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->height:I

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public setOpenGLESDisplay(J)V
    .locals 5

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    .line 221
    :cond_0
    iput-wide p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
