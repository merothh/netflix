.class public Lo/adl$TaskDescription;
.super Ljava/io/FilterOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:I

.field private b:[B

.field private c:I

.field private d:I

.field private e:Z

.field private f:[B

.field private g:I

.field private h:Z

.field private i:Z

.field private j:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .line 1443
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    and-int/lit8 p1, p2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1444
    :goto_0
    iput-boolean p1, p0, Lo/adl$TaskDescription;->i:Z

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1445
    :goto_1
    iput-boolean v0, p0, Lo/adl$TaskDescription;->e:Z

    .line 1446
    iget-boolean p1, p0, Lo/adl$TaskDescription;->e:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_2

    :cond_2
    const/4 p1, 0x4

    :goto_2
    iput p1, p0, Lo/adl$TaskDescription;->a:I

    .line 1447
    iget p1, p0, Lo/adl$TaskDescription;->a:I

    new-array p1, p1, [B

    iput-object p1, p0, Lo/adl$TaskDescription;->b:[B

    .line 1448
    iput v1, p0, Lo/adl$TaskDescription;->c:I

    .line 1449
    iput v1, p0, Lo/adl$TaskDescription;->d:I

    .line 1450
    iput-boolean v1, p0, Lo/adl$TaskDescription;->h:Z

    new-array p1, v0, [B

    .line 1451
    iput-object p1, p0, Lo/adl$TaskDescription;->j:[B

    .line 1452
    iput p2, p0, Lo/adl$TaskDescription;->g:I

    .line 1453
    invoke-static {p2}, Lo/adl;->c(I)[B

    move-result-object p1

    iput-object p1, p0, Lo/adl$TaskDescription;->f:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1534
    iget v0, p0, Lo/adl$TaskDescription;->c:I

    if-lez v0, :cond_1

    .line 1535
    iget-boolean v0, p0, Lo/adl$TaskDescription;->e:Z

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lo/adl$TaskDescription;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lo/adl$TaskDescription;->j:[B

    iget-object v2, p0, Lo/adl$TaskDescription;->b:[B

    iget v3, p0, Lo/adl$TaskDescription;->c:I

    iget v4, p0, Lo/adl$TaskDescription;->g:I

    invoke-static {v1, v2, v3, v4}, Lo/adl;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 1537
    iput v0, p0, Lo/adl$TaskDescription;->c:I

    goto :goto_0

    .line 1539
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1551
    invoke-virtual {p0}, Lo/adl$TaskDescription;->a()V

    .line 1555
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    const/4 v0, 0x0

    .line 1557
    iput-object v0, p0, Lo/adl$TaskDescription;->b:[B

    .line 1558
    iput-object v0, p0, Lo/adl$TaskDescription;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public write(I)V
    .locals 5

    .line 1471
    iget-boolean v0, p0, Lo/adl$TaskDescription;->h:Z

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lo/adl$TaskDescription;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 1476
    :cond_0
    iget-boolean v0, p0, Lo/adl$TaskDescription;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1477
    iget-object v0, p0, Lo/adl$TaskDescription;->b:[B

    iget v2, p0, Lo/adl$TaskDescription;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/adl$TaskDescription;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 1478
    iget p1, p0, Lo/adl$TaskDescription;->c:I

    iget v0, p0, Lo/adl$TaskDescription;->a:I

    if-lt p1, v0, :cond_4

    .line 1480
    iget-object p1, p0, Lo/adl$TaskDescription;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lo/adl$TaskDescription;->j:[B

    iget-object v2, p0, Lo/adl$TaskDescription;->b:[B

    iget v3, p0, Lo/adl$TaskDescription;->a:I

    iget v4, p0, Lo/adl$TaskDescription;->g:I

    invoke-static {v0, v2, v3, v4}, Lo/adl;->a([B[BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1482
    iget p1, p0, Lo/adl$TaskDescription;->d:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/adl$TaskDescription;->d:I

    .line 1483
    iget-boolean p1, p0, Lo/adl$TaskDescription;->i:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lo/adl$TaskDescription;->d:I

    const/16 v0, 0x4c

    if-lt p1, v0, :cond_1

    .line 1484
    iget-object p1, p0, Lo/adl$TaskDescription;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1485
    iput v1, p0, Lo/adl$TaskDescription;->d:I

    .line 1488
    :cond_1
    iput v1, p0, Lo/adl$TaskDescription;->c:I

    goto :goto_0

    .line 1492
    :cond_2
    iget-object v0, p0, Lo/adl$TaskDescription;->f:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v3, v0, v2

    const/4 v4, -0x5

    if-le v3, v4, :cond_3

    .line 1493
    iget-object v0, p0, Lo/adl$TaskDescription;->b:[B

    iget v2, p0, Lo/adl$TaskDescription;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/adl$TaskDescription;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 1494
    iget p1, p0, Lo/adl$TaskDescription;->c:I

    iget v2, p0, Lo/adl$TaskDescription;->a:I

    if-lt p1, v2, :cond_4

    .line 1496
    iget-object p1, p0, Lo/adl$TaskDescription;->j:[B

    iget v2, p0, Lo/adl$TaskDescription;->g:I

    invoke-static {v0, v1, p1, v1, v2}, Lo/adl;->e([BI[BII)I

    move-result p1

    .line 1497
    iget-object v0, p0, Lo/adl$TaskDescription;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lo/adl$TaskDescription;->j:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 1498
    iput v1, p0, Lo/adl$TaskDescription;->c:I

    goto :goto_0

    .line 1500
    :cond_3
    aget-byte p1, v0, v2

    if-ne p1, v4, :cond_5

    :cond_4
    :goto_0
    return-void

    .line 1501
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid character in Base64 data."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 2

    .line 1517
    iget-boolean v0, p0, Lo/adl$TaskDescription;->h:Z

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lo/adl$TaskDescription;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 1523
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lo/adl$TaskDescription;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
