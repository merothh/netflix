.class Lo/CameraCaptureSessionImpl$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CameraCaptureSessionImpl;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic c:Lo/CameraCaptureSessionImpl;


# direct methods
.method constructor <init>(Lo/CameraCaptureSessionImpl;Ljava/lang/Runnable;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/CameraCaptureSessionImpl$5;->c:Lo/CameraCaptureSessionImpl;

    iput-object p2, p0, Lo/CameraCaptureSessionImpl$5;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 47
    :try_start_0
    iget-object v0, p0, Lo/CameraCaptureSessionImpl$5;->c:Lo/CameraCaptureSessionImpl;

    invoke-static {v0}, Lo/CameraCaptureSessionImpl;->a(Lo/CameraCaptureSessionImpl;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    iget-object v0, p0, Lo/CameraCaptureSessionImpl$5;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
