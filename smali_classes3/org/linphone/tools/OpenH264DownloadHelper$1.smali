.class Lorg/linphone/tools/OpenH264DownloadHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/linphone/tools/OpenH264DownloadHelper;->downloadCodec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/linphone/tools/OpenH264DownloadHelper;


# direct methods
.method constructor <init>(Lorg/linphone/tools/OpenH264DownloadHelper;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "/"

    const-string v1, "OpenH264Downloader"

    .line 188
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v3}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$000(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v3}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$100(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v4}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$200(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 191
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v7, " "

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 192
    invoke-static {v5}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 194
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v10}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$000(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v10}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 196
    iget-object v9, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v9}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v9

    invoke-interface {v9, v6, v3}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnProgress(II)V

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v1, v9, v6

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Download file:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v11}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v9}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    const/16 v9, 0x1000

    new-array v9, v9, [B

    const/4 v10, 0x0

    .line 203
    :goto_0
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_0

    add-int/2addr v10, v11

    .line 205
    invoke-virtual {v7, v9, v6, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 206
    iget-object v11, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v11}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v11

    invoke-interface {v11, v10, v3}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnProgress(II)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 210
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Uncompress file:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v7}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 214
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v7}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$000(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v7}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 215
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {v7, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    .line 218
    :goto_1
    invoke-virtual {v7, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_1

    .line 219
    invoke-virtual {v5, v9, v6, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 222
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 223
    invoke-virtual {v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->close()V

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Remove file:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v7}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 226
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v7}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$000(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v0}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Loading plugin:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 229
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v0}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v0

    invoke-interface {v0, v4, v8}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnProgress(II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 234
    iget-object v1, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v1}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnError(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 232
    iget-object v1, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v1}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
