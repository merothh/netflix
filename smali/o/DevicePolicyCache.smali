.class public Lo/DevicePolicyCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WaitResult$ActionBar;


# instance fields
.field private final a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private final c:Lo/ConnectEvent;

.field private transient d:Z

.field private final e:Lo/UiAutomationConnection;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lo/DevicePolicyCache;-><init>(Ljava/lang/String;Ljava/io/File;Lo/UiAutomationConnection;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Lo/UiAutomationConnection;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lo/DevicePolicyCache;->e:Lo/UiAutomationConnection;

    .line 40
    iput-object p2, p0, Lo/DevicePolicyCache;->a:Ljava/io/File;

    .line 41
    invoke-static {}, Lo/ConnectEvent;->b()Lo/ConnectEvent;

    move-result-object p2

    iput-object p2, p0, Lo/DevicePolicyCache;->c:Lo/ConnectEvent;

    .line 42
    iput-object p1, p0, Lo/DevicePolicyCache;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lo/UiAutomationConnection;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lo/DevicePolicyCache;-><init>(Ljava/lang/String;Ljava/io/File;Lo/UiAutomationConnection;)V

    return-void
.end method


# virtual methods
.method b()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lo/DevicePolicyCache;->d:Z

    return v0
.end method

.method public d()Lo/UiAutomationConnection;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/DevicePolicyCache;->e:Lo/UiAutomationConnection;

    return-object v0
.end method

.method d(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lo/DevicePolicyCache;->d:Z

    return-void
.end method

.method public toStream(Lo/WaitResult;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v0, "apiKey"

    .line 50
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/DevicePolicyCache;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "payloadVersion"

    .line 51
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "notifier"

    .line 54
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/DevicePolicyCache;->c:Lo/ConnectEvent;

    invoke-virtual {v0, v1}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    const-string v0, "events"

    .line 57
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    invoke-virtual {v0}, Lo/WaitResult;->e()Lo/WallpaperManager;

    .line 60
    iget-object v0, p0, Lo/DevicePolicyCache;->e:Lo/UiAutomationConnection;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lo/DevicePolicyCache;->a:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1, v0}, Lo/WaitResult;->b(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const-string v0, "Expected error or errorFile, found empty payload instead"

    .line 65
    invoke-static {v0}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    .line 69
    :goto_0
    invoke-virtual {p1}, Lo/WaitResult;->b()Lo/WallpaperManager;

    .line 72
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    return-void
.end method
