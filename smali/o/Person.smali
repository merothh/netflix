.class public final Lo/Person;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Person$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:Landroid/os/Handler;

.field private final d:Lo/Person$ActionBar;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lo/Person$ActionBar;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lo/Person$3;

    invoke-direct {v0, p0}, Lo/Person$3;-><init>(Lo/Person;)V

    iput-object v0, p0, Lo/Person;->e:Ljava/lang/Runnable;

    const/16 v0, 0x8

    .line 50
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/Person;->a:Ljava/nio/ByteBuffer;

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bugsnag-anr-watchdog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lo/Person;->b:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lo/Person;->d:Lo/Person$ActionBar;

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/Person;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method c()Landroid/os/Handler;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/Person;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public d()V
    .locals 4

    .line 58
    iget-object v0, p0, Lo/Person;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/Person;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method e()Lo/Person$ActionBar;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/Person;->d:Lo/Person$ActionBar;

    return-object v0
.end method
