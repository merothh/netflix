.class public final Lcom/netflix/mediaclient/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final BYTES_PER_KB:I = 0x400

.field public static final BYTES_PER_MB:I = 0x100000

.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final EOF:I = -0x1

.field public static final FILE_COLON_TWO_SLASH:Ljava/lang/String; = "file://"

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 415
    if-eqz p0, :cond_0

    .line 416
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .prologue
    .line 459
    const-wide/16 v0, 0x0

    .line 460
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 462
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 463
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 464
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 466
    :cond_0
    return-wide v0
.end method

.method public static copyFileFromAssetToFS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    .line 74
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 75
    if-eqz v4, :cond_4

    move v0, v1

    .line 83
    :goto_0
    invoke-static {v4}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    .line 86
    :goto_1
    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 122
    :goto_2
    return v2

    .line 79
    :catch_0
    move-exception v0

    .line 83
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    move v0, v2

    .line 84
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    throw v0

    .line 90
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 91
    invoke-virtual {p0, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string/jumbo v0, "FileUtils"

    const-string/jumbo v4, "Failed to delete file"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 101
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 102
    if-nez v3, :cond_2

    .line 103
    :try_start_3
    const-string/jumbo v0, "FileUtils"

    const-string/jumbo v1, "IS is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 118
    invoke-static {v4}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    .line 119
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_2

    .line 107
    :cond_2
    const/16 v0, 0x400

    :try_start_4
    new-array v0, v0, [B

    .line 109
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 110
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 113
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    .line 114
    :goto_4
    :try_start_5
    const-string/jumbo v4, "FileUtils"

    const-string/jumbo v5, "Failed to extract CA"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 118
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    .line 119
    invoke-static {v1}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_2

    .line 118
    :cond_3
    invoke-static {v4}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    .line 119
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    move v2, v1

    .line 122
    goto :goto_2

    .line 118
    :catchall_1
    move-exception v0

    move-object v4, v3

    :goto_5
    invoke-static {v4}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    .line 119
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    throw v0

    .line 118
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    goto :goto_5

    .line 113
    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_4

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method public static createDirectoryIfRequired(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 508
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteRecursive(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 480
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 481
    invoke-static {v3}, Lcom/netflix/mediaclient/util/FileUtils;->deleteRecursive(Ljava/io/File;)Z

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/FileUtils;->getOutputStream(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 192
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 194
    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 195
    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 196
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 197
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 200
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 202
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 203
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v1}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    throw v0

    .line 206
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    invoke-static {v2}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v1}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    return-object v0
.end method

.method public static extractFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string/jumbo v0, ""

    .line 321
    :goto_0
    return-object v0

    .line 320
    :cond_0
    const-string/jumbo v0, "file://"

    .line 321
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDirectorySizeInBytes(Ljava/io/File;)J
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    .line 542
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-wide v2, v0

    .line 569
    :cond_1
    :goto_0
    return-wide v2

    .line 545
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 546
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    .line 549
    :cond_3
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 550
    invoke-interface {v4, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-wide v2, v0

    .line 551
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 557
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 558
    if-eqz v5, :cond_4

    array-length v0, v5

    if-eqz v0, :cond_4

    .line 561
    array-length v6, v5

    const/4 v0, 0x0

    move v10, v0

    move-wide v0, v2

    move v2, v10

    :goto_2
    if-ge v2, v6, :cond_6

    aget-object v3, v5, v2

    .line 562
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 563
    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 561
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 565
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_3

    :cond_6
    move-wide v2, v0

    .line 568
    goto :goto_1
.end method

.method public static getOutputStream(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/FileOutputStream;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    .line 153
    .line 155
    if-eqz p2, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 168
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .locals 3

    .prologue
    .line 584
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    const-string/jumbo v0, "FileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not directory or does not exists "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-wide/16 v0, 0x0

    .line 588
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 3

    .prologue
    .line 397
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' cannot be read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static readBytesFromFile(Ljava/io/File;II)[B
    .locals 4

    .prologue
    .line 354
    if-gez p2, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "We can not read less than 1 byte!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    new-array v0, p2, [B

    .line 359
    const/4 v2, 0x0

    .line 362
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 364
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 370
    if-eqz v1, :cond_1

    .line 371
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 365
    :cond_1
    :goto_0
    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 370
    :goto_1
    if-eqz v1, :cond_2

    .line 371
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 373
    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 369
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static readFile(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 264
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 265
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 267
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 282
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 283
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 285
    return-object v0
.end method

.method public static readFileToByteArray(Ljava/io/File;)[B
    .locals 2

    .prologue
    .line 333
    const/4 v1, 0x0

    .line 335
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 336
    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 338
    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 336
    return-object v0

    .line 338
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static readFileWithUTF8Encoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/FileUtils;->readFile(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readRawString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 500
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeFilesFromFS(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 133
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 134
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string/jumbo v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File for removal found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    .line 140
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    const-string/jumbo v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_2
    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 434
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 435
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 436
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static writeBytesToFile(Ljava/lang/String;[B)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 513
    const/4 v4, 0x0

    .line 514
    const/4 v1, 0x0

    .line 516
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 523
    if-eqz v3, :cond_1

    .line 525
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 532
    :goto_0
    return v0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    const-string/jumbo v2, "FileUtils"

    const-string/jumbo v3, "persistManifest close IO Exception "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 529
    goto :goto_0

    .line 518
    :catch_1
    move-exception v2

    move-object v3, v4

    .line 519
    :goto_1
    :try_start_3
    const-string/jumbo v4, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBytesToFile file not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 523
    if-eqz v3, :cond_1

    .line 525
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 527
    :catch_2
    move-exception v0

    .line 528
    const-string/jumbo v2, "FileUtils"

    const-string/jumbo v3, "persistManifest close IO Exception "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 529
    goto :goto_0

    .line 520
    :catch_3
    move-exception v2

    .line 521
    :goto_2
    :try_start_5
    const-string/jumbo v3, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBytesToFile IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 523
    if-eqz v4, :cond_1

    .line 525
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 527
    :catch_4
    move-exception v0

    .line 528
    const-string/jumbo v2, "FileUtils"

    const-string/jumbo v3, "persistManifest close IO Exception "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 529
    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v4, :cond_0

    .line 525
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 529
    :cond_0
    :goto_4
    throw v0

    .line 527
    :catch_5
    move-exception v1

    .line 528
    const-string/jumbo v2, "FileUtils"

    const-string/jumbo v3, "persistManifest close IO Exception "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 523
    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_3

    .line 520
    :catch_6
    move-exception v2

    move-object v4, v3

    goto :goto_2

    .line 518
    :catch_7
    move-exception v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto/16 :goto_0
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 234
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 235
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 238
    const-string/jumbo v0, "*****************************************************************"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrote string to file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Get file with command: adb pull /sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string/jumbo v0, "*****************************************************************"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 245
    const/4 v0, 0x0

    goto :goto_0
.end method
