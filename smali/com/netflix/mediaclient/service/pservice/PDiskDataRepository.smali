.class public final Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;
.super Ljava/lang/Object;
.source "PDiskDataRepository.java"


# static fields
.field public static final ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "nf_preapp_dataRepo"

.field private static final repoLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->repoLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/util/data/DataRepository;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->initFromDiskData(Lcom/netflix/mediaclient/util/data/DataRepository;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    return-void
.end method

.method public static clearDiskData(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 171
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string/jumbo v0, "nf_preapp_dataRepo"

    const-string/jumbo v1, "clearDiskData"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->getDataRepository(Landroid/content/Context;)Lcom/netflix/mediaclient/util/data/DataRepository;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->repoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->clear()V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDataRepository(Landroid/content/Context;)Lcom/netflix/mediaclient/util/data/DataRepository;
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "preAppData"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 147
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private static initFromDiskData(Lcom/netflix/mediaclient/util/data/DataRepository;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 4

    .prologue
    .line 66
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 67
    :cond_0
    const-string/jumbo v0, "nf_preapp_dataRepo"

    const-string/jumbo v1, "No saved data found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;->onDataLoaded(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    .line 105
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const-string/jumbo v0, "nf_preapp_dataRepo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " entries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_2
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    const-string/jumbo v1, "nf_preapp_dataRepo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3
    new-instance v1, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$2;

    invoke-direct {v1, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$2;-><init>(Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    invoke-interface {p0, v0, v1}, Lcom/netflix/mediaclient/util/data/DataRepository;->load(Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;)V

    goto :goto_0
.end method

.method public static saveData(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;)V
    .locals 4

    .prologue
    .line 153
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->getDataRepository(Landroid/content/Context;)Lcom/netflix/mediaclient/util/data/DataRepository;

    move-result-object v0

    .line 156
    :try_start_0
    const-string/jumbo v1, "nf_preapp_dataRepo"

    const-string/jumbo v2, "saving payload to file: REPOSITORY_FILE_NAME"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->repoLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :try_start_1
    const-string/jumbo v2, "preAppDiskDataFile"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v0, v2, v3, p2}, Lcom/netflix/mediaclient/util/data/DataRepository;->save(Ljava/lang/String;[BLcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;)Ljava/lang/String;

    .line 163
    monitor-exit v1

    .line 167
    :goto_0
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string/jumbo v1, "nf_preapp_dataRepo"

    const-string/jumbo v2, "Failed to save payload to repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startLoadFromDisk(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 3

    .prologue
    .line 40
    const-string/jumbo v0, "nf_preapp_dataRepo"

    const-string/jumbo v1, "starting load from Disk"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->getDataRepository(Landroid/content/Context;)Lcom/netflix/mediaclient/util/data/DataRepository;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$1;

    invoke-direct {v1, v0, p1, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$1;-><init>(Lcom/netflix/mediaclient/util/data/DataRepository;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    .line 57
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->repoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/data/DataRepository;->loadAll(Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;)V

    .line 59
    monitor-exit v2

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
