.class public Lcom/facebook/cache/disk/DefaultDiskStorage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PackageInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$Application;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final b:J


# instance fields
.field private final c:Z

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final i:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final j:Lo/GradientColor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const-class v0, Lcom/facebook/cache/disk/DefaultDiskStorage;

    sput-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:Ljava/lang/Class;

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Ljava/io/File;

    .line 102
    invoke-static {p1, p3}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b(Ljava/io/File;Lcom/facebook/cache/common/CacheErrorLogger;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Z

    .line 108
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Ljava/io/File;

    invoke-static {p2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    .line 109
    iput-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->i:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 110
    invoke-direct {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->g()V

    .line 111
    invoke-static {}, Lo/FontResourcesParser;->d()Lo/FontResourcesParser;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->j:Lo/GradientColor;

    return-void
.end method

.method private a(Ljava/io/File;)J
    .locals 2

    .line 430
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 434
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 435
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static synthetic a(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$Application;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$Application;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$Application;
    .locals 3

    .line 557
    invoke-static {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->a(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 561
    :cond_0
    iget-object v2, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->c:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 562
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lo/GradientColor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->j:Lo/GradientColor;

    return-object p0
.end method

.method private static b(Ljava/io/File;Lcom/facebook/cache/common/CacheErrorLogger;)Z
    .locals 6

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 124
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, p0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 p0, 0x0

    .line 128
    :goto_0
    :try_start_3
    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->r:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read folder to check if external: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, v3, p0, v1}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 136
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->r:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:Ljava/lang/Class;

    const-string v3, "failed to get the external storage directory!"

    invoke-interface {p1, v1, v2, v3, p0}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return v0
.end method

.method static synthetic c(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->i:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/Class;
    .locals 1

    .line 39
    sget-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Ljava/io/File;

    return-object p0
.end method

.method static d(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 147
    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "v2"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 152
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "%s.ols%d.%d"

    .line 147
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 345
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->e(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 347
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->i:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->l:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:Ljava/lang/Class;

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    throw p1
.end method

.method static synthetic e(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 237
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 392
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;

    const-string v1, ".cnt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/cache/disk/DefaultDiskStorage$3;)V

    .line 393
    iget-object p1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Ljava/io/File;

    invoke-static {v0}, Lo/ServiceInfo;->b(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/FileUtils;->e(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    :catch_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->i:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->l:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version directory could not be created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".cnt"

    .line 581
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, ".tmp"

    .line 583
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Ljava/io/File;

    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$3;)V

    invoke-static {v0, v1}, Lo/ServiceInfo;->e(Ljava/io/File;Lo/SELinuxUtil;)V

    return-void
.end method

.method public b(Lo/PackageInstaller$Activity;)J
    .locals 2

    .line 419
    check-cast p1, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;

    .line 420
    invoke-virtual {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->e()Lo/InstrumentationInfo;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Lo/InstrumentationInfo;->e()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/PackageInstaller$Activity;",
            ">;"
        }
    .end annotation

    .line 498
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$3;)V

    .line 499
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-static {v1, v0}, Lo/ServiceInfo;->e(Ljava/io/File;Lo/SELinuxUtil;)V

    .line 500
    invoke-virtual {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)J
    .locals 2

    .line 426
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic d()Ljava/util/Collection;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)Lo/PackageInstaller$TaskDescription;
    .locals 3

    .line 362
    new-instance p2, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;

    const-string v0, ".tmp"

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/cache/disk/DefaultDiskStorage$3;)V

    .line 363
    iget-object v0, p2, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "insert"

    if-nez v1, :cond_0

    .line 365
    invoke-direct {p0, v0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    :cond_0
    :try_start_0
    invoke-virtual {p2, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->e(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 370
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 372
    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->i:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->h:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v1, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:Ljava/lang/Class;

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)Lo/InstantAppResolveInfo;
    .locals 2

    .line 383
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 385
    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->j:Lo/GradientColor;

    invoke-interface {p2}, Lo/GradientColor;->e()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 386
    invoke-static {p1}, Lo/InstrumentationInfo;->b(Ljava/io/File;)Lo/InstrumentationInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Z

    return v0
.end method
