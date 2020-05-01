.class Lo/Person$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Person;


# direct methods
.method constructor <init>(Lo/Person;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/Person$3;->b:Lo/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v0, 0x5

    .line 35
    :try_start_0
    iget-object v2, p0, Lo/Person$3;->b:Lo/Person;

    invoke-virtual {v2}, Lo/Person;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_0

    .line 38
    iget-object v4, p0, Lo/Person$3;->b:Lo/Person;

    invoke-virtual {v4}, Lo/Person;->e()Lo/Person$ActionBar;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/Person$ActionBar;->e(Ljava/lang/Thread;)V

    .line 39
    invoke-virtual {v2, v3, v3}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 44
    iget-object v3, p0, Lo/Person$3;->b:Lo/Person;

    invoke-virtual {v3}, Lo/Person;->c()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v2

    :catch_0
    :cond_0
    :goto_0
    iget-object v2, p0, Lo/Person$3;->b:Lo/Person;

    invoke-virtual {v2}, Lo/Person;->c()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
