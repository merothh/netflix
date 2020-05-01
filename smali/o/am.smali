.class public final Lo/am;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/am$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/am$Activity;


# instance fields
.field private final b:Landroid/os/HandlerThread;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/am$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/am$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/am;->a:Lo/am$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PerformanceCapture"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/am;->b:Landroid/os/HandlerThread;

    .line 21
    iget-object v0, p0, Lo/am;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lo/am;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/am;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final b()Landroid/os/Handler;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/am;->e:Landroid/os/Handler;

    return-object v0
.end method
