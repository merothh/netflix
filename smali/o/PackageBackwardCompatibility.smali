.class public Lo/PackageBackwardCompatibility;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PackageBackwardCompatibility$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final f:J

.field private final g:Lo/PackageParser;

.field private final h:Lcom/facebook/cache/common/CacheEventListener;

.field private final i:Lo/PackageSharedLibraryUpdater;

.field private final j:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final n:Z

.field private final o:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lo/PackageBackwardCompatibility$TaskDescription;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->c(Lo/PackageBackwardCompatibility$TaskDescription;)I

    move-result v0

    iput v0, p0, Lo/PackageBackwardCompatibility;->b:I

    .line 45
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->e(Lo/PackageBackwardCompatibility$TaskDescription;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/PackageBackwardCompatibility;->a:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->d(Lo/PackageBackwardCompatibility$TaskDescription;)Lo/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UserInfo;

    iput-object v0, p0, Lo/PackageBackwardCompatibility;->e:Lo/UserInfo;

    .line 47
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->a(Lo/PackageBackwardCompatibility$TaskDescription;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/PackageBackwardCompatibility;->c:J

    .line 48
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->b(Lo/PackageBackwardCompatibility$TaskDescription;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/PackageBackwardCompatibility;->d:J

    .line 49
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->f(Lo/PackageBackwardCompatibility$TaskDescription;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/PackageBackwardCompatibility;->f:J

    .line 51
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->g(Lo/PackageBackwardCompatibility$TaskDescription;)Lo/PackageParser;

    move-result-object v0

    invoke-static {v0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PackageParser;

    iput-object v0, p0, Lo/PackageBackwardCompatibility;->g:Lo/PackageParser;

    .line 53
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->j(Lo/PackageBackwardCompatibility$TaskDescription;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lo/LauncherApps;->b()Lo/LauncherApps;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->j(Lo/PackageBackwardCompatibility$TaskDescription;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/PackageBackwardCompatibility;->j:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 57
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->h(Lo/PackageBackwardCompatibility$TaskDescription;)Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lo/PackageInfo;->e()Lo/PackageInfo;

    move-result-object v0

    goto :goto_1

    .line 59
    :cond_1
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->h(Lo/PackageBackwardCompatibility$TaskDescription;)Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/PackageBackwardCompatibility;->h:Lcom/facebook/cache/common/CacheEventListener;

    .line 61
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->i(Lo/PackageBackwardCompatibility$TaskDescription;)Lo/PackageSharedLibraryUpdater;

    move-result-object v0

    if-nez v0, :cond_2

    .line 62
    invoke-static {}, Lo/RegisteredServicesCacheListener;->b()Lo/RegisteredServicesCacheListener;

    move-result-object v0

    goto :goto_2

    .line 63
    :cond_2
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->i(Lo/PackageBackwardCompatibility$TaskDescription;)Lo/PackageSharedLibraryUpdater;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lo/PackageBackwardCompatibility;->i:Lo/PackageSharedLibraryUpdater;

    .line 64
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->n(Lo/PackageBackwardCompatibility$TaskDescription;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/PackageBackwardCompatibility;->o:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Lo/PackageBackwardCompatibility$TaskDescription;->k(Lo/PackageBackwardCompatibility$TaskDescription;)Z

    move-result p1

    iput-boolean p1, p0, Lo/PackageBackwardCompatibility;->n:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/PackageBackwardCompatibility$TaskDescription;Lo/PackageBackwardCompatibility$5;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/PackageBackwardCompatibility;-><init>(Lo/PackageBackwardCompatibility$TaskDescription;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lo/PackageBackwardCompatibility$TaskDescription;
    .locals 2

    .line 126
    new-instance v0, Lo/PackageBackwardCompatibility$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/PackageBackwardCompatibility$TaskDescription;-><init>(Landroid/content/Context;Lo/PackageBackwardCompatibility$5;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 69
    iget v0, p0, Lo/PackageBackwardCompatibility;->b:I

    return v0
.end method

.method public b()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lo/PackageBackwardCompatibility;->c:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lo/PackageBackwardCompatibility;->d:J

    return-wide v0
.end method

.method public d()Lo/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/UserInfo<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lo/PackageBackwardCompatibility;->e:Lo/UserInfo;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/PackageBackwardCompatibility;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/facebook/cache/common/CacheEventListener;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/PackageBackwardCompatibility;->h:Lcom/facebook/cache/common/CacheEventListener;

    return-object v0
.end method

.method public g()Lo/PackageSharedLibraryUpdater;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/PackageBackwardCompatibility;->i:Lo/PackageSharedLibraryUpdater;

    return-object v0
.end method

.method public h()Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/PackageBackwardCompatibility;->j:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object v0
.end method

.method public i()Lo/PackageParser;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/PackageBackwardCompatibility;->g:Lo/PackageParser;

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lo/PackageBackwardCompatibility;->f:J

    return-wide v0
.end method

.method public k()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lo/PackageBackwardCompatibility;->n:Z

    return v0
.end method

.method public n()Landroid/content/Context;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/PackageBackwardCompatibility;->o:Landroid/content/Context;

    return-object v0
.end method
