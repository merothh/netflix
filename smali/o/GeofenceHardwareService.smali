.class public Lo/GeofenceHardwareService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GeofenceHardwareService$Activity;,
        Lo/GeofenceHardwareService$StateListAnimator;,
        Lo/GeofenceHardwareService$Application;
    }
.end annotation


# static fields
.field private static volatile b:Lo/GeofenceHardwareService$Application;

.field public static final c:Lo/GeofenceHardwareService$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lo/GeofenceHardwareService$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GeofenceHardwareService$Activity;-><init>(Lo/GeofenceHardwareService$5;)V

    sput-object v0, Lo/GeofenceHardwareService;->c:Lo/GeofenceHardwareService$StateListAnimator;

    .line 34
    sput-object v1, Lo/GeofenceHardwareService;->b:Lo/GeofenceHardwareService$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 100
    invoke-static {}, Lo/GeofenceHardwareService;->c()Lo/GeofenceHardwareService$Application;

    move-result-object v0

    invoke-interface {v0}, Lo/GeofenceHardwareService$Application;->a()Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 1

    .line 96
    invoke-static {}, Lo/GeofenceHardwareService;->c()Lo/GeofenceHardwareService$Application;

    move-result-object v0

    invoke-interface {v0}, Lo/GeofenceHardwareService$Application;->d()V

    return-void
.end method

.method private static c()Lo/GeofenceHardwareService$Application;
    .locals 2

    .line 104
    sget-object v0, Lo/GeofenceHardwareService;->b:Lo/GeofenceHardwareService$Application;

    if-nez v0, :cond_1

    .line 105
    const-class v0, Lo/GeofenceHardwareService;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lo/GeofenceHardwareService;->b:Lo/GeofenceHardwareService$Application;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lo/MemoryRegion;

    invoke-direct {v1}, Lo/MemoryRegion;-><init>()V

    sput-object v1, Lo/GeofenceHardwareService;->b:Lo/GeofenceHardwareService$Application;

    .line 109
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 111
    :cond_1
    :goto_0
    sget-object v0, Lo/GeofenceHardwareService;->b:Lo/GeofenceHardwareService$Application;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-static {}, Lo/GeofenceHardwareService;->c()Lo/GeofenceHardwareService$Application;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/GeofenceHardwareService$Application;->a(Ljava/lang/String;)V

    return-void
.end method
