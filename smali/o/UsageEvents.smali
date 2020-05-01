.class public Lo/UsageEvents;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StorageStatsManager;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:J

.field private c:Lo/BackupDataOutput;

.field private final d:Lo/AppWidgetProvider;

.field private final e:Lo/NetworkStats;


# direct methods
.method protected constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lo/NetworkStats;

    invoke-direct {v0}, Lo/NetworkStats;-><init>()V

    iput-object v0, p0, Lo/UsageEvents;->e:Lo/NetworkStats;

    .line 74
    iput-object p1, p0, Lo/UsageEvents;->a:Ljava/io/File;

    .line 75
    iput-wide p2, p0, Lo/UsageEvents;->b:J

    .line 76
    new-instance p1, Lo/AppWidgetProvider;

    invoke-direct {p1}, Lo/AppWidgetProvider;-><init>()V

    iput-object p1, p0, Lo/UsageEvents;->d:Lo/AppWidgetProvider;

    return-void
.end method

.method public static a(Ljava/io/File;J)Lo/StorageStatsManager;
    .locals 1

    .line 64
    new-instance v0, Lo/UsageEvents;

    invoke-direct {v0, p0, p1, p2}, Lo/UsageEvents;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method private declared-synchronized b()Lo/BackupDataOutput;
    .locals 4

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lo/UsageEvents;->c:Lo/BackupDataOutput;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lo/UsageEvents;->a:Ljava/io/File;

    iget-wide v1, p0, Lo/UsageEvents;->b:J

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lo/BackupDataOutput;->a(Ljava/io/File;IIJ)Lo/BackupDataOutput;

    move-result-object v0

    iput-object v0, p0, Lo/UsageEvents;->c:Lo/BackupDataOutput;

    .line 83
    :cond_0
    iget-object v0, p0, Lo/UsageEvents;->c:Lo/BackupDataOutput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public c(Lo/FileBackupHelperBase;)Ljava/io/File;
    .locals 4

    .line 88
    iget-object v0, p0, Lo/UsageEvents;->d:Lo/AppWidgetProvider;

    invoke-virtual {v0, p1}, Lo/AppWidgetProvider;->e(Lo/FileBackupHelperBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 97
    :try_start_0
    invoke-direct {p0}, Lo/UsageEvents;->b()Lo/BackupDataOutput;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/BackupDataOutput;->b(Ljava/lang/String;)Lo/BackupDataOutput$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v2}, Lo/BackupDataOutput$TaskDescription;->a(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    .line 102
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Unable to get from disk cache"

    .line 103
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public c(Lo/FileBackupHelperBase;Lo/StorageStatsManager$ActionBar;)V
    .locals 4

    const-string v0, "DiskLruCacheWrapper"

    .line 113
    iget-object v1, p0, Lo/UsageEvents;->d:Lo/AppWidgetProvider;

    invoke-virtual {v1, p1}, Lo/AppWidgetProvider;->e(Lo/FileBackupHelperBase;)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lo/UsageEvents;->e:Lo/NetworkStats;

    invoke-virtual {v2, v1}, Lo/NetworkStats;->a(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 116
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lo/UsageEvents;->b()Lo/BackupDataOutput;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v1}, Lo/BackupDataOutput;->b(Ljava/lang/String;)Lo/BackupDataOutput$TaskDescription;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 146
    iget-object p1, p0, Lo/UsageEvents;->e:Lo/NetworkStats;

    invoke-virtual {p1, v1}, Lo/NetworkStats;->d(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_1
    :try_start_2
    invoke-virtual {p1, v1}, Lo/BackupDataOutput;->a(Ljava/lang/String;)Lo/BackupDataOutput$Activity;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 133
    :try_start_3
    invoke-virtual {p1, v2}, Lo/BackupDataOutput$Activity;->e(I)Ljava/io/File;

    move-result-object v2

    .line 134
    invoke-interface {p2, v2}, Lo/StorageStatsManager$ActionBar;->e(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 135
    invoke-virtual {p1}, Lo/BackupDataOutput$Activity;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lo/BackupDataOutput$Activity;->a()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lo/BackupDataOutput$Activity;->a()V

    throw p2

    .line 130
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had two simultaneous puts for: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    .line 141
    :try_start_5
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Unable to put to disk cache"

    .line 142
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 146
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/UsageEvents;->e:Lo/NetworkStats;

    invoke-virtual {p1, v1}, Lo/NetworkStats;->d(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lo/UsageEvents;->e:Lo/NetworkStats;

    invoke-virtual {p2, v1}, Lo/NetworkStats;->d(Ljava/lang/String;)V

    throw p1
.end method
