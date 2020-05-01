.class public Lo/ConnectEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WaitResult$ActionBar;


# static fields
.field private static final e:Lo/ConnectEvent;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/ConnectEvent;

    invoke-direct {v0}, Lo/ConnectEvent;-><init>()V

    sput-object v0, Lo/ConnectEvent;->e:Lo/ConnectEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Android Bugsnag Notifier"

    .line 16
    iput-object v0, p0, Lo/ConnectEvent;->d:Ljava/lang/String;

    const-string v0, "4.21.0"

    .line 19
    iput-object v0, p0, Lo/ConnectEvent;->c:Ljava/lang/String;

    const-string v0, "https://bugsnag.com"

    .line 22
    iput-object v0, p0, Lo/ConnectEvent;->b:Ljava/lang/String;

    return-void
.end method

.method public static b()Lo/ConnectEvent;
    .locals 1

    .line 29
    sget-object v0, Lo/ConnectEvent;->e:Lo/ConnectEvent;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/ConnectEvent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/ConnectEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toStream(Lo/WaitResult;)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v0, "name"

    .line 35
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/ConnectEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "version"

    .line 36
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/ConnectEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "url"

    .line 37
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/ConnectEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    .line 38
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    return-void
.end method
