.class Lcom/netflix/mediaclient/media/BifManager$1;
.super Ljava/lang/Object;
.source "BifManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/BifManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/BifManager;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$000(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 225
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    const-string/jumbo v1, "BifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try url@ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/BifManager;->access$100(Lcom/netflix/mediaclient/media/BifManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    :goto_1
    return-void

    .line 234
    :cond_3
    const/4 v2, 0x0

    .line 235
    const/4 v3, 0x0

    .line 236
    const/4 v1, 0x0

    .line 239
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 242
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    const/16 v0, 0x40

    :try_start_2
    new-array v0, v0, [B

    .line 245
    const/4 v3, 0x0

    const/16 v5, 0x40

    invoke-virtual {v2, v0, v3, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 246
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 247
    const-string/jumbo v5, "BifManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_4
    const/16 v5, 0x40

    if-ge v3, v5, :cond_8

    .line 250
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 251
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 252
    const/4 v0, 0x0

    .line 253
    const/4 v2, 0x0

    .line 358
    if-eqz v1, :cond_5

    .line 359
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 360
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 362
    :cond_5
    if-eqz v2, :cond_6

    .line 363
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 365
    :cond_6
    if-eqz v0, :cond_7

    .line 366
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 371
    :cond_7
    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "bif download complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "Failed downlaod"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 259
    :cond_8
    :try_start_4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 260
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 261
    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/media/BifManager;->access$202(Lcom/netflix/mediaclient/media/BifManager;I)I

    .line 262
    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/media/BifManager;->access$302(Lcom/netflix/mediaclient/media/BifManager;I)I

    .line 263
    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/media/BifManager;->access$402(Lcom/netflix/mediaclient/media/BifManager;I)I

    .line 264
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 265
    const-string/jumbo v0, "BifManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVersion= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/BifManager;->access$200(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mBifCount= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/BifManager;->access$300(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",mInterval= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/BifManager;->access$400(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$300(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$300(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    const/16 v3, 0x7080

    if-gt v0, v3, :cond_14

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$300(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v3, v0, 0x8

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    add-int/lit8 v5, v3, 0x40

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/media/BifManager;->access$502(Lcom/netflix/mediaclient/media/BifManager;I)I

    .line 272
    new-array v7, v3, [B

    .line 273
    const/4 v0, 0x0

    .line 274
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 275
    const-string/jumbo v5, "BifManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "try to read index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v5, v0

    .line 277
    :goto_3
    if-ge v5, v3, :cond_b

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$100(Lcom/netflix/mediaclient/media/BifManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 279
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v3, "stopped"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_b
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 304
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 305
    const/4 v0, 0x0

    move v3, v0

    :goto_4
    if-ge v3, v5, :cond_15

    .line 306
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 307
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 308
    const/4 v9, -0x1

    if-ne v0, v9, :cond_c

    .line 309
    const v0, 0x7fffffff

    .line 311
    :cond_c
    iget-object v9, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v9}, Lcom/netflix/mediaclient/media/BifManager;->access$600(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/SortedMap;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v0, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    add-int/lit8 v0, v3, 0x8

    move v3, v0

    goto :goto_4

    .line 283
    :cond_d
    const/16 v0, 0x400

    .line 284
    sub-int v8, v3, v5

    const/16 v9, 0x400

    if-ge v8, v9, :cond_e

    .line 285
    sub-int v0, v3, v5

    .line 287
    :cond_e
    invoke-virtual {v2, v7, v5, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 288
    if-eq v8, v0, :cond_f

    .line 289
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 290
    const-string/jumbo v9, "BifManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "attempt to read "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, ", actual "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, " bytes"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_f
    if-gtz v8, :cond_13

    .line 295
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 296
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 297
    const/4 v0, 0x0

    .line 298
    const/4 v2, 0x0

    .line 358
    if-eqz v1, :cond_10

    .line 359
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 360
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 362
    :cond_10
    if-eqz v2, :cond_11

    .line 363
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 365
    :cond_11
    if-eqz v0, :cond_12

    .line 366
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 371
    :cond_12
    :goto_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "bif download complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    :catch_1
    move-exception v0

    .line 369
    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "Failed downlaod"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 301
    :cond_13
    add-int v0, v5, v8

    move v5, v0

    .line 302
    goto/16 :goto_3

    .line 316
    :cond_14
    :try_start_6
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$300(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    if-gtz v0, :cond_18

    .line 317
    const-string/jumbo v0, "BifManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index size is not positive, but "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/BifManager;->access$300(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ". Try next IRL if exist"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_15
    :goto_6
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$600(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$600(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/BifManager;->access$600(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$600(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v5, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/BifManager;->access$600(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 327
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 328
    const-string/jumbo v0, "BifManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "first offset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", end @"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_16
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$500(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    if-le v3, v0, :cond_17

    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$500(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    sub-int v0, v3, v0

    .line 332
    int-to-long v8, v0

    invoke-virtual {v2, v8, v9}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 334
    :cond_17
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$800(Lcom/netflix/mediaclient/media/BifManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v7, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v7}, Lcom/netflix/mediaclient/media/BifManager;->access$700(Lcom/netflix/mediaclient/media/BifManager;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 335
    const/16 v0, 0x400

    new-array v7, v0, [B

    .line 336
    const/4 v0, 0x0

    .line 337
    :goto_7
    sub-int v8, v5, v3

    if-ge v0, v8, :cond_1c

    .line 338
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v2, v7, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 339
    if-lez v8, :cond_1c

    .line 340
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 341
    add-int/2addr v0, v8

    .line 345
    goto :goto_7

    .line 319
    :cond_18
    const-string/jumbo v0, "BifManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index size is higher than maximal positibility "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/BifManager;->access$300(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x7080

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_6

    .line 353
    :catch_2
    move-exception v0

    move-object v3, v4

    .line 354
    :goto_8
    :try_start_7
    iget-object v4, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/media/BifManager;->access$902(Lcom/netflix/mediaclient/media/BifManager;Z)Z

    .line 355
    const-string/jumbo v4, "BifManager"

    const-string/jumbo v5, "Failed downlaod"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 358
    if-eqz v1, :cond_19

    .line 359
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 360
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 362
    :cond_19
    if-eqz v3, :cond_1a

    .line 363
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 365
    :cond_1a
    if-eqz v2, :cond_1b

    .line 366
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 371
    :cond_1b
    :goto_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "bif download complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 346
    :cond_1c
    :try_start_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 347
    const-string/jumbo v3, "BifManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "read "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " bytes"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1d
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/media/BifManager;->access$902(Lcom/netflix/mediaclient/media/BifManager;Z)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 358
    :cond_1e
    if-eqz v1, :cond_1f

    .line 359
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 360
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 362
    :cond_1f
    if-eqz v4, :cond_20

    .line 363
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 365
    :cond_20
    if-eqz v2, :cond_21

    .line 366
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 371
    :cond_21
    :goto_a
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "bif download complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 368
    :catch_3
    move-exception v0

    .line 369
    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "Failed downlaod"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 368
    :catch_4
    move-exception v0

    .line 369
    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "Failed downlaod"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 357
    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    .line 358
    :goto_b
    if-eqz v1, :cond_22

    .line 359
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 360
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 362
    :cond_22
    if-eqz v4, :cond_23

    .line 363
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 365
    :cond_23
    if-eqz v2, :cond_24

    .line 366
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 371
    :cond_24
    :goto_c
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 372
    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "bif download complete"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    throw v0

    .line 368
    :catch_5
    move-exception v1

    .line 369
    const-string/jumbo v2, "BifManager"

    const-string/jumbo v3, "Failed downlaod"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 357
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_b

    .line 353
    :catch_6
    move-exception v0

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_8

    :catch_7
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_8
.end method
