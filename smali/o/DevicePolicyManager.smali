.class public Lo/DevicePolicyManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WaitResult$ActionBar;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/ConnectEvent;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/DeviceAdminService;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/DeviceAdminService;Ljava/util/List;Lo/PictureInPictureArgs;Lo/StatusBarManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DeviceAdminService;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lo/PictureInPictureArgs;",
            "Lo/StatusBarManager;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p3}, Lo/PictureInPictureArgs;->b()Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lo/DevicePolicyManager;->e:Ljava/util/Map;

    .line 23
    invoke-virtual {p4}, Lo/StatusBarManager;->c()Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lo/DevicePolicyManager;->a:Ljava/util/Map;

    .line 24
    invoke-static {}, Lo/ConnectEvent;->b()Lo/ConnectEvent;

    move-result-object p3

    iput-object p3, p0, Lo/DevicePolicyManager;->b:Lo/ConnectEvent;

    .line 25
    iput-object p1, p0, Lo/DevicePolicyManager;->d:Lo/DeviceAdminService;

    .line 26
    iput-object p2, p0, Lo/DevicePolicyManager;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public toStream(Lo/WaitResult;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v0, "notifier"

    .line 32
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/DevicePolicyManager;->b:Lo/ConnectEvent;

    invoke-virtual {v0, v1}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    const-string v0, "app"

    .line 33
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/DevicePolicyManager;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lo/WaitResult;->e(Ljava/lang/Object;)V

    const-string v0, "device"

    .line 34
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/DevicePolicyManager;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lo/WaitResult;->e(Ljava/lang/Object;)V

    const-string v0, "sessions"

    .line 35
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    invoke-virtual {v0}, Lo/WaitResult;->e()Lo/WallpaperManager;

    .line 37
    iget-object v0, p0, Lo/DevicePolicyManager;->d:Lo/DeviceAdminService;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lo/DevicePolicyManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 39
    invoke-virtual {p1, v1}, Lo/WaitResult;->b(Ljava/io/File;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1, v0}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    .line 45
    :cond_1
    invoke-virtual {p1}, Lo/WaitResult;->b()Lo/WallpaperManager;

    .line 46
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    return-void
.end method
