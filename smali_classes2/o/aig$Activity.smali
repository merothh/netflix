.class Lo/aig$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aig$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/aig$5;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lo/aig$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 2

    .line 134
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 135
    new-instance v1, Lo/ahl;

    invoke-direct {v1, v0}, Lo/ahl;-><init>(Ljava/io/OutputStream;)V

    .line 137
    :try_start_0
    invoke-virtual {v1, p1}, Lo/ahl;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {v1}, Lo/ahl;->close()V

    .line 141
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 139
    invoke-virtual {v1}, Lo/ahl;->close()V

    .line 140
    throw p1
.end method

.method public b([BI)[B
    .locals 6

    .line 149
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 150
    new-instance v1, Lo/ahi;

    invoke-direct {v1, v0}, Lo/ahi;-><init>(Ljava/io/InputStream;)V

    .line 152
    :try_start_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 153
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 154
    :goto_0
    array-length v3, v0

    if-lez v3, :cond_2

    .line 156
    invoke-virtual {v1, v0}, Lo/ahi;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, v3

    array-length v5, p1

    mul-int v5, v5, p2

    if-gt v4, v5, :cond_1

    const/4 v4, 0x0

    .line 164
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 161
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deflate ratio "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " exceeded. Aborting uncompression."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v1}, Lo/ahi;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lo/ahi;->close()V

    .line 169
    throw p1
.end method
