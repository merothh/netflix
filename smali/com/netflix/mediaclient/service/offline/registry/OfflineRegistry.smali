.class public Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;
.super Ljava/lang/Object;
.source "OfflineRegistry.java"


# static fields
.field private static final META_REGISTRY_VERSION:I = 0x1

.field public static final OFFLINE_DIRECTORY:Ljava/lang/String; = "/.of"

.field private static final TAG:Ljava/lang/String; = "nf_offline_registry"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

.field private mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

.field private final mOfflineStorageDirArray:[Ljava/io/File;

.field private final mRegistryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/registry/RegistryData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/io/File;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageDirArray:[Ljava/io/File;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildRegistryDataFromFile(Ljava/io/File;)Lcom/netflix/mediaclient/service/offline/registry/RegistryData;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-string/jumbo v2, ""

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForRegistry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    const-string/jumbo v4, "utf-8"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/StringUtils;->byteArrayToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v4, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    if-nez v1, :cond_5

    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;-><init>(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_offline_registry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildRegistryDataFromFile file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "nf_offline_registry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "buildRegistryDataFromFile fromJson failed jsonData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v4, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    invoke-virtual {v1, v4}, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->getCheckSumFor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "nf_offline_registry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "buildRegistryDataFromFile savedCheckSum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " calculatedCheckSum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "nf_offline_registry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mMetaRegistry.mMetaRegistryWriteCounter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v6, v6, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " registryData.mMetaRegistryWriteCounter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mMetaRegistryWriteCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v1, v1, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v1, v1, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    iget v2, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mMetaRegistryWriteCounter:I

    if-lt v1, v2, :cond_7

    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/ChecksumException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkSumError for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string/jumbo v1, "nf_offline_registry"

    const-string/jumbo v2, "ignoring checksum error"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private calculateChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string/jumbo v0, "ES6NBf1k7A4YmhA14ZsZQfmEoE8b7mM"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/CryptoUtils;->hashSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_offline_registry"

    const-string/jumbo v2, "calculateChecksum"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getOfflineStorageDirectoryArray(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-direct {v0, v2, p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;-><init>([Ljava/io/File;Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->readMetaRegistry()V

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->readRegistryDataList()V

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->hasAtLeastOneRegistryData()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->ensureCurrentRegistryData()V

    :cond_0
    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private ensureCurrentRegistryData()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget v2, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v3, v3, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentActiveRegId:I

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_offline_registry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "found active reg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget v1, v1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    iput v1, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentActiveRegId:I

    goto :goto_0
.end method

.method private static getOfflineStorageDirectoryArray(Landroid/content/Context;)[Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getExternalDownloadDirIfAvailable(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/.of"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_offline_registry"

    const-string/jumbo v2, "getOfflineStorageDirectoryArray can\'t create directory"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method private hasAtLeastOneRegistryData()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readMetaRegistry()V
    .locals 5

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForMetaRegistry(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->byteArrayToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_offline_registry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readMtaRegistryFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " metaRegistryJson="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    if-nez v0, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    :cond_2
    return-void

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_offline_registry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file doesn\'t exist readMtaRegistryFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_offline_registry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readMetaRegistry error filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_offline_registry"

    const-string/jumbo v2, "readMetaRegistry fromJson failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private readRegistryDataList()V
    .locals 5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageDirArray:[Ljava/io/File;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->buildRegistryDataFromFile(Ljava/io/File;)Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removeCreatingOrFailedItemsFromRegistryData(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)V

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registryDataToJson(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeCreatingOrFailedItemsFromRegistryData(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)V
    .locals 5

    iget-object v0, p1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nf_offline_registry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeCreatingOrFailedItemsFromRegistryData ignoring playableId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addToCurrentRegistryData(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public areDownloadsPausedByUser()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mDownloadsPausedByUser:Z

    return v0
.end method

.method public deleteDeletedList()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAllDeletedPlayable()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCurrentOfflineStorageDirPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mGeoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryProfileGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mPrimaryProfileGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/registry/RegistryData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    return-object v0
.end method

.method public hasAtLeastOnePlayable()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public persistRegistry()Z
    .locals 9

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v3, v3, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mMetaRegistryWriteCounter:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->registryDataToJson(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "nf_offline_registry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persistRegistry jsonData="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForRegistry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "nf_offline_registry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persistRegistry writing registry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/util/FileUtils;->writeBytesToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v1, :cond_3

    move v1, v3

    :cond_3
    if-eqz v3, :cond_0

    invoke-direct {p0, v5}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "nf_offline_registry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persistRegistry newCheckSum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    invoke-virtual {v5, v0, v3}, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->updateCheckSum(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v3, v3, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "nf_offline_registry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistRegistry metaRegistryJson="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForMetaRegistry(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/FileUtils;->writeBytesToFile(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "nf_offline_registry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persistRegistry can\'t save allRegistriesSaved="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "metaRegistrySaved="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeFromDeletedList(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removePlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Z)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    iget-object v5, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    iget-object v0, v2, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_offline_registry"

    const-string/jumbo v1, "removePlayable can\'t remove the playable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method public setDownloadsPausedByUser(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-boolean p1, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mDownloadsPausedByUser:Z

    return-void
.end method

.method public setGeoCountryCode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-object p1, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mGeoCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryProfileGuid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-object p1, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mPrimaryProfileGuid:Ljava/lang/String;

    return-void
.end method
