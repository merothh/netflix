.class public Lorg/linphone/mediastream/video/display/GL2JNIView;
.super Landroid/opengl/GLSurfaceView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/linphone/mediastream/video/display/GL2JNIView$ConfigChooser;,
        Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p1, p1, p1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->init(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    invoke-direct {p0, p1, p1, p1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->init(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p2, p3, p4}, Lorg/linphone/mediastream/video/display/GL2JNIView;->init(ZII)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5

    .line 95
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "%s: EGL error: 0x%x"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init(ZII)V
    .locals 15

    move-object v0, p0

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/linphone/mediastream/video/display/GL2JNIView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 65
    :cond_0
    new-instance v1, Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;-><init>(Lorg/linphone/mediastream/video/display/GL2JNIView$1;)V

    invoke-virtual {p0, v1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 72
    new-instance v1, Lorg/linphone/mediastream/video/display/GL2JNIView$ConfigChooser;

    if-eqz p1, :cond_1

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-object v3, v1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/linphone/mediastream/video/display/GL2JNIView$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x0

    move-object v8, v1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lorg/linphone/mediastream/video/display/GL2JNIView$ConfigChooser;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method
