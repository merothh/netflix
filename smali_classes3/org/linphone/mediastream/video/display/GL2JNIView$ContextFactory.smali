.class Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/mediastream/video/display/GL2JNIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContextFactory"
.end annotation


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I = 0x3098


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/linphone/mediastream/video/display/GL2JNIView$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "creating OpenGL ES 2.0 context"

    aput-object v3, v1, v2

    .line 80
    invoke-static {v1}, Lorg/linphone/mediastream/Log;->w([Ljava/lang/Object;)V

    const-string v1, "Before eglCreateContext"

    .line 81
    invoke-static {v1, p1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 82
    sget v3, Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v0

    const/16 v0, 0x3038

    aput v0, v1, v2

    .line 83
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    const-string p3, "After eglCreateContext"

    .line 84
    invoke-static {p3, p1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-object p2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 89
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
