.class Lo/DeviceAdminService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WaitResult$ActionBar;


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:Lo/AssistStructure;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/lang/String;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Lo/AssistStructure;II)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/DeviceAdminService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/DeviceAdminService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/DeviceAdminService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/DeviceAdminService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    iput-object p1, p0, Lo/DeviceAdminService;->d:Ljava/lang/String;

    .line 34
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lo/DeviceAdminService;->a:Ljava/util/Date;

    .line 35
    iput-object p3, p0, Lo/DeviceAdminService;->b:Lo/AssistStructure;

    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/DeviceAdminService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lo/DeviceAdminService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lo/DeviceAdminService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/DeviceAdminService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Lo/AssistStructure;Z)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/DeviceAdminService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/DeviceAdminService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/DeviceAdminService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/DeviceAdminService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-object p1, p0, Lo/DeviceAdminService;->d:Ljava/lang/String;

    .line 27
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lo/DeviceAdminService;->a:Ljava/util/Date;

    .line 28
    iput-object p3, p0, Lo/DeviceAdminService;->b:Lo/AssistStructure;

    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/DeviceAdminService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static d(Lo/DeviceAdminService;)Lo/DeviceAdminService;
    .locals 7

    .line 18
    new-instance v6, Lo/DeviceAdminService;

    iget-object v1, p0, Lo/DeviceAdminService;->d:Ljava/lang/String;

    iget-object v2, p0, Lo/DeviceAdminService;->a:Ljava/util/Date;

    iget-object v3, p0, Lo/DeviceAdminService;->b:Lo/AssistStructure;

    iget-object v0, p0, Lo/DeviceAdminService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v0, p0, Lo/DeviceAdminService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/DeviceAdminService;-><init>(Ljava/lang/String;Ljava/util/Date;Lo/AssistStructure;II)V

    .line 20
    iget-object v0, v6, Lo/DeviceAdminService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lo/DeviceAdminService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    iget-object v0, v6, Lo/DeviceAdminService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lo/DeviceAdminService;->i()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v6
.end method


# virtual methods
.method a()Lo/DeviceAdminService;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/DeviceAdminService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 69
    invoke-static {p0}, Lo/DeviceAdminService;->d(Lo/DeviceAdminService;)Lo/DeviceAdminService;

    move-result-object v0

    return-object v0
.end method

.method b()I
    .locals 1

    .line 60
    iget-object v0, p0, Lo/DeviceAdminService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    return v0
.end method

.method c()Ljava/util/Date;
    .locals 3

    .line 52
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lo/DeviceAdminService;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method d()I
    .locals 1

    .line 64
    iget-object v0, p0, Lo/DeviceAdminService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/DeviceAdminService;->d:Ljava/lang/String;

    return-object v0
.end method

.method f()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/DeviceAdminService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method h()Lo/DeviceAdminService;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/DeviceAdminService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 74
    invoke-static {p0}, Lo/DeviceAdminService;->d(Lo/DeviceAdminService;)Lo/DeviceAdminService;

    move-result-object v0

    return-object v0
.end method

.method i()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lo/DeviceAdminService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public toStream(Lo/WaitResult;)V
    .locals 2

    .line 91
    invoke-virtual {p1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    move-result-object v0

    const-string v1, "id"

    .line 92
    invoke-virtual {v0, v1}, Lo/WallpaperManager;->e(Ljava/lang/String;)Lo/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lo/DeviceAdminService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WallpaperManager;->d(Ljava/lang/String;)Lo/WallpaperManager;

    move-result-object v0

    const-string v1, "startedAt"

    .line 93
    invoke-virtual {v0, v1}, Lo/WallpaperManager;->e(Ljava/lang/String;)Lo/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lo/DeviceAdminService;->a:Ljava/util/Date;

    invoke-static {v1}, Lo/SystemServiceRegistry;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/WallpaperManager;->d(Ljava/lang/String;)Lo/WallpaperManager;

    .line 95
    iget-object v0, p0, Lo/DeviceAdminService;->b:Lo/AssistStructure;

    if-eqz v0, :cond_0

    const-string v0, "user"

    .line 96
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/DeviceAdminService;->b:Lo/AssistStructure;

    invoke-virtual {v0, v1}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    .line 98
    :cond_0
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    return-void
.end method
