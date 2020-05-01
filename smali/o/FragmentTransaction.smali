.class public Lo/FragmentTransaction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ContextImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FragmentTransaction$TaskDescription;,
        Lo/FragmentTransaction$ActionBar;
    }
.end annotation


# instance fields
.field private final a:I

.field private c:J

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/FragmentTransaction$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/high16 v0, 0x500000

    .line 83
    invoke-direct {p0, p1, v0}, Lo/FragmentTransaction;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lo/FragmentTransaction;->d:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lo/FragmentTransaction;->c:J

    .line 73
    iput-object p1, p0, Lo/FragmentTransaction;->e:Ljava/io/File;

    .line 74
    iput p2, p0, Lo/FragmentTransaction;->a:I

    return-void
.end method

.method private a(I)V
    .locals 6

    .line 257
    iget-wide v0, p0, Lo/FragmentTransaction;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p1, p0, Lo/FragmentTransaction;->a:I

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 268
    iget-object p1, p0, Lo/FragmentTransaction;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 269
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FragmentTransaction$ActionBar;

    .line 272
    iget-object v1, v0, Lo/FragmentTransaction$ActionBar;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lo/FragmentTransaction;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    iget-wide v4, p0, Lo/FragmentTransaction;->c:J

    iget-wide v0, v0, Lo/FragmentTransaction$ActionBar;->c:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lo/FragmentTransaction;->c:J

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 276
    iget-object v5, v0, Lo/FragmentTransaction$ActionBar;->e:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget-object v0, v0, Lo/FragmentTransaction$ActionBar;->e:Ljava/lang/String;

    .line 277
    invoke-direct {p0, v0}, Lo/FragmentTransaction;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    .line 276
    invoke-static {v0, v1}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 282
    iget-wide v0, p0, Lo/FragmentTransaction;->c:J

    add-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lo/FragmentTransaction;->a:I

    int-to-float v1, v1

    const v4, 0x3f666666    # 0.9f

    mul-float v1, v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_3
    return-void
.end method

