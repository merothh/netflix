.class Lo/ResultInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WaitResult$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lo/FreezePeriod;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Z


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 28
    new-instance v6, Lo/FreezePeriod;

    invoke-direct {v6, p6}, Lo/FreezePeriod;-><init>(Ljava/util/List;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lo/ResultInfo;-><init>(JLjava/lang/String;Ljava/lang/String;ZLo/FreezePeriod;)V

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;ZLo/FreezePeriod;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lo/ResultInfo;->d:J

    .line 34
    iput-object p3, p0, Lo/ResultInfo;->a:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lo/ResultInfo;->c:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lo/ResultInfo;->e:Z

    .line 37
    iput-object p6, p0, Lo/ResultInfo;->b:Lo/FreezePeriod;

    return-void
.end method

.method constructor <init>(Lo/SearchDialog;JLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/StackTraceElement;)V
    .locals 7

    .line 22
    new-instance v6, Lo/FreezePeriod;

    .line 23
    invoke-virtual {p1}, Lo/SearchDialog;->f()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p7, p1}, Lo/FreezePeriod;-><init>([Ljava/lang/StackTraceElement;[Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 22
    invoke-direct/range {v0 .. v6}, Lo/ResultInfo;-><init>(JLjava/lang/String;Ljava/lang/String;ZLo/FreezePeriod;)V

    return-void
.end method


# virtual methods
.method public toStream(Lo/WaitResult;)V
    .locals 3

    .line 42
    invoke-virtual {p1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v0, "id"

    .line 43
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-wide v1, p0, Lo/ResultInfo;->d:J

    invoke-virtual {v0, v1, v2}, Lo/WaitResult;->e(J)Lo/WallpaperManager;

    const-string v0, "name"

    .line 44
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/ResultInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "type"

    .line 45
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/ResultInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "stacktrace"

    .line 46
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/ResultInfo;->b:Lo/FreezePeriod;

    invoke-virtual {v0, v1}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    .line 47
    iget-boolean v0, p0, Lo/ResultInfo;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "errorReportingThread"

    .line 48
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/WaitResult;->b(Z)Lo/WallpaperManager;

    .line 50
    :cond_0
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    return-void
.end method
