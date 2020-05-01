.class public final Lo/xQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xQ$TaskDescription;,
        Lo/xQ$StateListAnimator;,
        Lo/xQ$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Boolean;

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lo/xQ;->c:Ljava/lang/Boolean;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/xQ;->d:Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lo/aeL;
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 144
    new-instance v0, Ljava/io/File;

    const-string v1, "preAppData"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 148
    :cond_0
    new-instance p0, Lo/aeO;

    invoke-direct {p0, v0}, Lo/aeO;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lo/xQ$ActionBar;)V
    .locals 2

    const-string v0, "nf_preapp_dataRepo"

    const-string v1, "starting load from Disk"

    .line 38
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {p0}, Lo/xQ;->a(Landroid/content/Context;)Lo/aeL;

    move-result-object p0

    .line 42
    new-instance v0, Lo/xQ$3;

    invoke-direct {v0, p0, p1, p1}, Lo/xQ$3;-><init>(Lo/aeL;Lo/xQ$ActionBar;Lo/xQ$ActionBar;)V

    .line 55
    sget-object p1, Lo/xQ;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 56
    :try_start_0
    invoke-interface {p0, v0}, Lo/aeL;->c(Lo/aeL$ActionBar;)V

    .line 57
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lo/aeL$TaskDescription;)V
    .locals 3

    .line 154
    invoke-static {p0}, Lo/xQ;->a(Landroid/content/Context;)Lo/aeL;

    move-result-object p0

    :try_start_0
    const-string v0, "nf_preapp_dataRepo"

    const-string v1, "saving payload to file: REPOSITORY_FILE_NAME"

    .line 157
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v0, Lo/xQ;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    sget-object v0, Lo/xQ;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "preAppDiskDataFile"

    const-string v2, "utf-8"

    .line 163
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p0, v1, p1, v2, p2}, Lo/aeL;->c(Ljava/lang/String;[BLjava/lang/String;Lo/aeL$TaskDescription;)Ljava/lang/String;

    .line 164
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    const-string p1, "nf_preapp_dataRepo"

    const-string p2, "Failed to save payload to repository"

    .line 166
    invoke-static {p1, p2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static c(Lo/aeL;[Lo/aeL$StateListAnimator;Lo/xQ$ActionBar;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 64
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    aget-object p1, p1, v0

    invoke-interface {p1}, Lo/aeL$StateListAnimator;->a()Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v0, Lo/xQ$4;

    invoke-direct {v0, p2}, Lo/xQ$4;-><init>(Lo/xQ$ActionBar;)V

    invoke-interface {p0, p1, v0}, Lo/aeL;->a(Ljava/lang/String;Lo/aeL$Application;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "nf_preapp_dataRepo"

    const-string p1, "No saved data found"

    .line 65
    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 66
    invoke-virtual {p2, p0}, Lo/xQ$ActionBar;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    .line 172
    sget-object v0, Lo/xQ;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clearDiskData"

    .line 173
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_preapp_dataRepo"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    invoke-static {p0}, Lo/xQ;->a(Landroid/content/Context;)Lo/aeL;

    move-result-object p0

    .line 176
    sget-object v0, Lo/xQ;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    invoke-interface {p0}, Lo/aeL;->b()V

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic e(Lo/aeL;[Lo/aeL$StateListAnimator;Lo/xQ$ActionBar;)V
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lo/xQ;->c(Lo/aeL;[Lo/aeL$StateListAnimator;Lo/xQ$ActionBar;)V

    return-void
.end method
