.class public final Lo/aqk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aqm;
.implements Lo/aqo;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field private static final e:[B


# instance fields
.field public a:J

.field public b:Lo/aqs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 55
    fill-array-data v0, :array_0

    sput-object v0, Lo/aqk;->e:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lo/aqs;ILokio/ByteString;II)Z
    .locals 5

    .line 1643
    iget v0, p1, Lo/aqs;->e:I

    .line 1644
    iget-object v1, p1, Lo/aqs;->a:[B

    :goto_0
    if-ge p4, p5, :cond_2

    if-ne p2, v0, :cond_0

    .line 1648
    iget-object p1, p1, Lo/aqs;->h:Lo/aqs;

    .line 1649
    iget-object p2, p1, Lo/aqs;->a:[B

    .line 1650
    iget v0, p1, Lo/aqs;->d:I

    .line 1651
    iget v1, p1, Lo/aqs;->e:I

    move v4, v1

    move-object v1, p2

    move p2, v0

    move v0, v4

    .line 1654
    :cond_0
    aget-byte v2, v1, p2

    invoke-virtual {p3, p4}, Lokio/ByteString;->d(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lo/aqk;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1406
    iget-wide v2, p0, Lo/aqk;->a:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    .line 1408
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lo/aqk;->d(Lo/aqk;J)V

    return-wide p2

    .line 1405
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1404
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)Ljava/lang/String;
    .locals 1

    .line 699
    sget-object v0, Lo/aqx;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lo/aqk;->d(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Lo/aqk;
    .locals 0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/aqk;
    .locals 2

    .line 961
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/aqk;->c(Ljava/lang/String;II)Lo/aqk;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/aqo;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lo/aqk;->c(I)Lo/aqk;

    move-result-object p1

    return-object p1
.end method

.method b(Lo/aql;Z)I
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 582
    iget-object v2, v1, Lo/aqk;->b:Lo/aqs;

    const/4 v3, -0x2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    return v3

    .line 585
    :cond_0
    sget-object v2, Lokio/ByteString;->a:Lokio/ByteString;

    invoke-virtual {v0, v2}, Lo/aql;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 589
    :cond_1
    iget-object v4, v2, Lo/aqs;->a:[B

    .line 590
    iget v5, v2, Lo/aqs;->d:I

    .line 591
    iget v6, v2, Lo/aqs;->e:I

    .line 593
    iget-object v0, v0, Lo/aql;->d:[I

    const/4 v7, 0x0

    const/4 v8, -0x1

    move v9, v5

    move v11, v6

    const/4 v10, -0x1

    move-object v5, v2

    move-object v6, v4

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v12, v4, 0x1

    .line 600
    aget v4, v0, v4

    add-int/lit8 v13, v12, 0x1

    .line 602
    aget v12, v0, v12

    if-eq v12, v8, :cond_2

    move v10, v12

    :cond_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    if-gez v4, :cond_b

    mul-int/lit8 v4, v4, -0x1

    add-int v14, v13, v4

    :goto_1
    add-int/lit8 v4, v9, 0x1

    .line 616
    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v15, v13, 0x1

    .line 617
    aget v13, v0, v13

    if-eq v9, v13, :cond_4

    return v10

    :cond_4
    if-ne v15, v14, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    if-ne v4, v11, :cond_9

    .line 622
    iget-object v4, v5, Lo/aqs;->h:Lo/aqs;

    .line 623
    iget v5, v4, Lo/aqs;->d:I

    .line 624
    iget-object v6, v4, Lo/aqs;->a:[B

    .line 625
    iget v11, v4, Lo/aqs;->e:I

    if-ne v4, v2, :cond_8

    if-nez v9, :cond_7

    :goto_3
    if-eqz p2, :cond_6

    return v3

    :cond_6
    return v10

    :cond_7
    move v4, v5

    move-object v5, v12

    goto :goto_4

    :cond_8
    move/from16 v16, v5

    move-object v5, v4

    move/from16 v4, v16

    :cond_9
    :goto_4
    if-eqz v9, :cond_a

    .line 633
    aget v9, v0, v15

    goto :goto_6

    :cond_a
    move v9, v4

    move v13, v15

    goto :goto_1

    :cond_b
    add-int/lit8 v14, v9, 0x1

    .line 640
    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    add-int v15, v13, v4

    :goto_5
    if-ne v13, v15, :cond_c

    return v10

    .line 645
    :cond_c
    aget v3, v0, v13

    if-ne v9, v3, :cond_10

    add-int/2addr v13, v4

    .line 646
    aget v9, v0, v13

    if-ne v14, v11, :cond_e

    .line 655
    iget-object v3, v5, Lo/aqs;->h:Lo/aqs;

    .line 656
    iget v4, v3, Lo/aqs;->d:I

    .line 657
    iget-object v5, v3, Lo/aqs;->a:[B

    .line 658
    iget v6, v3, Lo/aqs;->e:I

    move v11, v6

    move-object v6, v5

    if-ne v3, v2, :cond_d

    move-object v5, v12

    goto :goto_6

    :cond_d
    move-object v5, v3

    goto :goto_6

    :cond_e
    move v4, v14

    :goto_6
    if-ltz v9, :cond_f

    return v9

    :cond_f
    neg-int v3, v9

    move v9, v4

    move v4, v3

    const/4 v3, -0x2

    goto :goto_0

    :cond_10
    add-int/lit8 v13, v13, 0x1

    const/4 v3, -0x2

    goto :goto_5
.end method

.method public b([BII)I
    .locals 7

    .line 888
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lo/aqx;->d(JJJ)V

    .line 890
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 892
    :cond_0
    iget v1, v0, Lo/aqs;->e:I

    iget v2, v0, Lo/aqs;->d:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 893
    iget-object v1, v0, Lo/aqs;->a:[B

    iget v2, v0, Lo/aqs;->d:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget p1, v0, Lo/aqs;->d:I

    add-int/2addr p1, p3

    iput p1, v0, Lo/aqs;->d:I

    .line 896
    iget-wide p1, p0, Lo/aqk;->a:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lo/aqk;->a:J

    .line 898
    iget p1, v0, Lo/aqs;->d:I

    iget p2, v0, Lo/aqs;->e:I

    if-ne p1, p2, :cond_1

    .line 899
    invoke-virtual {v0}, Lo/aqs;->d()Lo/aqs;

    move-result-object p1

    iput-object p1, p0, Lo/aqk;->b:Lo/aqs;

    .line 900
    invoke-static {v0}, Lo/aqt;->d(Lo/aqs;)V

    :cond_1
    return p3
.end method

.method public b(Lokio/ByteString;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1540
    invoke-virtual {p0, p1, v0, v1}, Lo/aqk;->d(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lokio/ByteString;J)J
    .locals 18

    move-object/from16 v6, p0

    .line 1485
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->b()I

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 1494
    iget-object v2, v6, Lo/aqk;->b:Lo/aqs;

    const-wide/16 v7, -0x1

    if-nez v2, :cond_0

    return-wide v7

    .line 1498
    :cond_0
    iget-wide v3, v6, Lo/aqk;->a:J

    sub-long v9, v3, p2

    cmp-long v5, v9, p2

    if-gez v5, :cond_1

    :goto_0
    cmp-long v0, v3, p2

    if-lez v0, :cond_2

    .line 1502
    iget-object v2, v2, Lo/aqs;->j:Lo/aqs;

    .line 1503
    iget v0, v2, Lo/aqs;->e:I

    iget v1, v2, Lo/aqs;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v3, v0

    goto :goto_0

    :cond_1
    :goto_1
    move-wide v3, v0

    .line 1508
    iget v0, v2, Lo/aqs;->e:I

    iget v1, v2, Lo/aqs;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v3

    cmp-long v5, v0, p2

    if-gez v5, :cond_2

    .line 1509
    iget-object v2, v2, Lo/aqs;->h:Lo/aqs;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move-object/from16 v9, p1

    .line 1517
    invoke-virtual {v9, v0}, Lokio/ByteString;->d(I)B

    move-result v10

    .line 1518
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->b()I

    move-result v11

    .line 1519
    iget-wide v0, v6, Lo/aqk;->a:J

    int-to-long v12, v11

    sub-long/2addr v0, v12

    const-wide/16 v12, 0x1

    add-long/2addr v12, v0

    move-wide/from16 v0, p2

    move-object v5, v2

    move-wide v14, v3

    :goto_2
    cmp-long v2, v14, v12

    if-gez v2, :cond_6

    .line 1522
    iget-object v4, v5, Lo/aqs;->a:[B

    .line 1523
    iget v2, v5, Lo/aqs;->e:I

    int-to-long v2, v2

    iget v7, v5, Lo/aqs;->d:I

    int-to-long v7, v7

    add-long/2addr v7, v12

    sub-long/2addr v7, v14

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v7, v2

    .line 1524
    iget v2, v5, Lo/aqs;->d:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    sub-long/2addr v2, v14

    long-to-int v0, v2

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_5

    .line 1525
    aget-byte v0, v4, v8

    if-ne v0, v10, :cond_3

    add-int/lit8 v2, v8, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    move/from16 v4, v16

    move-object v6, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lo/aqk;->c(Lo/aqs;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1526
    iget v0, v6, Lo/aqs;->d:I

    sub-int/2addr v8, v0

    int-to-long v0, v8

    add-long/2addr v0, v14

    return-wide v0

    :cond_3
    move-object/from16 v17, v4

    move-object v6, v5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move-object v5, v6

    move-object/from16 v4, v17

    move-object/from16 v6, p0

    goto :goto_3

    :cond_5
    move-object v6, v5

    .line 1531
    iget v0, v6, Lo/aqs;->e:I

    iget v1, v6, Lo/aqs;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v14

    .line 1533
    iget-object v5, v6, Lo/aqs;->h:Lo/aqs;

    const-wide/16 v7, -0x1

    move-object/from16 v6, p0

    move-wide v14, v0

    goto :goto_2

    :cond_6
    move-wide v0, v7

    return-wide v0

    .line 1486
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1485
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(I)Lo/aqs;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    .line 1300
    iget-object v1, p0, Lo/aqk;->b:Lo/aqs;

    if-nez v1, :cond_0

    .line 1301
    invoke-static {}, Lo/aqt;->a()Lo/aqs;

    move-result-object p1

    iput-object p1, p0, Lo/aqk;->b:Lo/aqs;

    .line 1302
    iget-object p1, p0, Lo/aqk;->b:Lo/aqs;

    iput-object p1, p1, Lo/aqs;->j:Lo/aqs;

    iput-object p1, p1, Lo/aqs;->h:Lo/aqs;

    return-object p1

    .line 1305
    :cond_0
    iget-object v1, v1, Lo/aqs;->j:Lo/aqs;

    .line 1306
    iget v2, v1, Lo/aqs;->e:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_1

    iget-boolean p1, v1, Lo/aqs;->b:Z

    if-nez p1, :cond_2

    .line 1307
    :cond_1
    invoke-static {}, Lo/aqt;->a()Lo/aqs;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/aqs;->c(Lo/aqs;)Lo/aqs;

    move-result-object v1

    :cond_2
    return-object v1

    .line 1298
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public b([B)V
    .locals 3

    const/4 v0, 0x0

    .line 880
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 881
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lo/aqk;->b([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 882
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 5

    .line 109
    iget-wide v0, p0, Lo/aqk;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(J)Z
    .locals 3

    .line 117
    iget-wide v0, p0, Lo/aqk;->a:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()B
    .locals 9

    .line 288
    iget-wide v0, p0, Lo/aqk;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 290
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    .line 291
    iget v1, v0, Lo/aqs;->d:I

    .line 292
    iget v2, v0, Lo/aqs;->e:I

    .line 294
    iget-object v3, v0, Lo/aqs;->a:[B

    add-int/lit8 v4, v1, 0x1

    .line 295
    aget-byte v1, v3, v1

    .line 296
    iget-wide v5, p0, Lo/aqk;->a:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lo/aqk;->a:J

    if-ne v4, v2, :cond_0

    .line 299
    invoke-virtual {v0}, Lo/aqs;->d()Lo/aqs;

    move-result-object v2

    iput-object v2, p0, Lo/aqk;->b:Lo/aqs;

    .line 300
    invoke-static {v0}, Lo/aqt;->d(Lo/aqs;)V

    goto :goto_0

    .line 302
    :cond_0
    iput v4, v0, Lo/aqs;->d:I

    :goto_0
    return v1

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lokio/ByteString;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1481
    invoke-virtual {p0, p1, v0, v1}, Lo/aqk;->b(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(I)Lo/aqk;
    .locals 4

    const/4 v0, 0x1

    .line 1159
    invoke-virtual {p0, v0}, Lo/aqk;->b(I)Lo/aqs;

    move-result-object v0

    .line 1160
    iget-object v1, v0, Lo/aqs;->a:[B

    iget v2, v0, Lo/aqs;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lo/aqs;->e:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1161
    iget-wide v0, p0, Lo/aqk;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/aqk;->a:J

    return-object p0
.end method

.method public c(Ljava/lang/String;II)Lo/aqk;
    .locals 7

    if-eqz p1, :cond_d

    if-ltz p2, :cond_c

    if-lt p3, p2, :cond_b

    .line 970
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_a

    :goto_0
    if-ge p2, p3, :cond_9

    .line 977
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    const/4 v2, 0x1

    .line 980
    invoke-virtual {p0, v2}, Lo/aqk;->b(I)Lo/aqs;

    move-result-object v2

    .line 981
    iget-object v3, v2, Lo/aqs;->a:[B

    .line 982
    iget v4, v2, Lo/aqs;->e:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 983
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 986
    aput-byte v0, v3, p2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 991
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    .line 993
    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v4, v6

    .line 996
    iget p2, v2, Lo/aqs;->e:I

    sub-int/2addr v4, p2

    .line 997
    iget p2, v2, Lo/aqs;->e:I

    add-int/2addr p2, v4

    iput p2, v2, Lo/aqs;->e:I

    .line 998
    iget-wide v0, p0, Lo/aqk;->a:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/aqk;->a:J

    move p2, v6

    goto :goto_0

    :cond_2
    const/16 v2, 0x800

    if-ge v0, v2, :cond_3

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 1002
    invoke-virtual {p0, v2}, Lo/aqk;->c(I)Lo/aqk;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 1003
    invoke-virtual {p0, v0}, Lo/aqk;->c(I)Lo/aqk;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_8

    const v2, 0xdfff

    if-le v0, v2, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_5

    .line 1016
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    const v6, 0xdbff

    if-gt v0, v6, :cond_7

    const v6, 0xdc00

    if-lt v5, v6, :cond_7

    if-le v5, v2, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 1029
    invoke-virtual {p0, v2}, Lo/aqk;->c(I)Lo/aqk;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 1030
    invoke-virtual {p0, v2}, Lo/aqk;->c(I)Lo/aqk;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 1031
    invoke-virtual {p0, v2}, Lo/aqk;->c(I)Lo/aqk;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 1032
    invoke-virtual {p0, v0}, Lo/aqk;->c(I)Lo/aqk;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    .line 1018
    :cond_7
    :goto_5
    invoke-virtual {p0, v3}, Lo/aqk;->c(I)Lo/aqk;

    move p2, v4

    goto/16 :goto_0

    :cond_8
    :goto_6
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 1008
    invoke-virtual {p0, v2}, Lo/aqk;->c(I)Lo/aqk;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 1009
    invoke-virtual {p0, v2}, Lo/aqk;->c(I)Lo/aqk;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 1010
    invoke-virtual {p0, v0}, Lo/aqk;->c(I)Lo/aqk;

    goto :goto_3

    :cond_9
    return-object p0

    .line 971
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 968
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 966
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 965
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(J)[B
    .locals 6

    .line 864
    iget-wide v0, p0, Lo/aqk;->a:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lo/aqx;->d(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 869
    new-array p1, p2, [B

    .line 870
    invoke-virtual {p0, p1}, Lo/aqk;->b([B)V

    return-object p1

    .line 866
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lo/aqk;->h()Lo/aqk;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final d(J)B
    .locals 6

    .line 310
    iget-wide v0, p0, Lo/aqk;->a:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lo/aqx;->d(JJJ)V

    .line 311
    iget-wide v0, p0, Lo/aqk;->a:J

    sub-long v2, v0, p1

    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    .line 312
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    .line 313
    :goto_0
    iget v1, v0, Lo/aqs;->e:I

    iget v2, v0, Lo/aqs;->d:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 314
    iget-object v1, v0, Lo/aqs;->a:[B

    iget v0, v0, Lo/aqs;->d:I

    long-to-int p2, p1

    add-int/2addr v0, p2

    aget-byte p1, v1, v0

    return p1

    :cond_0
    sub-long/2addr p1, v1

    .line 312
    iget-object v0, v0, Lo/aqs;->h:Lo/aqs;

    goto :goto_0

    :cond_1
    sub-long/2addr p1, v0

    .line 319
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    :cond_2
    iget-object v0, v0, Lo/aqs;->j:Lo/aqs;

    .line 320
    iget v1, v0, Lo/aqs;->e:I

    iget v2, v0, Lo/aqs;->d:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2

    .line 321
    iget-object v1, v0, Lo/aqs;->a:[B

    iget v0, v0, Lo/aqs;->d:I

    long-to-int p2, p1

    add-int/2addr v0, p2

    aget-byte p1, v1, v0

    return p1
.end method

.method public d()I
    .locals 8

    .line 356
    iget-wide v0, p0, Lo/aqk;->a:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 358
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    .line 359
    iget v1, v0, Lo/aqs;->d:I

    .line 360
    iget v4, v0, Lo/aqs;->e:I

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 364
    invoke-virtual {p0}, Lo/aqk;->c()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 365
    invoke-virtual {p0}, Lo/aqk;->c()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 366
    invoke-virtual {p0}, Lo/aqk;->c()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 367
    invoke-virtual {p0}, Lo/aqk;->c()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 370
    :cond_0
    iget-object v5, v0, Lo/aqs;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 371
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 375
    iget-wide v5, p0, Lo/aqk;->a:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lo/aqk;->a:J

    if-ne v7, v4, :cond_1

    .line 378
    invoke-virtual {v0}, Lo/aqs;->d()Lo/aqs;

    move-result-object v2

    iput-object v2, p0, Lo/aqk;->b:Lo/aqs;

    .line 379
    invoke-static {v0}, Lo/aqt;->d(Lo/aqs;)V

    goto :goto_0

    .line 381
    :cond_1
    iput v7, v0, Lo/aqs;->d:I

    :goto_0
    return v1

    .line 356
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lo/aqk;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lokio/ByteString;J)J
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b

    .line 1552
    iget-object v2, p0, Lo/aqk;->b:Lo/aqs;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 1556
    :cond_0
    iget-wide v5, p0, Lo/aqk;->a:J

    sub-long v7, v5, p2

    cmp-long v9, v7, p2

    if-gez v9, :cond_1

    :goto_0
    cmp-long v0, v5, p2

    if-lez v0, :cond_2

    .line 1560
    iget-object v2, v2, Lo/aqs;->j:Lo/aqs;

    .line 1561
    iget v0, v2, Lo/aqs;->e:I

    iget v1, v2, Lo/aqs;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_1
    :goto_1
    move-wide v5, v0

    .line 1566
    iget v0, v2, Lo/aqs;->e:I

    iget v1, v2, Lo/aqs;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v5

    cmp-long v7, v0, p2

    if-gez v7, :cond_2

    .line 1567
    iget-object v2, v2, Lo/aqs;->h:Lo/aqs;

    goto :goto_1

    .line 1576
    :cond_2
    invoke-virtual {p1}, Lokio/ByteString;->b()I

    move-result v0

    const/4 v1, 0x2

    const/4 v7, 0x0

    if-ne v0, v1, :cond_6

    .line 1578
    invoke-virtual {p1, v7}, Lokio/ByteString;->d(I)B

    move-result v0

    const/4 v1, 0x1

    .line 1579
    invoke-virtual {p1, v1}, Lokio/ByteString;->d(I)B

    move-result p1

    .line 1580
    :goto_2
    iget-wide v7, p0, Lo/aqk;->a:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_a

    .line 1581
    iget-object v1, v2, Lo/aqs;->a:[B

    .line 1582
    iget v7, v2, Lo/aqs;->d:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v5

    long-to-int p2, v7

    iget p3, v2, Lo/aqs;->e:I

    :goto_3
    if-ge p2, p3, :cond_5

    .line 1583
    aget-byte v7, v1, p2

    if-eq v7, v0, :cond_4

    if-ne v7, p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1585
    :cond_4
    :goto_4
    iget p1, v2, Lo/aqs;->d:I

    :goto_5
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v5

    return-wide p1

    .line 1590
    :cond_5
    iget p2, v2, Lo/aqs;->e:I

    iget p3, v2, Lo/aqs;->d:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr p2, v5

    .line 1592
    iget-object v2, v2, Lo/aqs;->h:Lo/aqs;

    move-wide v5, p2

    goto :goto_2

    .line 1596
    :cond_6
    invoke-virtual {p1}, Lokio/ByteString;->a()[B

    move-result-object p1

    .line 1597
    :goto_6
    iget-wide v0, p0, Lo/aqk;->a:J

    cmp-long v8, v5, v0

    if-gez v8, :cond_a

    .line 1598
    iget-object v0, v2, Lo/aqs;->a:[B

    .line 1599
    iget v1, v2, Lo/aqs;->d:I

    int-to-long v8, v1

    add-long/2addr v8, p2

    sub-long/2addr v8, v5

    long-to-int p2, v8

    iget p3, v2, Lo/aqs;->e:I

    :goto_7
    if-ge p2, p3, :cond_9

    .line 1600
    aget-byte v1, v0, p2

    .line 1601
    array-length v8, p1

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_8

    aget-byte v10, p1, v9

    if-ne v1, v10, :cond_7

    .line 1602
    iget p1, v2, Lo/aqs;->d:I

    goto :goto_5

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 1607
    :cond_9
    iget p2, v2, Lo/aqs;->e:I

    iget p3, v2, Lo/aqs;->d:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr p2, v5

    .line 1609
    iget-object v2, v2, Lo/aqs;->h:Lo/aqs;

    move-wide v5, p2

    goto :goto_6

    :cond_a
    return-wide v3

    .line 1544
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .line 711
    iget-wide v0, p0, Lo/aqk;->a:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lo/aqx;->d(JJJ)V

    if-eqz p3, :cond_4

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, ""

    return-object p1

    .line 718
    :cond_0
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    .line 719
    iget v1, v0, Lo/aqs;->d:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lo/aqs;->e:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 721
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo/aqk;->c(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 724
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lo/aqs;->a:[B

    iget v3, v0, Lo/aqs;->d:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 725
    iget p3, v0, Lo/aqs;->d:I

    int-to-long v2, p3

    add-long/2addr v2, p1

    long-to-int p3, v2

    iput p3, v0, Lo/aqs;->d:I

    .line 726
    iget-wide v2, p0, Lo/aqk;->a:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lo/aqk;->a:J

    .line 728
    iget p1, v0, Lo/aqs;->d:I

    iget p2, v0, Lo/aqs;->e:I

    if-ne p1, p2, :cond_2

    .line 729
    invoke-virtual {v0}, Lo/aqs;->d()Lo/aqs;

    move-result-object p1

    iput-object p1, p0, Lo/aqk;->b:Lo/aqs;

    .line 730
    invoke-static {v0}, Lo/aqt;->d(Lo/aqs;)V

    :cond_2
    return-object v1

    .line 714
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 712
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(I)Lo/aqk;
    .locals 5

    const/4 v0, 0x4

    .line 1181
    invoke-virtual {p0, v0}, Lo/aqk;->b(I)Lo/aqs;

    move-result-object v0

    .line 1182
    iget-object v1, v0, Lo/aqs;->a:[B

    .line 1183
    iget v2, v0, Lo/aqs;->e:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1184
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1185
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1186
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1187
    aput-byte p1, v1, v3

    .line 1188
    iput v2, v0, Lo/aqs;->e:I

    .line 1189
    iget-wide v0, p0, Lo/aqk;->a:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/aqk;->a:J

    return-object p0
.end method

.method public synthetic d(Ljava/lang/String;II)Lo/aqo;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lo/aqk;->c(Ljava/lang/String;II)Lo/aqk;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/aqk;J)V
    .locals 6

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_6

    .line 1365
    iget-wide v0, p1, Lo/aqk;->a:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lo/aqx;->d(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_5

    .line 1369
    iget-object v0, p1, Lo/aqk;->b:Lo/aqs;

    iget v0, v0, Lo/aqs;->e:I

    iget-object v1, p1, Lo/aqk;->b:Lo/aqs;

    iget v1, v1, Lo/aqs;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gez v2, :cond_3

    .line 1370
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/aqs;->j:Lo/aqs;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1371
    iget-boolean v1, v0, Lo/aqs;->b:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lo/aqs;->e:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lo/aqs;->c:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 1372
    :cond_1
    iget v3, v0, Lo/aqs;->d:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 1374
    iget-object v1, p1, Lo/aqk;->b:Lo/aqs;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lo/aqs;->d(Lo/aqs;I)V

    .line 1375
    iget-wide v0, p1, Lo/aqk;->a:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lo/aqk;->a:J

    .line 1376
    iget-wide v0, p0, Lo/aqk;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lo/aqk;->a:J

    return-void

    .line 1381
    :cond_2
    iget-object v0, p1, Lo/aqk;->b:Lo/aqs;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lo/aqs;->d(I)Lo/aqs;

    move-result-object v0

    iput-object v0, p1, Lo/aqk;->b:Lo/aqs;

    .line 1386
    :cond_3
    iget-object v0, p1, Lo/aqk;->b:Lo/aqs;

    .line 1387
    iget v1, v0, Lo/aqs;->e:I

    iget v2, v0, Lo/aqs;->d:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1388
    invoke-virtual {v0}, Lo/aqs;->d()Lo/aqs;

    move-result-object v3

    iput-object v3, p1, Lo/aqk;->b:Lo/aqs;

    .line 1389
    iget-object v3, p0, Lo/aqk;->b:Lo/aqs;

    if-nez v3, :cond_4

    .line 1390
    iput-object v0, p0, Lo/aqk;->b:Lo/aqs;

    .line 1391
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    iput-object v0, v0, Lo/aqs;->j:Lo/aqs;

    iput-object v0, v0, Lo/aqs;->h:Lo/aqs;

    goto :goto_3

    .line 1393
    :cond_4
    iget-object v3, v3, Lo/aqs;->j:Lo/aqs;

    .line 1394
    invoke-virtual {v3, v0}, Lo/aqs;->c(Lo/aqs;)Lo/aqs;

    move-result-object v0

    .line 1395
    invoke-virtual {v0}, Lo/aqs;->a()V

    .line 1397
    :goto_3
    iget-wide v3, p1, Lo/aqk;->a:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lo/aqk;->a:J

    .line 1398
    iget-wide v3, p0, Lo/aqk;->a:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lo/aqk;->a:J

    sub-long/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void

    .line 1364
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1363
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lo/aql;)I
    .locals 3

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, p1, v0}, Lo/aqk;->b(Lo/aql;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 560
    :cond_0
    iget-object p1, p1, Lo/aql;->e:[Lokio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->b()I

    move-result p1

    int-to-long v1, p1

    .line 562
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lo/aqk;->e(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 564
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final e()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lo/aqk;->a:J

    return-wide v0
.end method

.method public synthetic e(Ljava/lang/String;)Lo/aqo;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lo/aqk;->a(Ljava/lang/String;)Lo/aqk;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)Lokio/ByteString;
    .locals 1

    if-nez p1, :cond_0

    .line 1838
    sget-object p1, Lokio/ByteString;->a:Lokio/ByteString;

    return-object p1

    .line 1839
    :cond_0
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lo/aqk;I)V

    return-object v0
.end method

.method public e(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 939
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    if-eqz v0, :cond_1

    .line 941
    iget v0, v0, Lo/aqs;->e:I

    iget-object v1, p0, Lo/aqk;->b:Lo/aqs;

    iget v1, v1, Lo/aqs;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 942
    iget-wide v2, p0, Lo/aqk;->a:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lo/aqk;->a:J

    sub-long/2addr p1, v4

    .line 944
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    iget v2, v0, Lo/aqs;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Lo/aqs;->d:I

    .line 946
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    iget v0, v0, Lo/aqs;->d:I

    iget-object v1, p0, Lo/aqk;->b:Lo/aqs;

    iget v1, v1, Lo/aqs;->e:I

    if-ne v0, v1, :cond_0

    .line 947
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    .line 948
    invoke-virtual {v0}, Lo/aqs;->d()Lo/aqs;

    move-result-object v1

    iput-object v1, p0, Lo/aqk;->b:Lo/aqs;

    .line 949
    invoke-static {v0}, Lo/aqt;->d(Lo/aqs;)V

    goto :goto_0

    .line 939
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1760
    :cond_0
    instance-of v1, p1, Lo/aqk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1761
    :cond_1
    check-cast p1, Lo/aqk;

    .line 1762
    iget-wide v3, p0, Lo/aqk;->a:J

    iget-wide v5, p1, Lo/aqk;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    .line 1765
    :cond_3
    iget-object v1, p0, Lo/aqk;->b:Lo/aqs;

    .line 1766
    iget-object p1, p1, Lo/aqk;->b:Lo/aqs;

    .line 1767
    iget v3, v1, Lo/aqs;->d:I

    .line 1768
    iget v4, p1, Lo/aqs;->d:I

    .line 1770
    :goto_0
    iget-wide v7, p0, Lo/aqk;->a:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    .line 1771
    iget v7, v1, Lo/aqs;->e:I

    sub-int/2addr v7, v3

    iget v8, p1, Lo/aqs;->e:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    int-to-long v10, v3

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    .line 1774
    iget-object v10, v1, Lo/aqs;->a:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Lo/aqs;->a:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_1

    .line 1777
    :cond_5
    iget v3, v1, Lo/aqs;->e:I

    if-ne v4, v3, :cond_6

    .line 1778
    iget-object v1, v1, Lo/aqs;->h:Lo/aqs;

    .line 1779
    iget v3, v1, Lo/aqs;->d:I

    goto :goto_2

    :cond_6
    move v3, v4

    .line 1782
    :goto_2
    iget v4, p1, Lo/aqs;->e:I

    if-ne v9, v4, :cond_7

    .line 1783
    iget-object p1, p1, Lo/aqs;->h:Lo/aqs;

    .line 1784
    iget v4, p1, Lo/aqs;->d:I

    goto :goto_3

    :cond_7
    move v4, v9

    :goto_3
    add-long/2addr v5, v7

    goto :goto_0

    :cond_8
    return v0
.end method

.method public f()Lokio/ByteString;
    .locals 2

    .line 548
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lo/aqk;->i()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 692
    :try_start_0
    iget-wide v0, p0, Lo/aqk;->a:J

    sget-object v2, Lo/aqx;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lo/aqk;->d(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 694
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public h()Lo/aqk;
    .locals 6

    .line 1814
    new-instance v0, Lo/aqk;

    invoke-direct {v0}, Lo/aqk;-><init>()V

    .line 1815
    iget-wide v1, p0, Lo/aqk;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 1817
    :cond_0
    iget-object v1, p0, Lo/aqk;->b:Lo/aqs;

    invoke-virtual {v1}, Lo/aqs;->c()Lo/aqs;

    move-result-object v1

    iput-object v1, v0, Lo/aqk;->b:Lo/aqs;

    .line 1818
    iget-object v1, v0, Lo/aqk;->b:Lo/aqs;

    iput-object v1, v1, Lo/aqs;->j:Lo/aqs;

    iput-object v1, v1, Lo/aqs;->h:Lo/aqs;

    .line 1819
    iget-object v1, p0, Lo/aqk;->b:Lo/aqs;

    :goto_0
    iget-object v1, v1, Lo/aqs;->h:Lo/aqs;

    iget-object v2, p0, Lo/aqk;->b:Lo/aqs;

    if-eq v1, v2, :cond_1

    .line 1820
    iget-object v2, v0, Lo/aqk;->b:Lo/aqs;

    iget-object v2, v2, Lo/aqs;->j:Lo/aqs;

    invoke-virtual {v1}, Lo/aqs;->c()Lo/aqs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/aqs;->c(Lo/aqs;)Lo/aqs;

    goto :goto_0

    .line 1822
    :cond_1
    iget-wide v1, p0, Lo/aqk;->a:J

    iput-wide v1, v0, Lo/aqk;->a:J

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1792
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1796
    :cond_1
    iget v2, v0, Lo/aqs;->d:I

    iget v3, v0, Lo/aqs;->e:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1797
    iget-object v4, v0, Lo/aqs;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1799
    :cond_2
    iget-object v0, v0, Lo/aqs;->h:Lo/aqs;

    .line 1800
    iget-object v2, p0, Lo/aqk;->b:Lo/aqs;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public i()[B
    .locals 2

    .line 857
    :try_start_0
    iget-wide v0, p0, Lo/aqk;->a:J

    invoke-virtual {p0, v0, v1}, Lo/aqk;->c(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 859
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()V
    .locals 2

    .line 930
    :try_start_0
    iget-wide v0, p0, Lo/aqk;->a:J

    invoke-virtual {p0, v0, v1}, Lo/aqk;->e(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 932
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final l()Lokio/ByteString;
    .locals 5

    .line 1828
    iget-wide v0, p0, Lo/aqk;->a:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    .line 1831
    invoke-virtual {p0, v1}, Lo/aqk;->e(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 1829
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lo/aqk;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 907
    iget-object v0, p0, Lo/aqk;->b:Lo/aqs;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 910
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lo/aqs;->e:I

    iget v3, v0, Lo/aqs;->d:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 911
    iget-object v2, v0, Lo/aqs;->a:[B

    iget v3, v0, Lo/aqs;->d:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 913
    iget p1, v0, Lo/aqs;->d:I

    add-int/2addr p1, v1

    iput p1, v0, Lo/aqs;->d:I

    .line 914
    iget-wide v2, p0, Lo/aqk;->a:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lo/aqk;->a:J

    .line 916
    iget p1, v0, Lo/aqs;->d:I

    iget v2, v0, Lo/aqs;->e:I

    if-ne p1, v2, :cond_1

    .line 917
    invoke-virtual {v0}, Lo/aqs;->d()Lo/aqs;

    move-result-object p1

    iput-object p1, p0, Lo/aqk;->b:Lo/aqs;

    .line 918
    invoke-static {v0}, Lo/aqt;->d(Lo/aqs;)V

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1809
    invoke-virtual {p0}, Lo/aqk;->l()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6

    if-eqz p1, :cond_1

    .line 1124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 1127
    invoke-virtual {p0, v2}, Lo/aqk;->b(I)Lo/aqs;

    move-result-object v2

    .line 1129
    iget v3, v2, Lo/aqs;->e:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1130
    iget-object v4, v2, Lo/aqs;->a:[B

    iget v5, v2, Lo/aqs;->e:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 1133
    iget v4, v2, Lo/aqs;->e:I

    add-int/2addr v4, v3

    iput v4, v2, Lo/aqs;->e:I

    goto :goto_0

    .line 1136
    :cond_0
    iget-wide v1, p0, Lo/aqk;->a:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/aqk;->a:J

    return v0

    .line 1122
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
