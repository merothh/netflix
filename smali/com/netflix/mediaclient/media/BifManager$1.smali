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

    iput-object p1, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$000(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/BifManager;->access$100(Lcom/netflix/mediaclient/media/BifManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x40

    :try_start_2
    new-array v0, v0, [B

    const/4 v3, 0x0

    const/16 v5, 0x40

    invoke-virtual {v2, v0, v3, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_4

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

    :cond_4
    const/16 v5, 0x40

    if-ge v3, v5, :cond_8

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_7
    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "bif download complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "Failed downlaod"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_8
    :try_start_4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/media/BifManager;->access$202(Lcom/netflix/mediaclient/media/BifManager;I)I

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/media/BifManager;->access$302(Lcom/netflix/mediaclient/media/BifManager;I)I

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/media/BifManager;->access$402(Lcom/netflix/mediaclient/media/BifManager;I)I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_9

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

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$300(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v3, v0, 0x8

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    add-int/lit8 v5, v3, 0x40

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/media/BifManager;->access$502(Lcom/netflix/mediaclient/media/BifManager;I)I

    new-array v7, v3, [B

    const/4 v0, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_a

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

    :goto_3
    if-ge v5, v3, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$100(Lcom/netflix/mediaclient/media/BifManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v3, "stopped"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    move v3, v0

    :goto_4
    if-ge v3, v5, :cond_15

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    const/4 v9, -0x1

    if-ne v0, v9, :cond_c

    const v0, 0x7fffffff

    :cond_c
    iget-object v9, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v9}, Lcom/netflix/mediaclient/media/BifManager;->access$600(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/SortedMap;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v0, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x8

    move v3, v0

    goto :goto_4

    :cond_d
    const/16 v0, 0x400

    sub-int v8, v3, v5

    const/16 v9, 0x400

    if-ge v8, v9, :cond_e

    sub-int v0, v3, v5

    :cond_e
    invoke-virtual {v2, v7, v5, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    if-eq v8, v0, :cond_f

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v9

    if-eqz v9, :cond_f

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

    :cond_f
    if-gtz v8, :cond_13

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_12
    :goto_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "bif download complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "Failed downlaod"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_13
    add-int v0, v5, v8

    move v5, v0

    goto/16 :goto_3

    :cond_14
    :try_start_6
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$300(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    if-gtz v0, :cond_18

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

    :cond_15
    :goto_6
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$600(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

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

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_16

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

    :cond_16
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$500(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    if-le v3, v0, :cond_17

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BifManager;->access$500(Lcom/netflix/mediaclient/media/BifManager;)I

    move-result v0

    sub-int v0, v3, v0

    int-to-long v8, v0

    invoke-virtual {v2, v8, v9}, Ljava/io/BufferedInputStream;->skip(J)J

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

    const/16 v0, 0x400

    new-array v7, v0, [B

    const/4 v0, 0x0

    :goto_7
    sub-int v8, v5, v3

    if-ge v0, v8, :cond_1c

    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v2, v7, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_1c

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v0, v8

    goto :goto_7

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

    :catch_2
    move-exception v0

    move-object v3, v4

    :goto_8
    :try_start_7
    iget-object v4, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/media/BifManager;->access$902(Lcom/netflix/mediaclient/media/BifManager;Z)Z

    const-string/jumbo v4, "BifManager"

    const-string/jumbo v5, "Failed downlaod"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_19

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_19
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1a
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_1b
    :goto_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "bif download complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1c
    :try_start_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1d

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

    :cond_1d
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager$1;->this$0:Lcom/netflix/mediaclient/media/BifManager;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/media/BifManager;->access$902(Lcom/netflix/mediaclient/media/BifManager;Z)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_1e
    if-eqz v1, :cond_1f

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_20
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_21
    :goto_a
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "bif download complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "Failed downlaod"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_4
    move-exception v0

    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "Failed downlaod"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    :goto_b
    if-eqz v1, :cond_22

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_22
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_23
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_24
    :goto_c
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "bif download complete"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    throw v0

    :catch_5
    move-exception v1

    const-string/jumbo v2, "BifManager"

    const-string/jumbo v3, "Failed downlaod"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

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
