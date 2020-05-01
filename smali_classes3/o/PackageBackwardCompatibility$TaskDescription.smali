.class public Lo/PackageBackwardCompatibility$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PackageBackwardCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/PackageParser;

.field private g:J

.field private h:Lo/PackageSharedLibraryUpdater;

.field private i:Lcom/facebook/cache/common/CacheEventListener;

.field private j:Lcom/facebook/cache/common/CacheErrorLogger;

.field private k:Z

.field private final n:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 131
    iput v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->c:I

    const-string v0, "image_cache"

    .line 132
    iput-object v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->d:Ljava/lang/String;

    const-wide/32 v0, 0x2800000

    .line 134
    iput-wide v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->b:J

    const-wide/32 v0, 0xa00000

    .line 135
    iput-wide v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->a:J

    const-wide/32 v0, 0x200000

    .line 136
    iput-wide v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->g:J

    .line 137
    new-instance v0, Lo/OrgApacheHttpLegacyUpdater;

    invoke-direct {v0}, Lo/OrgApacheHttpLegacyUpdater;-><init>()V

    iput-object v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->f:Lo/PackageParser;

    .line 147
    iput-object p1, p0, Lo/PackageBackwardCompatibility$TaskDescription;->n:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lo/PackageBackwardCompatibility$5;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lo/PackageBackwardCompatibility$TaskDescription;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lo/PackageBackwardCompatibility$TaskDescription;)J
    .locals 2

    .line 129
    iget-wide v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->b:J

    return-wide v0
.end method

.method static synthetic b(Lo/PackageBackwardCompatibility$TaskDescription;)J
    .locals 2

    .line 129
    iget-wide v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->a:J

    return-wide v0
.end method

.method static synthetic c(Lo/PackageBackwardCompatibility$TaskDescription;)I
    .locals 0

    .line 129
    iget p0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->c:I

    return p0
.end method

.method static synthetic d(Lo/PackageBackwardCompatibility$TaskDescription;)Lo/UserInfo;
    .locals 0

    .line 129
    iget-object p0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->e:Lo/UserInfo;

    return-object p0
.end method

.method static synthetic e(Lo/PackageBackwardCompatibility$TaskDescription;)Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lo/PackageBackwardCompatibility$TaskDescription;)J
    .locals 2

    .line 129
    iget-wide v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->g:J

    return-wide v0
.end method

.method static synthetic g(Lo/PackageBackwardCompatibility$TaskDescription;)Lo/PackageParser;
    .locals 0

    .line 129
    iget-object p0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->f:Lo/PackageParser;

    return-object p0
.end method

.method static synthetic h(Lo/PackageBackwardCompatibility$TaskDescription;)Lcom/facebook/cache/common/CacheEventListener;
    .locals 0

    .line 129
    iget-object p0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->i:Lcom/facebook/cache/common/CacheEventListener;

    return-object p0
.end method

.method static synthetic i(Lo/PackageBackwardCompatibility$TaskDescription;)Lo/PackageSharedLibraryUpdater;
    .locals 0

    .line 129
    iget-object p0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->h:Lo/PackageSharedLibraryUpdater;

    return-object p0
.end method

.method static synthetic j(Lo/PackageBackwardCompatibility$TaskDescription;)Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 0

    .line 129
    iget-object p0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->j:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method static synthetic k(Lo/PackageBackwardCompatibility$TaskDescription;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->k:Z

    return p0
.end method

.method static synthetic n(Lo/PackageBackwardCompatibility$TaskDescription;)Landroid/content/Context;
    .locals 0

    .line 129
    iget-object p0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->n:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public e(J)Lo/PackageBackwardCompatibility$TaskDescription;
    .locals 0

    .line 188
    iput-wide p1, p0, Lo/PackageBackwardCompatibility$TaskDescription;->b:J

    return-object p0
.end method

.method public e()Lo/PackageBackwardCompatibility;
    .locals 2

    .line 252
    iget-object v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->e:Lo/UserInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->n:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Either a non-null context or a base directory path or supplier must be provided."

    invoke-static {v0, v1}, Lo/StringParceledListSlice;->a(ZLjava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->e:Lo/UserInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->n:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 256
    new-instance v0, Lo/PackageBackwardCompatibility$TaskDescription$5;

    invoke-direct {v0, p0}, Lo/PackageBackwardCompatibility$TaskDescription$5;-><init>(Lo/PackageBackwardCompatibility$TaskDescription;)V

    iput-object v0, p0, Lo/PackageBackwardCompatibility$TaskDescription;->e:Lo/UserInfo;

    .line 263
    :cond_2
    new-instance v0, Lo/PackageBackwardCompatibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/PackageBackwardCompatibility;-><init>(Lo/PackageBackwardCompatibility$TaskDescription;Lo/PackageBackwardCompatibility$5;)V

    return-object v0
.end method