.method private static a(Ljava/io/InputStream;I)[B
    .locals 4

    .line 323
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    .line 326
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    return-object v0

    .line 330
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, read "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 240
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;Lo/FragmentTransaction$ActionBar;)V
    .locals 7

    .line 299
    iget-object v0, p0, Lo/FragmentTransaction;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-wide v0, p0, Lo/FragmentTransaction;->c:J

    iget-wide v2, p2, Lo/FragmentTransaction$ActionBar;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/FragmentTransaction;->c:J

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lo/FragmentTransaction;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FragmentTransaction$ActionBar;

    .line 303
    iget-wide v1, p0, Lo/FragmentTransaction;->c:J

    iget-wide v3, p2, Lo/FragmentTransaction$ActionBar;->c:J

    iget-wide v5, v0, Lo/FragmentTransaction$ActionBar;->c:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/FragmentTransaction;->c:J

    .line 305
    :goto_0
    iget-object v0, p0, Lo/FragmentTransaction;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    .line 312
    iget-object v0, p0, Lo/FragmentTransaction;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FragmentTransaction$ActionBar;

    if-eqz v0, :cond_0

    .line 314
    iget-wide v1, p0, Lo/FragmentTransaction;->c:J

    iget-wide v3, v0, Lo/FragmentTransaction$ActionBar;->c:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lo/FragmentTransaction;->c:J

    .line 315
    iget-object v0, p0, Lo/FragmentTransaction;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lo/ContextImpl$StateListAnimator;
    .locals 10

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lo/FragmentTransaction;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FragmentTransaction$ActionBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    monitor-exit p0

    return-object v1

    .line 113
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lo/FragmentTransaction;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 116
    :try_start_2
    new-instance v5, Lo/FragmentTransaction$TaskDescription;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, v1}, Lo/FragmentTransaction$TaskDescription;-><init>(Ljava/io/InputStream;Lo/FragmentTransaction$3;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :try_start_3
    invoke-static {v5}, Lo/FragmentTransaction$ActionBar;->a(Ljava/io/InputStream;)Lo/FragmentTransaction$ActionBar;

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v5}, Lo/FragmentTransaction$TaskDescription;->a(Lo/FragmentTransaction$TaskDescription;)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    long-to-int v7, v6

    if-gtz v7, :cond_1

    const-string v0, "file removed from cache %s"

    new-array v6, v3, [Ljava/lang/Object;

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0, p1}, Lo/FragmentTransaction;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    :try_start_4
    invoke-virtual {v5}, Lo/FragmentTransaction$TaskDescription;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 122
    monitor-exit p0

    return-object v1

    .line 135
    :catch_0
    monitor-exit p0

    return-object v1

    .line 124
    :cond_1
    :try_start_5
    invoke-static {v5, v7}, Lo/FragmentTransaction;->a(Ljava/io/InputStream;I)[B

    move-result-object v6

    .line 125
    invoke-virtual {v0, v6}, Lo/FragmentTransaction$ActionBar;->e([B)Lo/ContextImpl$StateListAnimator;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 133
    :try_start_6
    invoke-virtual {v5}, Lo/FragmentTransaction$TaskDescription;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 125
    monitor-exit p0

    return-object p1

    .line 135
    :catch_1
    monitor-exit p0

    return-object v1

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v5, v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v5, v1

    :goto_0
    :try_start_7
    const-string v6, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0, p1}, Lo/FragmentTransaction;->d(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_2

    .line 133
    :try_start_8
    invoke-virtual {v5}, Lo/FragmentTransaction$TaskDescription;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    .line 135
    :catch_4
    monitor-exit p0

    return-object v1

    .line 129
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v5, :cond_3

    .line 133
    :try_start_9
    invoke-virtual {v5}, Lo/FragmentTransaction$TaskDescription;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 135
    :catch_5
    monitor-exit p0

    return-object v1

    .line 138
    :cond_3
    :goto_3
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 249
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/FragmentTransaction;->e:Ljava/io/File;

    invoke-direct {p0, p1}, Lo/FragmentTransaction;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized c()V
    .locals 8

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lo/FragmentTransaction;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lo/FragmentTransaction;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to create cache dir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 149
    iget-object v3, p0, Lo/FragmentTransaction;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lo/FragmentTransaction;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_2

    .line 156
    monitor-exit p0

    return-void

    .line 158
    :cond_2
    :try_start_2
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v4, 0x0

    .line 161
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :try_start_4
    invoke-static {v5}, Lo/FragmentTransaction$ActionBar;->a(Ljava/io/InputStream;)Lo/FragmentTransaction$ActionBar;

    move-result-object v4

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v4, Lo/FragmentTransaction$ActionBar;->c:J

    .line 164
    iget-object v6, v4, Lo/FragmentTransaction$ActionBar;->e:Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lo/FragmentTransaction;->d(Ljava/lang/String;Lo/FragmentTransaction$ActionBar;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object v4, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v4

    goto :goto_2

    :catch_1
    nop

    :goto_1
    if-eqz v3, :cond_4

    .line 167
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :goto_2
    if-eqz v5, :cond_3

    .line 172
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 175
    :catch_2
    :cond_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 172
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catch_3
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_6
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 225
    :try_start_0
    invoke-virtual {p0, p1}, Lo/FragmentTransaction;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 226
    invoke-direct {p0, p1}, Lo/FragmentTransaction;->e(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 229
    invoke-direct {p0, p1}, Lo/FragmentTransaction;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 228
    invoke-static {v0, v1}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;Lo/ContextImpl$StateListAnimator;)V
    .locals 3

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p2, Lo/ContextImpl$StateListAnimator;->a:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lo/FragmentTransaction;->a(I)V

    .line 203
    invoke-virtual {p0, p1}, Lo/FragmentTransaction;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 206
    new-instance v2, Lo/FragmentTransaction$ActionBar;

    invoke-direct {v2, p1, p2}, Lo/FragmentTransaction$ActionBar;-><init>(Ljava/lang/String;Lo/ContextImpl$StateListAnimator;)V

    .line 207
    invoke-virtual {v2, v1}, Lo/FragmentTransaction$ActionBar;->a(Ljava/io/OutputStream;)Z

    .line 208
    iget-object p2, p2, Lo/ContextImpl$StateListAnimator;->a:[B

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 209
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 210
    invoke-direct {p0, p1, v2}, Lo/FragmentTransaction;->d(Ljava/lang/String;Lo/FragmentTransaction$ActionBar;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 214
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Could not clean up file %s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
