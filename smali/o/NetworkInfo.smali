.class public Lo/NetworkInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static l:[B = null

.field private static p:Ljava/lang/Object; = null

.field private static q:Ljava/lang/Object; = null

.field private static r:B = 0x0t

.field public static s:[B = null

.field private static t:J = 0x0L

.field private static v:I = 0x1

.field private static final w:[B

.field private static x:I

.field private static y:I


# direct methods
.method private static $$c(SII)Ljava/lang/String;
    .locals 9

    :try_start_0
    sget v0, Lo/NetworkInfo;->v:I

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sput v2, Lo/NetworkInfo;->x:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    rem-int/lit8 v0, v0, 0x2
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 p2, p2, 0x29

    and-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v1

    add-int/2addr v0, p0

    neg-int p0, p1

    or-int/lit16 p1, p0, 0x33b

    shl-int/2addr p1, v1

    xor-int/lit16 p0, p0, 0x33b

    sub-int/2addr p1, p0

    sget p0, Lo/NetworkInfo;->x:I

    or-int/lit8 v2, p0, 0x1f

    shl-int/2addr v2, v1

    xor-int/lit8 p0, p0, 0x1f

    sub-int/2addr v2, p0

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lo/NetworkInfo;->v:I

    rem-int/lit8 v2, v2, 0x2

    :try_start_3
    sget-object p0, Lo/NetworkInfo;->w:[B

    new-array v2, v0, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    sget p2, Lo/NetworkInfo;->x:I

    xor-int/lit8 v4, p2, 0x63

    and-int/lit8 p2, p2, 0x63

    shl-int/2addr p2, v1

    add-int/2addr v4, p2

    rem-int/lit16 p2, v4, 0x80

    sput p2, Lo/NetworkInfo;->v:I

    rem-int/lit8 v4, v4, 0x2

    const/16 p2, 0x4f

    if-nez v4, :cond_1

    const/16 v4, 0x4f

    goto :goto_1

    :cond_1
    const/16 v4, 0x36

    :goto_1
    if-eq v4, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x3

    :try_start_4
    div-int/2addr p2, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    sget p2, Lo/NetworkInfo;->x:I

    or-int/lit8 v4, p2, 0x43

    shl-int/2addr v4, v1

    xor-int/lit8 p2, p2, 0x43

    sub-int/2addr v4, p2

    rem-int/lit16 p2, v4, 0x80

    sput p2, Lo/NetworkInfo;->v:I

    rem-int/lit8 v4, v4, 0x2

    move p2, p1

    move-object v4, v2

    const/4 v5, 0x0

    move v2, v0

    move-object v0, p0

    move p0, v2

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    move v4, p1

    move p1, p2

    move-object p2, p0

    const/4 p0, 0x0

    :goto_3
    int-to-byte v5, p1

    aput-byte v5, v2, p0

    or-int/lit8 v5, p0, 0x1

    shl-int/2addr v5, v1

    xor-int/2addr p0, v1

    sub-int/2addr v5, p0

    sget p0, Lo/NetworkInfo;->v:I

    or-int/lit8 v6, p0, 0x65

    shl-int/2addr v6, v1

    xor-int/lit8 p0, p0, 0x65

    sub-int/2addr v6, p0

    rem-int/lit16 p0, v6, 0x80

    sput p0, Lo/NetworkInfo;->x:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    if-eqz p0, :cond_5

    const/4 p0, 0x0

    :try_start_5
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v5, v0, :cond_8

    goto :goto_5

    :catchall_1
    move-exception p0

    throw p0

    :cond_5
    if-ne v5, v0, :cond_8

    :goto_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lo/NetworkInfo;->v:I

    and-int/lit8 p2, p1, 0x39

    or-int/lit8 p1, p1, 0x39

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lo/NetworkInfo;->x:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_7

    const/16 p1, 0x1c

    :try_start_6
    div-int/2addr p1, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object p0

    :catchall_2
    move-exception p0

    throw p0

    :cond_7
    return-object p0

    :cond_8
    aget-byte p0, p2, v4

    sget v6, Lo/NetworkInfo;->v:I

    add-int/lit8 v6, v6, 0x1d

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lo/NetworkInfo;->x:I

    rem-int/lit8 v6, v6, 0x2

    move-object v8, p2

    move p2, p1

    move p1, v4

    move-object v4, v2

    move v2, v0

    move-object v0, v8

    :goto_7
    or-int/lit8 v6, p1, 0x1

    shl-int/2addr v6, v1

    xor-int/2addr p1, v1

    sub-int p1, v6, p1

    not-int p0, p0

    sub-int/2addr p2, p0

    sub-int/2addr p2, v1

    or-int/lit8 p0, p2, -0x3

    shl-int/2addr p0, v1

    xor-int/lit8 p2, p2, -0x3

    sub-int/2addr p0, p2

    move-object p2, v0

    move v0, v2

    move-object v2, v4

    move v4, p1

    move p1, p0

    move p0, v5

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    :goto_8
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 43

    const/16 v1, 0x34d

    new-array v1, v1, [B

    const-string v2, ";I\u007f\u00c7\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u00c3\"\u001a\u0012\u0006\u00fb\u0006\u00fc\u00de\u001e\u0005\u0014\u00fe\u0006\n\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u00fe\u00fa\u000e\u00f4\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c\u00f6\u00ff\u0006\u00c2#\u001a\u0012\u0006\u00fb\u0006\u00fc\u00de\u001e\u0005\u0014\u00fe\u0006\n\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\t\u00f8\u00f8\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8\u00ee\t\u00ed\u000b\u00ee\u0007\u00ef\u000b\u00ee\u000b\u00eb\u000b\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u000f\u0001\u00c4C\u00fa\u0012\u00f5\t\u0000\u0012\u00b9B\u00fb\u0002\u0008\u00fb\u0005\u000c\u0000\u00ff\u000c\t\u0001\u0012\u00d46\u00ff\u00f4\u0010\u00ff\u00f6\u000e\u00ea$\u00fe\u0006\u00f2\t\u0001\u00e2(\u000c\u00f6\u0001\u0014\u00fe\u0006\n\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0006\u00f5\u0006\u00e3$\u0016\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u001a,\u000b\u00f6\u000c\u0000\u0002\u0002\u00fb\u000c\t\u00fb\u0001\n\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u00108\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d5\u0001\u00f4\n\u0017\u00ed\u0008\t5\u00d0\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u000c\u0006\u0007\u00f5\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u00c3\"\u001a\u0012\u0006\u00fb\u0006\u00fc\u00e1(\u00fb\u000c\u00b8D\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u00f4\u0016\u00f7\u00e7 \r\u0004\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ee\u0006\u00f0\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u00036\u00cf\u00fe\u00f2\u0012\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f"

    const-string v3, "ISO-8859-1"

    .line 1000
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x34d

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lo/NetworkInfo;->w:[B

    const/16 v1, 0x7e

    sput v1, Lo/NetworkInfo;->y:I

    const-wide v1, -0x6f8c0aa500e0f546L

    .line 3634
    sput-wide v1, Lo/NetworkInfo;->t:J

    const/16 v1, 0xa

    sput-byte v1, Lo/NetworkInfo;->r:B

    .line 77
    :try_start_0
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v2, 0x1d

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v3, 0x2eb

    int-to-short v3, v3

    .line 0
    sget v5, Lo/NetworkInfo;->y:I

    and-int/lit16 v5, v5, 0x1c7

    int-to-byte v5, v5

    invoke-static {v1, v3, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    .line 81
    sget-object v3, Lo/NetworkInfo;->q:Ljava/lang/Object;

    const/16 v5, 0x47

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 2326
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x3a

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    const/16 v7, 0x1bd

    int-to-short v7, v7

    sget-object v8, Lo/NetworkInfo;->w:[B

    aget-byte v8, v8, v5

    int-to-byte v8, v8

    invoke-static {v3, v7, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 1771
    :try_start_1
    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v11, 0xf3

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    const/16 v11, 0xc6

    int-to-short v11, v11

    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v13, 0x20b

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v10

    .line 1772
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lo/NetworkInfo;->w:[B

    const/16 v12, 0x61

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    const/16 v12, 0x30e

    int-to-short v12, v12

    sget-object v13, Lo/NetworkInfo;->w:[B

    aget-byte v13, v13, v5

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Class;

    .line 1773
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v11, v6

    check-cast v11, [Ljava/lang/Object;

    .line 1774
    invoke-virtual {v10, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_1

    goto :goto_2

    :catch_0
    move-object v10, v6

    .line 1785
    :cond_1
    :try_start_2
    sget-object v11, Lo/NetworkInfo;->w:[B

    const/16 v12, 0x2d

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    const/16 v12, 0x1d2

    int-to-short v12, v12

    .line 3686
    sget-object v13, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x20b

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v11

    .line 1786
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v13, 0x5b

    aget-byte v12, v12, v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    int-to-byte v12, v12

    .line 107
    sget v13, Lo/NetworkInfo;->x:I

    xor-int/lit8 v14, v13, 0x4d

    and-int/lit8 v13, v13, 0x4d

    shl-int/2addr v13, v9

    add-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lo/NetworkInfo;->v:I

    rem-int/2addr v14, v8

    if-nez v14, :cond_2

    xor-int/lit8 v13, v12, 0x9

    int-to-short v13, v13

    .line 0
    :try_start_3
    sget-object v14, Lo/NetworkInfo;->w:[B

    const/16 v15, 0x72

    aget-byte v14, v14, v15

    goto :goto_1

    :cond_2
    xor-int/lit8 v13, v12, 0x62

    and-int/lit8 v14, v12, 0x62

    or-int/2addr v13, v14

    int-to-short v13, v13

    .line 1787
    sget-object v14, Lo/NetworkInfo;->w:[B

    aget-byte v14, v14, v7

    :goto_1
    int-to-byte v14, v14

    .line 2306
    invoke-static {v12, v13, v14}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Class;

    .line 1787
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 2323
    move-object v12, v6

    check-cast v12, [Ljava/lang/Object;

    .line 1788
    invoke-virtual {v11, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    nop

    :goto_2
    if-eqz v10, :cond_3

    const/16 v11, 0x5e

    goto :goto_3

    :cond_3
    const/16 v11, 0x18

    :goto_3
    const/16 v12, 0x18

    if-eq v11, v12, :cond_4

    .line 98
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v13, 0x5e

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0x275

    and-int/lit16 v14, v12, 0x275

    or-int/2addr v13, v14

    int-to-short v13, v13

    sget-object v14, Lo/NetworkInfo;->w:[B

    aget-byte v14, v14, v7

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v12

    move-object v13, v6

    check-cast v13, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v6

    check-cast v12, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    :cond_4
    move-object v11, v6

    :goto_4
    if-eqz v10, :cond_5

    const/16 v12, 0x48

    goto :goto_5

    :cond_5
    const/16 v12, 0x25

    :goto_5
    const/16 v13, 0x48

    if-eq v12, v13, :cond_6

    goto :goto_6

    .line 110
    :cond_6
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x92

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    const/16 v14, 0x219

    int-to-short v14, v14

    sget-object v15, Lo/NetworkInfo;->w:[B

    aget-byte v15, v15, v7

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v13

    move-object v14, v6

    check-cast v14, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v13, v6

    check-cast v13, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v12, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    :goto_6
    move-object v12, v6

    :goto_7
    if-eqz v10, :cond_7

    .line 122
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lo/NetworkInfo;->w:[B

    const/16 v15, 0x5e

    aget-byte v14, v14, v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    int-to-byte v14, v14

    const/16 v15, 0x271

    .line 2487
    sget v16, Lo/NetworkInfo;->v:I

    add-int/lit8 v16, v16, 0x42

    add-int/lit8 v5, v16, -0x1

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lo/NetworkInfo;->x:I

    rem-int/2addr v5, v8

    int-to-short v2, v15

    .line 0
    :try_start_7
    sget-object v5, Lo/NetworkInfo;->w:[B

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v14, v2, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 141
    sget v5, Lo/NetworkInfo;->v:I

    or-int/lit8 v14, v5, 0x13

    shl-int/2addr v14, v9

    xor-int/lit8 v5, v5, 0x13

    sub-int/2addr v14, v5

    rem-int/lit16 v5, v14, 0x80

    sput v5, Lo/NetworkInfo;->x:I

    rem-int/2addr v14, v8

    .line 2452
    :try_start_8
    move-object v5, v6

    check-cast v5, [Ljava/lang/Class;

    .line 123
    invoke-virtual {v13, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v5, v6

    check-cast v5, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v2, v10, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_8

    :catch_4
    :cond_7
    move-object v2, v6

    :goto_8
    const/16 v5, 0x2c

    const/16 v10, 0x22

    if-eqz v11, :cond_8

    move-object v3, v11

    goto :goto_a

    :cond_8
    if-nez v3, :cond_9

    move-object v3, v6

    goto :goto_a

    .line 262
    :cond_9
    :try_start_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x5e

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    const/16 v14, 0x130

    int-to-short v14, v14

    sget-object v15, Lo/NetworkInfo;->w:[B

    const/16 v18, 0x54

    aget-byte v15, v15, v18

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    :try_start_a
    new-array v11, v9, [Ljava/lang/Object;

    aput-object v3, v11, v4

    .line 3600
    sget-object v3, Lo/NetworkInfo;->w:[B

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    sget v13, Lo/NetworkInfo;->y:I

    and-int/lit16 v13, v13, 0x1e3

    int-to-short v13, v13

    sget-object v14, Lo/NetworkInfo;->w:[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_50

    .line 2355
    sget v15, Lo/NetworkInfo;->v:I

    or-int/lit8 v18, v15, 0x4f

    shl-int/lit8 v18, v18, 0x1

    xor-int/lit8 v15, v15, 0x4f

    sub-int v15, v18, v15

    rem-int/lit16 v5, v15, 0x80

    sput v5, Lo/NetworkInfo;->x:I

    rem-int/2addr v15, v8

    if-eqz v15, :cond_a

    .line 2350
    :try_start_b
    aget-byte v5, v14, v10

    int-to-byte v5, v5

    invoke-static {v3, v13, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/Class;

    goto :goto_9

    .line 2348
    :cond_a
    aget-byte v5, v14, v10

    int-to-byte v5, v5

    invoke-static {v3, v13, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/Class;

    .line 267
    :goto_9
    const-class v13, Ljava/lang/String;

    aput-object v13, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_50

    :goto_a
    if-eqz v2, :cond_b

    goto :goto_b

    .line 3600
    :cond_b
    :try_start_c
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x93

    aget-byte v2, v2, v5

    int-to-byte v2, v2

    const/16 v5, 0xf9

    int-to-short v5, v5

    sget-object v11, Lo/NetworkInfo;->w:[B

    .line 3601
    aget-byte v11, v11, v10

    int-to-byte v11, v11

    invoke-static {v2, v5, v11}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    :try_start_d
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v4

    .line 267
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x1d

    aget-byte v2, v2, v11

    int-to-byte v2, v2

    const/16 v11, 0x31d

    int-to-short v11, v11

    sget-object v13, Lo/NetworkInfo;->w:[B

    aget-byte v13, v13, v10

    int-to-byte v13, v13

    invoke-static {v2, v11, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v11, Lo/NetworkInfo;->w:[B

    const/16 v13, 0x5e

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    const/16 v13, 0xec

    int-to-short v13, v13

    sget-object v14, Lo/NetworkInfo;->w:[B

    aget-byte v14, v14, v7

    int-to-byte v14, v14

    invoke-static {v11, v13, v14}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v11

    new-array v13, v9, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v4

    invoke-virtual {v2, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4f

    :try_start_e
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v4

    .line 256
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x2c

    aget-byte v2, v2, v11

    int-to-byte v2, v2

    sget v11, Lo/NetworkInfo;->y:I

    and-int/lit16 v11, v11, 0x1e3

    int-to-short v11, v11

    sget-object v13, Lo/NetworkInfo;->w:[B

    aget-byte v13, v13, v10

    int-to-byte v13, v13

    invoke-static {v2, v11, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v11, v9, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v4

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4e

    :goto_b
    if-nez v12, :cond_10

    if-eqz v3, :cond_c

    const/4 v5, 0x0

    goto :goto_c

    :cond_c
    const/4 v5, 0x1

    :goto_c
    if-eq v5, v9, :cond_10

    .line 226
    sget v5, Lo/NetworkInfo;->v:I

    add-int/lit8 v5, v5, 0x25

    rem-int/lit16 v11, v5, 0x80

    sput v11, Lo/NetworkInfo;->x:I

    rem-int/2addr v5, v8

    .line 144
    :try_start_f
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x9

    aget-byte v5, v5, v11

    int-to-byte v5, v5

    const/16 v11, 0x241

    int-to-short v11, v11

    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v13, 0x47

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v5, v11, v12}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 134
    sget v11, Lo/NetworkInfo;->x:I

    or-int/lit8 v12, v11, 0x7b

    shl-int/2addr v12, v9

    xor-int/lit8 v11, v11, 0x7b

    sub-int/2addr v12, v11

    rem-int/lit16 v11, v12, 0x80

    sput v11, Lo/NetworkInfo;->v:I

    rem-int/2addr v12, v8

    if-nez v12, :cond_d

    const/4 v11, 0x0

    goto :goto_d

    :cond_d
    const/16 v11, 0x38

    :goto_d
    if-eqz v11, :cond_e

    :try_start_10
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v5, v11, v9

    aput-object v3, v11, v4

    .line 2543
    sget-object v5, Lo/NetworkInfo;->w:[B

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_f

    :cond_e
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v5, v11, v4

    aput-object v3, v11, v9

    .line 2467
    sget-object v5, Lo/NetworkInfo;->w:[B
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2432
    :goto_e
    sget v12, Lo/NetworkInfo;->x:I

    or-int/lit8 v13, v12, 0x65

    shl-int/2addr v13, v9

    xor-int/lit8 v12, v12, 0x65

    sub-int/2addr v13, v12

    rem-int/lit16 v12, v13, 0x80

    sput v12, Lo/NetworkInfo;->v:I

    rem-int/2addr v13, v8

    const/16 v12, 0x2c

    .line 2475
    :try_start_11
    aget-byte v5, v5, v12

    int-to-byte v5, v5

    sget v12, Lo/NetworkInfo;->y:I

    and-int/lit16 v12, v12, 0x1e3

    int-to-short v12, v12

    sget-object v13, Lo/NetworkInfo;->w:[B

    .line 2355
    aget-byte v13, v13, v10

    int-to-byte v13, v13

    invoke-static {v5, v12, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v12, v8, [Ljava/lang/Class;

    .line 3733
    sget-object v13, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x2c

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    sget v14, Lo/NetworkInfo;->y:I

    and-int/lit16 v14, v14, 0x1e3

    int-to-short v14, v14

    .line 2543
    sget-object v15, Lo/NetworkInfo;->w:[B

    aget-byte v15, v15, v10

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v12, v4

    .line 2323
    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v9

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_10

    .line 3692
    :goto_f
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 198
    throw v2

    .line 2383
    :cond_f
    throw v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 190
    :cond_10
    :goto_10
    :try_start_13
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x2d

    aget-byte v5, v5, v11

    int-to-byte v5, v5

    xor-int/lit16 v11, v5, 0x140

    and-int/lit16 v13, v5, 0x140

    or-int/2addr v11, v13

    int-to-short v11, v11

    sget-object v13, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x20b

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v5, v11, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v11, Lo/NetworkInfo;->w:[B

    const/16 v13, 0x52

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    const/16 v13, 0x1a7

    int-to-short v13, v13

    sget-object v14, Lo/NetworkInfo;->w:[B

    .line 3633
    aget-byte v14, v14, v7

    int-to-byte v14, v14

    invoke-static {v11, v13, v14}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4d

    const/16 v11, 0x9

    .line 148
    :try_start_14
    sget-object v13, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x2c

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    sget v14, Lo/NetworkInfo;->y:I

    and-int/lit16 v14, v14, 0x1e3

    int-to-short v14, v14

    sget-object v15, Lo/NetworkInfo;->w:[B

    aget-byte v15, v15, v10

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 3670
    invoke-static {v13, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    aput-object v6, v11, v4

    aput-object v12, v11, v9

    aput-object v3, v11, v8

    const/4 v13, 0x3

    aput-object v2, v11, v13

    const/4 v14, 0x4

    aput-object v5, v11, v14

    const/4 v14, 0x5

    aput-object v12, v11, v14

    const/4 v12, 0x6

    aput-object v3, v11, v12
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    const/4 v3, 0x7

    .line 2467
    sget v12, Lo/NetworkInfo;->x:I

    add-int/2addr v12, v9

    rem-int/lit16 v14, v12, 0x80

    sput v14, Lo/NetworkInfo;->v:I

    rem-int/2addr v12, v8

    .line 2487
    :try_start_15
    aput-object v2, v11, v3

    aput-object v5, v11, v7

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-boolean v4, v2, v4

    aput-boolean v9, v2, v9

    aput-boolean v9, v2, v8

    aput-boolean v9, v2, v13

    const/4 v3, 0x4

    aput-boolean v9, v2, v3

    const/4 v3, 0x5

    aput-boolean v9, v2, v3

    const/4 v3, 0x6

    aput-boolean v9, v2, v3

    const/4 v3, 0x7

    aput-boolean v9, v2, v3

    aput-boolean v9, v2, v7

    const/16 v3, 0x9

    new-array v3, v3, [Z

    aput-boolean v4, v3, v4

    aput-boolean v4, v3, v9

    aput-boolean v4, v3, v8

    aput-boolean v4, v3, v13

    const/4 v5, 0x4

    aput-boolean v4, v3, v5

    const/4 v5, 0x5

    aput-boolean v9, v3, v5

    const/4 v5, 0x6

    aput-boolean v9, v3, v5

    const/4 v5, 0x7

    aput-boolean v9, v3, v5

    aput-boolean v9, v3, v7

    const/16 v5, 0x9

    new-array v5, v5, [Z

    aput-boolean v4, v5, v4

    aput-boolean v4, v5, v9

    aput-boolean v9, v5, v8

    aput-boolean v9, v5, v13

    const/4 v12, 0x4

    aput-boolean v4, v5, v12

    const/4 v12, 0x5

    aput-boolean v4, v5, v12

    const/4 v12, 0x6

    aput-boolean v9, v5, v12

    const/4 v12, 0x7

    aput-boolean v9, v5, v12

    aput-boolean v4, v5, v7
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    .line 204
    :try_start_16
    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v14, 0xb

    aget-byte v12, v12, v14

    int-to-byte v12, v12

    const/16 v14, 0x2dc

    int-to-short v14, v14

    sget-object v15, Lo/NetworkInfo;->w:[B

    const/16 v19, 0x20b

    aget-byte v15, v15, v19

    int-to-byte v15, v15

    invoke-static {v12, v14, v15}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 205
    sget-object v14, Lo/NetworkInfo;->w:[B

    const/16 v15, 0x54

    .line 2484
    aget-byte v14, v14, v15

    int-to-byte v14, v14

    const/16 v15, 0x11d

    int-to-short v15, v15

    sget-object v19, Lo/NetworkInfo;->w:[B

    const/16 v20, 0x237

    aget-byte v13, v19, v20

    int-to-byte v13, v13

    invoke-static {v14, v15, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    const/16 v13, 0x1a

    if-lt v12, v13, :cond_11

    const/4 v13, 0x1

    goto :goto_11

    :cond_11
    const/4 v13, 0x0

    :goto_11
    aput-boolean v13, v5, v4

    const/16 v13, 0x15

    if-lt v12, v13, :cond_12

    const/4 v13, 0x0

    goto :goto_12

    :cond_12
    const/4 v13, 0x1

    :goto_12
    if-eq v13, v9, :cond_13

    const/4 v13, 0x1

    goto :goto_13

    :cond_13
    const/4 v13, 0x0

    :goto_13
    aput-boolean v13, v5, v9

    const/4 v13, 0x5

    const/16 v14, 0x15

    if-lt v12, v14, :cond_14

    const/4 v14, 0x0

    goto :goto_14

    :cond_14
    const/4 v14, 0x1

    :goto_14
    if-eq v14, v9, :cond_15

    const/4 v14, 0x1

    goto :goto_15

    :cond_15
    const/4 v14, 0x0

    :goto_15
    aput-boolean v14, v5, v13

    const/4 v13, 0x4

    const/16 v14, 0x10

    if-ge v12, v14, :cond_16

    const/4 v14, 0x1

    goto :goto_16

    :cond_16
    const/4 v14, 0x0

    :goto_16
    aput-boolean v14, v5, v13
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    const/16 v13, 0x10

    if-ge v12, v13, :cond_17

    const/16 v12, 0x27

    goto :goto_17

    :cond_17
    const/16 v12, 0x24

    :goto_17
    const/16 v13, 0x27

    if-eq v12, v13, :cond_18

    const/4 v12, 0x0

    goto :goto_19

    .line 2363
    :cond_18
    sget v12, Lo/NetworkInfo;->v:I

    add-int/lit8 v12, v12, 0x56

    sub-int/2addr v12, v9

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lo/NetworkInfo;->x:I

    rem-int/2addr v12, v8

    if-eqz v12, :cond_19

    const/4 v12, 0x0

    goto :goto_18

    :cond_19
    const/4 v12, 0x1

    :goto_18
    const/4 v12, 0x1

    :goto_19
    :try_start_17
    aput-boolean v12, v5, v7
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    :catch_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1a
    if-nez v12, :cond_1a

    const/4 v14, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v14, 0x0

    :goto_1b
    if-eq v14, v9, :cond_1b

    goto/16 :goto_6e

    :cond_1b
    const/16 v14, 0x9

    if-ge v13, v14, :cond_80

    .line 229
    :try_start_18
    aget-boolean v14, v5, v13
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e

    if-eqz v14, :cond_1c

    const/16 v14, 0x3c

    goto :goto_1c

    :cond_1c
    const/16 v14, 0x51

    :goto_1c
    const/16 v15, 0x51

    if-eq v14, v15, :cond_7f

    .line 233
    :try_start_19
    aget-boolean v15, v2, v13

    aget-object v7, v11, v13

    .line 2409
    aget-boolean v20, v3, v13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4b

    const/16 v22, 0x2a

    const/16 v8, 0x2e

    if-eqz v15, :cond_20

    if-eqz v7, :cond_1e

    .line 2475
    :try_start_1a
    sget-object v24, Lo/NetworkInfo;->w:[B

    const/16 v18, 0x2c

    aget-byte v14, v24, v18

    int-to-byte v14, v14

    sget v4, Lo/NetworkInfo;->y:I

    and-int/lit16 v4, v4, 0x1e3

    int-to-short v4, v4

    sget-object v26, Lo/NetworkInfo;->w:[B

    aget-byte v9, v26, v10

    int-to-byte v9, v9

    invoke-static {v14, v4, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x67

    aget-byte v9, v9, v14

    int-to-byte v9, v9

    const/16 v14, 0x96

    int-to-short v14, v14

    sget-object v26, Lo/NetworkInfo;->w:[B

    const/16 v17, 0x47

    aget-byte v10, v26, v17

    int-to-byte v10, v10

    invoke-static {v9, v14, v10}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz v4, :cond_1e

    goto/16 :goto_1d

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 267
    :try_start_1b
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 2358
    throw v7

    .line 2379
    :cond_1d
    throw v4

    .line 2310
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lo/NetworkInfo;->w:[B

    aget-byte v9, v9, v22

    int-to-byte v9, v9

    const/16 v10, 0x1f2

    int-to-short v10, v10

    sget v14, Lo/NetworkInfo;->y:I

    const/16 v15, 0x1d

    and-int/2addr v14, v15

    int-to-byte v14, v14

    invoke-static {v9, v10, v14}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v7, Lo/NetworkInfo;->w:[B

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    or-int/lit16 v9, v7, 0x264

    int-to-short v9, v9

    sget-object v10, Lo/NetworkInfo;->w:[B

    aget-byte v8, v10, v8

    int-to-byte v8, v8

    invoke-static {v7, v9, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4b

    const/4 v7, 0x1

    :try_start_1c
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v8, v7

    .line 100
    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x53

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x8f

    int-to-short v7, v7

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x22

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v4, v7, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 2323
    :try_start_1d
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 2506
    throw v7

    .line 2326
    :cond_1f
    throw v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4b

    :cond_20
    :goto_1d
    if-eqz v15, :cond_37

    .line 2325
    :try_start_1e
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    .line 2401
    :try_start_1f
    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x1d

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x31d

    int-to-short v10, v10

    .line 3592
    sget-object v14, Lo/NetworkInfo;->w:[B

    const/16 v26, 0x22

    aget-byte v14, v14, v26

    int-to-byte v14, v14

    invoke-static {v9, v10, v14}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 2409
    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x10

    aget-byte v10, v10, v14

    int-to-byte v10, v10

    xor-int/lit8 v14, v10, 0x43

    and-int/lit8 v26, v10, 0x43

    or-int v14, v14, v26

    int-to-short v14, v14

    .line 2532
    sget-object v26, Lo/NetworkInfo;->w:[B

    const/16 v17, 0x47

    aget-byte v8, v26, v17

    int-to-byte v8, v8

    invoke-static {v10, v14, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v8

    .line 2379
    invoke-virtual {v9, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 3670
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    const-wide/32 v30, -0x3bd9bdc4

    xor-long v8, v8, v30

    :try_start_20
    invoke-virtual {v4, v8, v9}, Ljava/util/Random;->setSeed(J)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v14, v10

    :goto_1e
    if-nez v8, :cond_35

    if-nez v9, :cond_21

    const/16 v26, 0x6

    move-object/from16 v30, v1

    const/4 v1, 0x6

    goto :goto_21

    :cond_21
    if-nez v10, :cond_22

    move-object/from16 v30, v1

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_1f

    :cond_22
    move-object/from16 v30, v1

    const/4 v1, 0x1

    const/4 v6, 0x0

    :goto_1f
    if-eq v6, v1, :cond_25

    if-nez v14, :cond_23

    const/16 v1, 0x1a

    goto :goto_20

    :cond_23
    const/16 v1, 0x1e

    :goto_20
    const/16 v6, 0x1e

    if-eq v1, v6, :cond_24

    const/4 v1, 0x4

    goto :goto_21

    :cond_24
    const/4 v1, 0x3

    goto :goto_21

    :cond_25
    const/4 v1, 0x5

    .line 2344
    :goto_21
    :try_start_21
    new-instance v6, Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    or-int/lit8 v31, v1, 0x1

    const/16 v27, 0x1

    shl-int/lit8 v31, v31, 0x1

    xor-int/lit8 v32, v1, 0x1

    move-object/from16 v33, v2

    sub-int v2, v31, v32

    :try_start_22
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x2e

    .line 2346
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_28

    move/from16 v31, v1

    if-eqz v20, :cond_27

    const/16 v1, 0x1a

    .line 2352
    :try_start_23
    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 2353
    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v32

    if-eqz v32, :cond_26

    or-int/lit8 v32, v1, 0x41

    const/16 v27, 0x1

    shl-int/lit8 v32, v32, 0x1

    xor-int/lit8 v1, v1, 0x41

    sub-int v32, v32, v1

    goto :goto_23

    :cond_26
    and-int/lit8 v32, v1, 0x60

    or-int/lit8 v1, v1, 0x60

    add-int v32, v32, v1

    :goto_23
    move/from16 v1, v32

    int-to-char v1, v1

    .line 2358
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    move-object/from16 v32, v3

    goto :goto_24

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v32, v3

    goto/16 :goto_2c

    :cond_27
    const/16 v1, 0xc

    .line 2362
    :try_start_24
    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    move-object/from16 v32, v3

    and-int/lit16 v3, v1, 0x2000

    or-int/lit16 v1, v1, 0x2000

    add-int/2addr v3, v1

    int-to-char v1, v3

    .line 2363
    :try_start_25
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_24
    or-int/lit8 v1, v2, 0x1

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, 0x1

    sub-int v2, v1, v2

    move/from16 v1, v31

    move-object/from16 v3, v32

    goto :goto_22

    :cond_28
    move-object/from16 v32, v3

    .line 2367
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    if-nez v9, :cond_2a

    const/4 v2, 0x2

    :try_start_26
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v7, v3, v1

    .line 190
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v2, 0x2c

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    sget v2, Lo/NetworkInfo;->y:I

    and-int/lit16 v2, v2, 0x1e3

    int-to-short v2, v2

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    aget-byte v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v1, v2, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x2c

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    sget v9, Lo/NetworkInfo;->y:I

    and-int/lit16 v9, v9, 0x1e3

    int-to-short v9, v9

    sget-object v31, Lo/NetworkInfo;->w:[B

    move-object/from16 v34, v4

    const/16 v28, 0x22

    aget-byte v4, v31, v28

    int-to-byte v4, v4

    invoke-static {v2, v9, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v6, v4

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    move-object v9, v1

    :goto_25
    move-object/from16 v31, v7

    goto/16 :goto_28

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 1792
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 2392
    throw v2

    .line 248
    :cond_29
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    :cond_2a
    move-object/from16 v34, v4

    if-nez v10, :cond_2c

    const/4 v2, 0x2

    :try_start_28
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v7, v3, v1

    .line 2446
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v2, 0x2c

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    sget v2, Lo/NetworkInfo;->y:I

    and-int/lit16 v2, v2, 0x1e3

    int-to-short v2, v2

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x22

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    invoke-static {v1, v2, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x2c

    aget-byte v2, v2, v6

    int-to-byte v2, v2

    sget v6, Lo/NetworkInfo;->y:I

    and-int/lit16 v6, v6, 0x1e3

    int-to-short v6, v6

    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v28, 0x22

    aget-byte v10, v10, v28

    int-to-byte v10, v10

    invoke-static {v2, v6, v10}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    move-object v10, v1

    goto :goto_25

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 267
    :try_start_29
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 205
    throw v2

    .line 2392
    :cond_2b
    throw v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    :cond_2c
    if-nez v14, :cond_30

    .line 107
    sget v2, Lo/NetworkInfo;->x:I

    add-int/lit8 v2, v2, 0x77

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lo/NetworkInfo;->v:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    :try_start_2a
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x0

    aput-object v7, v2, v1

    .line 2475
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v3, 0x2c

    aget-byte v1, v1, v3

    int-to-byte v1, v1

    sget v3, Lo/NetworkInfo;->y:I

    and-int/lit16 v3, v3, 0x1e3

    int-to-short v3, v3

    .line 100
    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x22

    aget-byte v4, v4, v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    int-to-byte v4, v4

    .line 3639
    sget v6, Lo/NetworkInfo;->v:I

    and-int/lit8 v14, v6, 0x49

    or-int/lit8 v6, v6, 0x49

    add-int/2addr v14, v6

    rem-int/lit16 v6, v14, 0x80

    sput v6, Lo/NetworkInfo;->x:I

    const/4 v6, 0x2

    rem-int/2addr v14, v6

    if-eqz v14, :cond_2d

    const/4 v6, 0x1

    goto :goto_26

    :cond_2d
    const/16 v6, 0x50

    :goto_26
    const/16 v14, 0x50

    if-eq v6, v14, :cond_2e

    .line 2543
    :try_start_2b
    invoke-static {v1, v3, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    move-object v4, v1

    const/4 v1, 0x1

    goto :goto_27

    .line 2450
    :cond_2e
    invoke-static {v1, v3, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    move-object v3, v4

    move-object v4, v1

    const/4 v1, 0x0

    .line 2530
    :goto_27
    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x2c

    aget-byte v6, v6, v14

    int-to-byte v6, v6

    sget v14, Lo/NetworkInfo;->y:I

    and-int/lit16 v14, v14, 0x1e3

    int-to-short v14, v14

    .line 3733
    sget-object v31, Lo/NetworkInfo;->w:[B

    move-object/from16 v35, v8

    const/16 v28, 0x22

    aget-byte v8, v31, v28

    int-to-byte v8, v8

    invoke-static {v6, v14, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v6

    .line 2348
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v1

    const-class v1, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v1, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 3627
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_6

    move-object v14, v1

    move-object/from16 v31, v7

    move-object/from16 v8, v35

    goto/16 :goto_28

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 2556
    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 198
    throw v2

    .line 2369
    :cond_2f
    throw v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    :cond_30
    const/4 v2, 0x2

    :try_start_2d
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v7, v3, v1

    .line 3745
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v2, 0x2c

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    sget v2, Lo/NetworkInfo;->y:I

    and-int/lit16 v2, v2, 0x1e3

    int-to-short v2, v2

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x22

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    invoke-static {v1, v2, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x2c

    aget-byte v2, v2, v6

    int-to-byte v2, v2

    sget v6, Lo/NetworkInfo;->y:I

    and-int/lit16 v6, v6, 0x1e3

    int-to-short v6, v6

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v28, 0x22

    aget-byte v8, v8, v28

    int-to-byte v8, v8

    invoke-static {v2, v6, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    .line 2344
    sget v2, Lo/NetworkInfo;->v:I

    xor-int/lit8 v3, v2, 0x53

    const/16 v4, 0x53

    and-int/2addr v2, v4

    const/4 v4, 0x1

    shl-int/2addr v2, v4

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lo/NetworkInfo;->x:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    :try_start_2e
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 3749
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v4, 0xb

    .line 218
    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0xad

    int-to-short v4, v4

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x22

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_8

    .line 2377
    sget v6, Lo/NetworkInfo;->v:I

    and-int/lit8 v8, v6, 0x3f

    or-int/lit8 v6, v6, 0x3f

    add-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lo/NetworkInfo;->x:I

    const/4 v6, 0x2

    rem-int/2addr v8, v6

    .line 81
    :try_start_2f
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v18, 0x2c

    .line 262
    aget-byte v6, v6, v18

    int-to-byte v6, v6

    move-object/from16 v31, v7

    sget v7, Lo/NetworkInfo;->y:I

    and-int/lit16 v7, v7, 0x1e3

    int-to-short v7, v7

    sget-object v35, Lo/NetworkInfo;->w:[B

    move-object/from16 v36, v9

    const/16 v28, 0x22

    .line 2475
    aget-byte v9, v35, v28

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v8, v7

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_8

    .line 2350
    :try_start_30
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v6, 0xb

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x22

    .line 244
    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lo/NetworkInfo;->w:[B

    .line 2475
    aget-byte v4, v4, v22

    int-to-byte v4, v4

    xor-int/lit16 v6, v4, 0xf9

    and-int/lit16 v7, v4, 0xf9

    or-int/2addr v6, v7

    int-to-short v6, v6

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x47

    .line 226
    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    .line 2350
    sget v4, Lo/NetworkInfo;->x:I

    and-int/lit8 v6, v4, 0x3b

    or-int/lit8 v4, v4, 0x3b

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lo/NetworkInfo;->v:I

    const/4 v4, 0x2

    rem-int/2addr v6, v4

    const/4 v4, 0x0

    .line 1786
    :try_start_31
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_7

    move-object v8, v1

    move-object/from16 v9, v36

    :goto_28
    move-object/from16 v1, v30

    move-object/from16 v7, v31

    move-object/from16 v3, v32

    move-object/from16 v2, v33

    move-object/from16 v4, v34

    const/4 v6, 0x0

    goto/16 :goto_1e

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 3733
    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 2379
    throw v3

    .line 3634
    :cond_31
    throw v2

    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 3597
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 262
    throw v3

    .line 2475
    :cond_32
    throw v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_6
    .catchall {:try_start_32 .. :try_end_32} :catchall_e

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 2392
    :try_start_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lo/NetworkInfo;->w:[B

    aget-byte v4, v4, v22

    int-to-byte v4, v4

    xor-int/lit8 v6, v4, 0x53

    and-int/lit8 v7, v4, 0x53

    or-int/2addr v6, v7

    int-to-short v6, v6

    sget v7, Lo/NetworkInfo;->y:I

    const/16 v8, 0x1d

    and-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v4, 0x2e

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    xor-int/lit16 v4, v1, 0x264

    and-int/lit16 v6, v1, 0x264

    or-int/2addr v4, v6

    int-to-short v4, v4

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x2e

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v1, v4, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_e

    const/4 v3, 0x2

    :try_start_34
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 2330
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v2, 0x53

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x8f

    int-to-short v2, v2

    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x22

    .line 3666
    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 3597
    const-class v2, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    const-class v2, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v2, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2414
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 2432
    :try_start_35
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2556
    throw v2

    .line 2532
    :cond_33
    throw v1

    :catchall_a
    move-exception v0

    move-object v1, v0

    .line 226
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 3634
    throw v2

    .line 2377
    :cond_34
    throw v1

    :catchall_b
    move-exception v0

    goto :goto_2a

    :catchall_c
    move-exception v0

    goto :goto_29

    :cond_35
    move-object/from16 v30, v1

    move-object/from16 v33, v2

    move-object/from16 v32, v3

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    goto :goto_30

    :catchall_d
    move-exception v0

    move-object/from16 v30, v1

    move-object/from16 v33, v2

    move-object/from16 v32, v3

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2475
    throw v2

    .line 3692
    :cond_36
    throw v1
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_e

    :catchall_e
    move-exception v0

    goto :goto_2b

    :catchall_f
    move-exception v0

    move-object/from16 v30, v1

    :goto_29
    move-object/from16 v33, v2

    :goto_2a
    move-object/from16 v32, v3

    :goto_2b
    move-object v1, v0

    :goto_2c
    move-object/from16 v41, v5

    move-object/from16 v31, v11

    :goto_2d
    move/from16 v39, v12

    move/from16 v40, v13

    :goto_2e
    const/16 v10, 0x8

    :goto_2f
    const/16 v11, 0x47

    const/4 v13, 0x3

    goto/16 :goto_68

    :cond_37
    move-object/from16 v30, v1

    move-object/from16 v33, v2

    move-object/from16 v32, v3

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_30
    const/16 v1, 0x2290

    :try_start_36
    new-array v1, v1, [B

    .line 2406
    const-class v2, Lo/NetworkInfo;

    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v4, 0xf

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    xor-int/lit16 v4, v3, 0x115

    and-int/lit16 v6, v3, 0x115

    or-int/2addr v4, v6

    int-to-short v4, v4

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x54

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    .line 2407
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4a

    const/4 v3, 0x1

    :try_start_37
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    .line 2522
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v3, 0x3a

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x18d

    int-to-short v3, v3

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x22

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v2, v3, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x53

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x2e

    aget-byte v8, v8, v9

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v20, 0x22

    aget-byte v9, v9, v20

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_49

    .line 2383
    sget v4, Lo/NetworkInfo;->v:I

    xor-int/lit8 v6, v4, 0x3

    const/4 v7, 0x3

    and-int/2addr v4, v7

    const/4 v7, 0x1

    shl-int/2addr v4, v7

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lo/NetworkInfo;->x:I

    const/4 v4, 0x2

    rem-int/2addr v6, v4

    :try_start_38
    new-array v4, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    .line 1792
    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x3a

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x22

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v6, v3, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x16

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x287

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    move-object/from16 v20, v1

    const/4 v1, 0x1

    aget-byte v9, v9, v1

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Class;

    const-class v1, [B

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_48

    .line 77
    :try_start_39
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v4, 0x3a

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    .line 2475
    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x22

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    invoke-static {v1, v3, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2446
    sget-object v3, Lo/NetworkInfo;->w:[B

    aget-byte v3, v3, v22

    int-to-byte v3, v3

    xor-int/lit16 v4, v3, 0xf9

    and-int/lit16 v6, v3, 0xf9

    or-int/2addr v4, v6

    int-to-short v4, v4

    .line 2554
    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x47

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 81
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_47

    const/16 v1, 0x10

    const/16 v3, 0x2267

    move-object/from16 v1, v20

    move-object/from16 v6, v30

    const/16 v3, 0x10

    const/16 v4, 0x2267

    const/4 v7, 0x0

    :goto_31
    add-int/lit16 v8, v3, 0x89

    xor-int/lit16 v9, v3, 0x43f

    and-int/lit16 v2, v3, 0x43f

    const/16 v27, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v9, v2

    .line 2421
    :try_start_3a
    aget-byte v2, v1, v9

    add-int/lit8 v2, v2, -0x77

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 2426
    array-length v2, v1
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_4a

    sub-int/2addr v2, v3

    const/4 v8, 0x3

    :try_start_3b
    new-array v9, v8, [Ljava/lang/Object;

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v9, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v9, v8

    const/4 v2, 0x0

    aput-object v1, v9, v2

    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v2, 0x85

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x2c5

    int-to-short v2, v2

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v28, 0x22

    aget-byte v8, v8, v28

    int-to-byte v8, v8

    invoke-static {v1, v2, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Class;

    const-class v2, [B

    const/16 v24, 0x0

    aput-object v2, v8, v24

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v2, v8, v27

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x2

    aput-object v2, v8, v23

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_45

    .line 2432
    :try_start_3c
    sget-object v2, Lo/NetworkInfo;->q:Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_4a

    if-nez v2, :cond_38

    const/16 v2, 0x10

    :try_start_3d
    new-array v2, v2, [B

    const/16 v8, -0x43

    const/4 v9, 0x0

    aput-byte v8, v2, v9

    const/16 v8, -0x57

    const/4 v9, 0x1

    aput-byte v8, v2, v9

    const/16 v8, -0x38

    const/4 v9, 0x2

    aput-byte v8, v2, v9

    const/16 v8, -0x44

    const/4 v9, 0x3

    aput-byte v8, v2, v9

    const/4 v8, 0x4

    const/16 v9, 0x5d

    aput-byte v9, v2, v8

    const/4 v8, 0x5

    const/16 v9, -0x28

    aput-byte v9, v2, v8

    const/4 v8, 0x6

    const/16 v9, 0x48

    aput-byte v9, v2, v8

    const/4 v8, 0x7

    const/16 v9, -0x32

    aput-byte v9, v2, v8

    const/16 v8, -0x7a

    const/16 v9, 0x8

    aput-byte v8, v2, v9

    const/16 v8, 0x9

    const/16 v9, 0x47

    aput-byte v9, v2, v8

    const/16 v8, 0xa

    const/16 v9, -0x69

    aput-byte v9, v2, v8

    const/16 v8, 0xb

    const/16 v9, -0x53

    aput-byte v9, v2, v8

    const/16 v8, 0xc

    const/16 v9, 0xb

    aput-byte v9, v2, v8

    const/16 v8, 0xd

    const/16 v9, -0x6d

    aput-byte v9, v2, v8

    const/16 v8, 0xe

    const/16 v9, -0x40

    aput-byte v9, v2, v8

    const/16 v8, 0xf

    const/16 v9, 0x32

    aput-byte v9, v2, v8

    const v8, 0x4b2db4d2    # 1.1384018E7f

    .line 3110
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3112
    sget-byte v9, Lo/NetworkInfo;->r:B
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_12

    move-object/from16 v34, v10

    move-object/from16 v31, v11

    :try_start_3e
    sget-wide v10, Lo/NetworkInfo;->t:J

    invoke-static {v2, v9, v10, v11}, Lo/NetworkState;->c([BBJ)V

    .line 3116
    invoke-static {v8}, Lo/NetworkRecommendationProvider;->e(I)[[B

    move-result-object v8

    .line 3119
    new-instance v9, Lo/NetworkScorerAppData;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_11

    const/16 v10, 0x8

    :try_start_3f
    invoke-direct {v9, v1, v10, v2, v8}, Lo/NetworkScorerAppData;-><init>(Ljava/io/InputStream;I[B[[B)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_10

    move/from16 v38, v4

    move/from16 v39, v12

    :goto_32
    const/16 v1, 0x14

    goto/16 :goto_34

    :catchall_10
    move-exception v0

    move-object v1, v0

    move-object/from16 v41, v5

    move/from16 v39, v12

    move/from16 v40, v13

    goto/16 :goto_2f

    :catchall_11
    move-exception v0

    goto :goto_33

    :catchall_12
    move-exception v0

    move-object/from16 v31, v11

    :goto_33
    move-object v1, v0

    move-object/from16 v41, v5

    goto/16 :goto_2d

    :cond_38
    move-object/from16 v34, v10

    move-object/from16 v31, v11

    .line 2443
    :try_start_40
    sget-object v2, Lo/NetworkInfo;->q:Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_44

    const v8, 0x69b8128b

    const v9, 0x30ea3906

    const/4 v10, 0x4

    const/4 v11, 0x4

    :try_start_41
    new-array v11, v11, [Ljava/lang/Object;

    .line 2553
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    const/16 v21, 0x3

    aput-object v10, v11, v21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v11, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v11, v9

    const/4 v8, 0x0

    aput-object v1, v11, v8

    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x1d

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v8, 0x264

    int-to-short v8, v8

    sget v9, Lo/NetworkInfo;->y:I

    and-int/lit16 v9, v9, 0x1c7

    int-to-byte v9, v9

    invoke-static {v1, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lo/NetworkInfo;->p:Ljava/lang/Object;

    check-cast v8, Ljava/lang/ClassLoader;

    const/4 v9, 0x1

    invoke-static {v1, v9, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x2e

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0xd4

    and-int/lit16 v10, v8, 0xd4

    or-int/2addr v9, v10

    int-to-short v9, v9

    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v37, 0x9d

    aget-byte v10, v10, v37

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v25, 0x53

    aget-byte v10, v10, v25

    int-to-byte v10, v10

    sget-object v37, Lo/NetworkInfo;->w:[B

    move/from16 v38, v4

    const/16 v29, 0x2e

    aget-byte v4, v37, v29

    int-to-short v4, v4

    sget-object v37, Lo/NetworkInfo;->w:[B
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_43

    move/from16 v39, v12

    const/16 v28, 0x22

    :try_start_42
    aget-byte v12, v37, v28

    int-to-byte v12, v12

    invoke-static {v10, v4, v12}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v9, v10

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v4, v9, v10

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v4, v9, v10

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v4, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/io/InputStream;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_42

    goto/16 :goto_32

    :goto_34
    int-to-long v10, v1

    const/4 v2, 0x1

    :try_start_43
    new-array v4, v2, [Ljava/lang/Object;

    .line 190
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v4, v8

    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x53

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x2e

    aget-byte v8, v8, v10

    int-to-short v8, v8

    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x22

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v2, v8, v10}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v10, 0xe

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    const/16 v10, 0x140

    int-to-short v10, v10

    sget v11, Lo/NetworkInfo;->y:I

    and-int/lit16 v11, v11, 0x1cb

    int-to-byte v11, v11

    invoke-static {v8, v10, v11}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {v2, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_41

    if-eqz v15, :cond_52

    .line 77
    sget v2, Lo/NetworkInfo;->v:I

    add-int/lit8 v2, v2, 0x70

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lo/NetworkInfo;->x:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    .line 2452
    :try_start_44
    sget-object v2, Lo/NetworkInfo;->q:Ljava/lang/Object;

    if-nez v2, :cond_39

    const/16 v2, 0x16

    goto :goto_35

    :cond_39
    const/16 v2, 0x29

    :goto_35
    const/16 v4, 0x16

    if-eq v2, v4, :cond_3a

    move-object/from16 v2, v34

    goto :goto_36

    :cond_3a
    move-object/from16 v2, v36

    .line 3634
    :goto_36
    sget-object v4, Lo/NetworkInfo;->q:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_29

    if-nez v4, :cond_3b

    move-object v4, v14

    goto :goto_37

    :cond_3b
    move-object/from16 v4, v35

    :goto_37
    const/4 v8, 0x1

    :try_start_45
    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v10, v8

    .line 2326
    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v11, 0xb

    .line 2530
    aget-byte v8, v8, v11

    int-to-byte v8, v8

    const/16 v11, 0xad

    int-to-short v11, v11

    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v20, 0x22

    .line 3592
    aget-byte v12, v12, v20

    int-to-byte v12, v12

    invoke-static {v8, v11, v12}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v12, 0x1

    new-array v1, v12, [Ljava/lang/Class;

    .line 77
    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v18, 0x2c

    aget-byte v12, v12, v18

    int-to-byte v12, v12

    move-object/from16 v37, v14

    sget v14, Lo/NetworkInfo;->y:I

    and-int/lit16 v14, v14, 0x1e3

    int-to-short v14, v14

    .line 100
    sget-object v40, Lo/NetworkInfo;->w:[B
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_20

    move-object/from16 v41, v5

    const/16 v28, 0x22

    :try_start_46
    aget-byte v5, v40, v28

    int-to-byte v5, v5

    .line 3667
    invoke-static {v12, v14, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v1, v12

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1f

    const/16 v5, 0x400

    :try_start_47
    new-array v5, v5, [B

    move/from16 v8, v38

    :goto_38
    if-lez v8, :cond_40

    .line 3670
    array-length v10, v5

    .line 3597
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v10
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1e

    const/4 v12, 0x3

    :try_start_48
    new-array v14, v12, [Ljava/lang/Object;

    .line 3634
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v14, v12

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v24, 0x1

    aput-object v12, v14, v24

    aput-object v5, v14, v10

    .line 3588
    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v12, 0x53

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v29, 0x2e

    .line 3634
    aget-byte v12, v12, v29

    int-to-short v12, v12

    sget-object v38, Lo/NetworkInfo;->w:[B
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_15

    move/from16 v40, v13

    const/16 v28, 0x22

    :try_start_49
    aget-byte v13, v38, v28

    int-to-byte v13, v13

    invoke-static {v10, v12, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 107
    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v13, 0xe

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    or-int/lit16 v13, v12, 0x264

    int-to-short v13, v13

    sget-object v38, Lo/NetworkInfo;->w:[B

    move-object/from16 v42, v7

    const/16 v27, 0x1

    .line 3634
    aget-byte v7, v38, v27

    int-to-byte v7, v7

    invoke-static {v12, v13, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Class;

    const-class v12, [B

    const/16 v24, 0x0

    aput-object v12, v13, v24

    .line 148
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v12, v13, v27

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x2

    aput-object v12, v13, v23

    invoke-virtual {v10, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 3597
    invoke-virtual {v7, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_14

    const/4 v10, -0x1

    if-eq v7, v10, :cond_3c

    const/4 v10, 0x1

    goto :goto_39

    :cond_3c
    const/4 v10, 0x0

    :goto_39
    if-eqz v10, :cond_41

    .line 1000
    sget v10, Lo/NetworkInfo;->v:I

    xor-int/lit8 v12, v10, 0x5b

    and-int/lit8 v10, v10, 0x5b

    const/4 v13, 0x1

    shl-int/2addr v10, v13

    add-int/2addr v12, v10

    rem-int/lit16 v10, v12, 0x80

    sput v10, Lo/NetworkInfo;->x:I

    const/4 v10, 0x2

    rem-int/2addr v12, v10

    if-eqz v12, :cond_3d

    const/4 v10, 0x5

    :try_start_4a
    new-array v10, v10, [Ljava/lang/Object;

    .line 256
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v10, v13

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v12, v10

    const/4 v10, 0x0

    goto :goto_3a

    :cond_3d
    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    .line 3686
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x2

    aput-object v10, v12, v13

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_3a
    const/4 v14, 0x1

    .line 2510
    aput-object v13, v12, v14

    aput-object v5, v12, v10

    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v13, 0xb

    aget-byte v10, v10, v13

    int-to-byte v10, v10

    .line 246
    sget-object v13, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x22

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v10, v11, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 2334
    sget-object v13, Lo/NetworkInfo;->w:[B

    aget-byte v13, v13, v22

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0x271

    move-object/from16 v38, v5

    and-int/lit16 v5, v13, 0x271

    or-int/2addr v5, v14

    int-to-short v5, v5

    sget v14, Lo/NetworkInfo;->y:I

    and-int/lit16 v14, v14, 0x1cf

    int-to-byte v14, v14

    .line 2399
    invoke-static {v13, v5, v14}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    const-class v13, [B

    const/16 v24, 0x0

    aput-object v13, v14, v24

    .line 3624
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v13, v14, v27

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x2

    aput-object v13, v14, v23

    invoke-virtual {v10, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 3627
    invoke-virtual {v5, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_13

    sub-int/2addr v8, v7

    move-object/from16 v5, v38

    move/from16 v13, v40

    move-object/from16 v7, v42

    goto/16 :goto_38

    :catchall_13
    move-exception v0

    move-object v1, v0

    .line 2450
    :try_start_4b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 3733
    throw v3

    .line 1786
    :cond_3e
    throw v1

    :catchall_14
    move-exception v0

    goto :goto_3b

    :catchall_15
    move-exception v0

    move/from16 v40, v13

    :goto_3b
    move-object v1, v0

    .line 2326
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 3667
    throw v3

    .line 3600
    :cond_3f
    throw v1
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_21

    :cond_40
    move-object/from16 v42, v7

    move/from16 v40, v13

    .line 2446
    :cond_41
    sget v5, Lo/NetworkInfo;->v:I

    add-int/lit8 v5, v5, 0x49

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lo/NetworkInfo;->x:I

    const/4 v7, 0x2

    rem-int/2addr v5, v7

    .line 2535
    :try_start_4c
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0xb

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x22

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v5, v11, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v7, Lo/NetworkInfo;->w:[B

    aget-byte v7, v7, v22

    int-to-byte v7, v7

    const/16 v8, 0x121

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x8

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1d

    .line 215
    :try_start_4d
    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x2d

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x42

    aget-byte v8, v8, v9

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x22

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0xe

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x208

    and-int/lit16 v10, v8, 0x208

    or-int/2addr v9, v10

    int-to-short v9, v9

    sget v10, Lo/NetworkInfo;->y:I

    and-int/lit16 v10, v10, 0x1cb

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_1c

    .line 248
    :try_start_4e
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0xb

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x22

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v5, v11, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v7, Lo/NetworkInfo;->w:[B

    aget-byte v7, v7, v22

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0xf9

    and-int/lit16 v9, v7, 0xf9

    or-int/2addr v8, v9

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x47

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1b

    .line 3619
    :try_start_4f
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x5b

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    or-int/lit16 v5, v1, 0x241

    int-to-short v5, v5

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v1, v5, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3620
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x54

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    or-int/lit16 v7, v5, 0x171

    int-to-short v7, v7

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x42

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v8, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v7, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_21

    .line 216
    :try_start_50
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x2c

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    sget v8, Lo/NetworkInfo;->y:I

    and-int/lit16 v8, v8, 0x1e3

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x22

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x92

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0xd4

    int-to-short v9, v9

    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x8

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1a

    const/4 v8, 0x0

    :try_start_51
    aput-object v5, v7, v8
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_21

    .line 2355
    :try_start_52
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x2c

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    sget v8, Lo/NetworkInfo;->y:I

    and-int/lit16 v8, v8, 0x1e3

    int-to-short v8, v8

    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x22

    .line 124
    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v5, v8, v10}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x92

    .line 205
    aget-byte v8, v8, v10

    int-to-byte v8, v8

    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x8

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 2369
    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_19

    const/4 v8, 0x1

    :try_start_53
    aput-object v5, v7, v8

    const/4 v5, 0x0

    .line 3627
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v5, 0x2

    aput-object v8, v7, v5

    .line 3624
    invoke-virtual {v1, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_21

    .line 2467
    :try_start_54
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x2c

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    sget v7, Lo/NetworkInfo;->y:I

    and-int/lit16 v7, v7, 0x1e3

    int-to-short v7, v7

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x15

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x126

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_18

    .line 3733
    :try_start_55
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x2c

    aget-byte v2, v2, v5

    int-to-byte v2, v2

    sget v5, Lo/NetworkInfo;->y:I

    and-int/lit16 v5, v5, 0x1e3

    int-to-short v5, v5

    .line 248
    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    invoke-static {v2, v5, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2446
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x15

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/4 v9, 0x0

    .line 1787
    aget-byte v7, v7, v9

    int-to-byte v7, v7

    invoke-static {v5, v8, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2379
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_17

    .line 3639
    :try_start_56
    sget-object v2, Lo/NetworkInfo;->p:Ljava/lang/Object;

    if-nez v2, :cond_42

    const/16 v2, 0x25

    goto :goto_3c

    :cond_42
    const/16 v2, 0x5f

    :goto_3c
    const/16 v4, 0x5f

    if-eq v2, v4, :cond_44

    .line 3641
    const-class v2, Lo/NetworkInfo;
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_28

    .line 2377
    :try_start_57
    const-class v4, Ljava/lang/Class;

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x93

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    xor-int/lit16 v7, v5, 0x130

    and-int/lit16 v8, v5, 0x130

    or-int/2addr v7, v8

    int-to-short v7, v7

    .line 2532
    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x8

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_16

    .line 2556
    sget v5, Lo/NetworkInfo;->v:I

    add-int/lit8 v5, v5, 0x13

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lo/NetworkInfo;->x:I

    const/4 v7, 0x2

    rem-int/2addr v5, v7

    const/4 v5, 0x0

    .line 198
    :try_start_58
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_16

    :try_start_59
    sput-object v2, Lo/NetworkInfo;->p:Ljava/lang/Object;

    goto :goto_3d

    :catchall_16
    move-exception v0

    move-object v1, v0

    .line 107
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 3634
    throw v2

    .line 2414
    :cond_43
    throw v1

    :cond_44
    :goto_3d
    move/from16 v38, v3

    const/4 v13, 0x3

    goto/16 :goto_53

    :catchall_17
    move-exception v0

    move-object v1, v0

    .line 246
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 3749
    throw v2

    .line 3670
    :cond_45
    throw v1

    :catchall_18
    move-exception v0

    move-object v1, v0

    .line 3660
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 3749
    throw v2

    .line 2475
    :cond_46
    throw v1
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_28

    :catchall_19
    move-exception v0

    move-object v1, v0

    .line 2383
    :try_start_5a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 3596
    throw v3

    .line 2358
    :cond_47
    throw v1

    :catchall_1a
    move-exception v0

    move-object v1, v0

    .line 226
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 100
    throw v3

    .line 3627
    :cond_48
    throw v1

    :catchall_1b
    move-exception v0

    move-object v1, v0

    .line 2446
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 3749
    throw v3

    .line 3600
    :cond_49
    throw v1

    :catchall_1c
    move-exception v0

    move-object v1, v0

    .line 3627
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 2326
    throw v3

    .line 2379
    :cond_4a
    throw v1

    :catchall_1d
    move-exception v0

    move-object v1, v0

    .line 226
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 208
    throw v3

    .line 211
    :cond_4b
    throw v1
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_21

    :catchall_1e
    move-exception v0

    move/from16 v40, v13

    goto :goto_3f

    :catchall_1f
    move-exception v0

    goto :goto_3e

    :catchall_20
    move-exception v0

    move-object/from16 v41, v5

    :goto_3e
    move/from16 v40, v13

    move-object v1, v0

    .line 267
    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 2377
    throw v3

    .line 1787
    :cond_4c
    throw v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_7
    .catchall {:try_start_5b .. :try_end_5b} :catchall_21

    :catchall_21
    move-exception v0

    :goto_3f
    move-object v1, v0

    goto/16 :goto_40

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 3592
    :try_start_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lo/NetworkInfo;->w:[B

    aget-byte v5, v5, v22

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x1ea

    and-int/lit16 v7, v5, 0x1ea

    or-int/2addr v6, v7

    int-to-short v6, v6

    sget v7, Lo/NetworkInfo;->y:I

    const/16 v8, 0x1d

    and-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x2e

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x264

    and-int/lit16 v7, v5, 0x264

    or-int/2addr v6, v7

    int-to-short v6, v6

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x2e

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_21

    const/4 v5, 0x2

    :try_start_5d
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v1, v6, v5

    const/4 v1, 0x0

    aput-object v3, v6, v1

    .line 2446
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v3, 0x53

    .line 267
    aget-byte v1, v1, v3

    int-to-byte v1, v1

    const/16 v3, 0x8f

    int-to-short v3, v3

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x22

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v1, v3, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    const-class v3, Ljava/lang/Throwable;

    const/4 v7, 0x1

    aput-object v3, v5, v7

    .line 107
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_22

    :catchall_22
    move-exception v0

    move-object v1, v0

    .line 2527
    :try_start_5e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 148
    throw v3

    .line 100
    :cond_4d
    throw v1
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_21

    .line 2475
    :goto_40
    :try_start_5f
    sget-object v3, Lo/NetworkInfo;->w:[B
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_27

    const/16 v5, 0x2c

    :try_start_60
    aget-byte v3, v3, v5
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_26

    int-to-byte v3, v3

    :try_start_61
    sget v5, Lo/NetworkInfo;->y:I
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_27

    .line 246
    sget v6, Lo/NetworkInfo;->v:I

    add-int/lit8 v6, v6, 0x15

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lo/NetworkInfo;->x:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    if-eqz v6, :cond_4e

    const/4 v6, 0x0

    goto :goto_41

    :cond_4e
    const/4 v6, 0x1

    :goto_41
    const/4 v7, 0x1

    if-eq v6, v7, :cond_4f

    and-int/lit16 v6, v5, 0x1e3

    not-int v6, v6

    or-int/lit16 v5, v5, 0x1e3

    and-int/2addr v5, v6

    int-to-short v5, v5

    .line 1000
    :try_start_62
    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x5f

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_23

    goto :goto_42

    :catchall_23
    move-exception v0

    move-object v1, v0

    const/16 v5, 0x2c

    goto/16 :goto_45

    :cond_4f
    and-int/lit16 v5, v5, 0x1e3

    int-to-short v5, v5

    .line 2450
    :try_start_63
    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x22

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 190
    :goto_42
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x15

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x126

    int-to-short v6, v6

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/4 v8, 0x0

    .line 3667
    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3733
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_27

    .line 190
    sget v2, Lo/NetworkInfo;->x:I

    add-int/lit8 v2, v2, 0x2a

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lo/NetworkInfo;->v:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    .line 2407
    :try_start_64
    sget-object v2, Lo/NetworkInfo;->w:[B
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_25

    const/16 v5, 0x2c

    :try_start_65
    aget-byte v2, v2, v5

    int-to-byte v2, v2

    sget v3, Lo/NetworkInfo;->y:I

    and-int/lit16 v3, v3, 0x1e3

    int-to-short v3, v3

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x22

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v2, v3, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x15

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v3, v6, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_24

    .line 3635
    :try_start_66
    throw v1

    :catchall_24
    move-exception v0

    goto :goto_43

    :catchall_25
    move-exception v0

    const/16 v5, 0x2c

    :goto_43
    move-object v1, v0

    .line 2446
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 81
    throw v2

    .line 2383
    :cond_50
    throw v1

    :catchall_26
    move-exception v0

    goto :goto_44

    :catchall_27
    move-exception v0

    const/16 v5, 0x2c

    :goto_44
    move-object v1, v0

    .line 2379
    :goto_45
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 3733
    throw v2

    .line 3634
    :cond_51
    throw v1
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_28

    :catchall_28
    move-exception v0

    goto :goto_46

    :catchall_29
    move-exception v0

    move-object/from16 v41, v5

    move/from16 v40, v13

    :goto_46
    move-object v1, v0

    goto/16 :goto_2e

    :cond_52
    move-object/from16 v41, v5

    move-object/from16 v42, v7

    move/from16 v40, v13

    move-object/from16 v37, v14

    const/16 v5, 0x2c

    .line 3657
    :try_start_67
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3658
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_40

    const/4 v4, 0x1

    :try_start_68
    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v7, v4

    .line 3694
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v4, 0x52

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    const/16 v4, 0x337

    int-to-short v4, v4

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v1, v4, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x53

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    sget-object v10, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x2e

    aget-byte v10, v10, v11

    int-to-short v10, v10

    sget-object v11, Lo/NetworkInfo;->w:[B

    const/16 v12, 0x22

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v8, v10, v11}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_3f

    .line 2556
    :try_start_69
    sget v7, Lo/NetworkInfo;->y:I

    const/16 v8, 0x1d

    and-int/2addr v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x171

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x22

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_3e

    const/16 v9, 0x400

    :try_start_6a
    new-array v9, v9, [B
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_40

    const/4 v10, 0x0

    :goto_47
    const/4 v11, 0x1

    :try_start_6b
    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v12, v11

    .line 2535
    sget-object v11, Lo/NetworkInfo;->w:[B

    const/16 v13, 0x52

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    sget-object v13, Lo/NetworkInfo;->w:[B

    const/16 v14, 0x22

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v11, v4, v13}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sget-object v13, Lo/NetworkInfo;->w:[B

    const/16 v14, 0xe

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0x264

    and-int/lit16 v5, v13, 0x264

    or-int/2addr v5, v14

    int-to-short v5, v5

    sget-object v14, Lo/NetworkInfo;->w:[B

    move/from16 v38, v3

    const/4 v3, 0x1

    aget-byte v14, v14, v3

    int-to-byte v14, v14

    invoke-static {v13, v5, v14}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    new-array v13, v3, [Ljava/lang/Class;

    const-class v3, [B

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-virtual {v11, v5, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_3d

    if-lez v3, :cond_53

    const/16 v5, 0x23

    goto :goto_48

    :cond_53
    const/16 v5, 0x3d

    :goto_48
    const/16 v11, 0x23

    if-eq v5, v11, :cond_55

    :cond_54
    const/4 v13, 0x3

    goto/16 :goto_4b

    :cond_55
    int-to-long v11, v10

    .line 3667
    :try_start_6c
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_40

    cmp-long v5, v11, v13

    if-gez v5, :cond_54

    const/4 v5, 0x3

    :try_start_6d
    new-array v11, v5, [Ljava/lang/Object;

    .line 2414
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v11, v12

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    aput-object v9, v11, v5

    sget v5, Lo/NetworkInfo;->y:I

    const/16 v12, 0x1d

    and-int/2addr v5, v12

    int-to-byte v5, v5

    sget-object v12, Lo/NetworkInfo;->w:[B

    const/16 v13, 0x22

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v5, v8, v12}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v12, Lo/NetworkInfo;->w:[B

    aget-byte v12, v12, v22

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0x271

    and-int/lit16 v14, v12, 0x271

    or-int/2addr v13, v14

    int-to-short v13, v13

    sget v14, Lo/NetworkInfo;->y:I

    and-int/lit16 v14, v14, 0x1cf

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v12
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_2b

    const/4 v13, 0x3

    :try_start_6e
    new-array v14, v13, [Ljava/lang/Class;

    const-class v21, [B

    const/16 v24, 0x0

    aput-object v21, v14, v24

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v21, v14, v27

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x2

    aput-object v21, v14, v23

    invoke-virtual {v5, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_2a

    neg-int v3, v3

    neg-int v3, v3

    xor-int v5, v10, v3

    and-int/2addr v3, v10

    const/4 v10, 0x1

    shl-int/2addr v3, v10

    add-int v10, v5, v3

    move/from16 v3, v38

    const/16 v5, 0x2c

    goto/16 :goto_47

    :catchall_2a
    move-exception v0

    goto :goto_49

    :catchall_2b
    move-exception v0

    const/4 v13, 0x3

    :goto_49
    move-object v1, v0

    .line 2348
    :try_start_6f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 267
    throw v2

    .line 2467
    :cond_56
    throw v1
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_2c

    :catchall_2c
    move-exception v0

    move-object v1, v0

    const/16 v10, 0x8

    :goto_4a
    const/16 v11, 0x47

    goto/16 :goto_68

    .line 2554
    :goto_4b
    :try_start_70
    sget v2, Lo/NetworkInfo;->y:I

    const/16 v3, 0x1d

    and-int/2addr v2, v3

    int-to-byte v2, v2

    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x22

    .line 2529
    aget-byte v3, v3, v5

    int-to-byte v3, v3

    invoke-static {v2, v8, v3}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x5e

    .line 2475
    aget-byte v3, v3, v5

    int-to-byte v3, v3

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v9, 0xcc

    aget-byte v5, v5, v9

    neg-int v5, v5

    int-to-short v5, v5

    const/16 v9, 0x4b

    int-to-byte v9, v9

    .line 124
    invoke-static {v3, v5, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_3c

    .line 100
    :try_start_71
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x52

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    aget-byte v5, v5, v9

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lo/NetworkInfo;->w:[B

    aget-byte v4, v4, v22

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0xf9

    and-int/lit16 v9, v4, 0xf9

    or-int/2addr v5, v9

    int-to-short v5, v5

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x47

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v4, v5, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_2d

    goto :goto_4c

    :catchall_2d
    move-exception v0

    move-object v1, v0

    .line 2323
    :try_start_72
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 0
    throw v3

    .line 3692
    :cond_57
    throw v1
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_72} :catch_8
    .catchall {:try_start_72 .. :try_end_72} :catchall_2c

    .line 2383
    :catch_8
    :goto_4c
    :try_start_73
    sget v1, Lo/NetworkInfo;->y:I

    const/16 v3, 0x1d

    and-int/2addr v1, v3

    int-to-byte v1, v1

    .line 267
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v4, 0x22

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    invoke-static {v1, v8, v3}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2344
    sget-object v3, Lo/NetworkInfo;->w:[B

    aget-byte v3, v3, v22
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_2e

    int-to-byte v3, v3

    .line 2467
    sget v4, Lo/NetworkInfo;->x:I

    add-int/lit8 v4, v4, 0x17

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lo/NetworkInfo;->v:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-nez v4, :cond_58

    const/16 v4, 0x49

    goto :goto_4d

    :cond_58
    const/16 v4, 0x2f

    :goto_4d
    const/16 v5, 0x2f

    if-eq v4, v5, :cond_59

    and-int/lit16 v4, v3, -0xfa

    not-int v5, v3

    and-int/lit16 v5, v5, 0xf9

    or-int/2addr v4, v5

    int-to-short v4, v4

    .line 2554
    :try_start_74
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x3c

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    :goto_4e
    const/4 v4, 0x0

    goto :goto_4f

    :cond_59
    xor-int/lit16 v4, v3, 0xf9

    and-int/lit16 v5, v3, 0xf9

    or-int/2addr v4, v5

    int-to-short v4, v4

    .line 3686
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x47

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    goto :goto_4e

    .line 2553
    :goto_4f
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_2e

    goto :goto_50

    :catchall_2e
    move-exception v0

    move-object v1, v0

    .line 2363
    :try_start_75
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 205
    throw v3

    .line 2475
    :cond_5a
    throw v1
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_75} :catch_9
    .catchall {:try_start_75 .. :try_end_75} :catchall_2c

    .line 3686
    :catch_9
    :goto_50
    :try_start_76
    const-class v1, Lo/NetworkInfo;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_3b

    .line 2326
    :try_start_77
    const-class v3, Ljava/lang/Class;

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x93

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x130

    and-int/lit16 v7, v4, 0x130

    or-int/2addr v5, v7

    int-to-short v5, v5

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x8

    .line 3639
    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_3a

    .line 3691
    :try_start_78
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v4, 0xd8

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x2aa

    int-to-short v4, v4

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 3692
    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x53

    .line 2377
    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x2fd

    int-to-short v7, v7

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    .line 3596
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v5, v8

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x5b

    aget-byte v4, v4, v8

    int-to-byte v4, v4

    const/16 v8, 0x1e6

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x22

    .line 112
    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v4, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_3b

    :try_start_79
    new-array v4, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v4, v8

    .line 212
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x53

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v2, v7, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0xe

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x52

    aget-byte v8, v8, v9

    int-to-short v8, v8

    sget v9, Lo/NetworkInfo;->y:I

    and-int/lit16 v9, v9, 0x1cf

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, [B

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_39

    :try_start_7a
    aput-object v2, v5, v10

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_3b

    .line 3707
    :try_start_7b
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v4, 0x2f3

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x238

    int-to-short v4, v4

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3708
    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x67

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    sget v5, Lo/NetworkInfo;->y:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    int-to-short v5, v5

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x188

    aget-byte v7, v7, v8

    neg-int v7, v7

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    .line 3709
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3711
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3712
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 3714
    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0xb

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    int-to-short v8, v7

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v10, 0x66

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    add-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3715
    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3717
    sget-object v8, Lo/NetworkInfo;->w:[B

    const/4 v9, 0x5

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x115

    int-to-short v9, v9

    ushr-int/lit8 v10, v9, 0x2

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x1

    .line 3718
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3720
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3721
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3723
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3726
    new-instance v9, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/List;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3728
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 3729
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 3731
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 3732
    invoke-static {v8, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_d
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3b

    const/4 v11, 0x0

    :goto_51
    if-ge v11, v10, :cond_5b

    .line 3735
    :try_start_7c
    invoke-static {v4, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v11, v12}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_a
    .catchall {:try_start_7c .. :try_end_7c} :catchall_2c

    xor-int/lit8 v12, v11, 0x1

    and-int/lit8 v11, v11, 0x1

    const/4 v14, 0x1

    shl-int/2addr v11, v14

    add-int/2addr v11, v12

    goto :goto_51

    :catch_a
    move-exception v0

    move-object v2, v0

    const/16 v10, 0x8

    const/16 v11, 0x47

    goto/16 :goto_61

    .line 3738
    :cond_5b
    :try_start_7d
    invoke-virtual {v7, v3, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3739
    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_3b

    .line 3749
    :try_start_7e
    sget-object v1, Lo/NetworkInfo;->p:Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_3b

    if-nez v1, :cond_5c

    const/4 v1, 0x1

    goto :goto_52

    :cond_5c
    const/4 v1, 0x0

    :goto_52
    if-eqz v1, :cond_5d

    .line 3751
    :try_start_7f
    sput-object v2, Lo/NetworkInfo;->p:Ljava/lang/Object;

    :cond_5d
    move-object v1, v2

    :goto_53
    if-eqz v15, :cond_5e

    const/16 v2, 0x29

    goto :goto_54

    :cond_5e
    const/4 v2, 0x6

    :goto_54
    const/16 v3, 0x29

    if-eq v2, v3, :cond_5f

    .line 2494
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v3, 0x5b

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x1e6

    int-to-short v3, v3

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x22

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2495
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v4, 0x16

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x19

    aget-byte v4, v4, v5

    int-to-short v4, v4

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x42

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_2c

    :try_start_80
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v6, v3, v8

    .line 2499
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_80
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_80 .. :try_end_80} :catch_b
    .catchall {:try_start_80 .. :try_end_80} :catchall_2c

    :goto_55
    const/16 v10, 0x8

    goto/16 :goto_56

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 2506
    :try_start_81
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_81
    .catch Ljava/lang/ClassNotFoundException; {:try_start_81 .. :try_end_81} :catch_c
    .catchall {:try_start_81 .. :try_end_81} :catchall_2c

    :catch_c
    const/4 v6, 0x0

    goto :goto_55

    .line 2471
    :cond_5f
    :try_start_82
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v3, 0x5b

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    xor-int/lit16 v3, v2, 0x241

    and-int/lit16 v4, v2, 0x241

    or-int/2addr v3, v4

    int-to-short v3, v3

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2472
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v4, 0x16

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x19

    aget-byte v4, v4, v5

    int-to-short v4, v4

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x42

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x5b

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x1e6

    int-to-short v7, v7

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v5, v4

    .line 2475
    const-class v4, Lo/NetworkInfo;
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_3b

    .line 2379
    :try_start_83
    const-class v6, Ljava/lang/Class;

    sget-object v7, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x93

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x130

    and-int/lit16 v9, v7, 0x130

    or-int/2addr v8, v9

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_37

    const/16 v10, 0x8

    :try_start_84
    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_36

    const/4 v6, 0x1

    :try_start_85
    aput-object v4, v5, v6

    .line 2475
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_35

    if-eqz v6, :cond_60

    .line 2486
    :try_start_86
    sget-object v3, Lo/NetworkInfo;->w:[B

    aget-byte v3, v3, v22

    int-to-byte v3, v3

    xor-int/lit16 v4, v3, 0xf9

    and-int/lit16 v5, v3, 0xf9

    or-int/2addr v4, v5

    int-to-short v4, v4

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x47

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 2487
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_2f

    goto :goto_56

    :catchall_2f
    move-exception v0

    move-object v1, v0

    goto/16 :goto_4a

    :cond_60
    :goto_56
    if-eqz v6, :cond_6a

    .line 2517
    :try_start_87
    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    .line 2522
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v3, 0x92

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0xe2

    int-to-short v3, v3

    .line 122
    sget v4, Lo/NetworkInfo;->y:I

    and-int/lit16 v4, v4, 0x1c7

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2527
    const-class v2, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 2392
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 2528
    invoke-virtual {v7, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2529
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    if-nez v15, :cond_61

    const/16 v1, 0x5a

    goto :goto_57

    :cond_61
    const/16 v1, 0x58

    :goto_57
    const/16 v3, 0x5a

    if-eq v1, v3, :cond_62

    const/4 v1, 0x0

    goto :goto_58

    :cond_62
    const/4 v1, 0x1

    .line 3592
    :goto_58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lo/NetworkInfo;->q:Ljava/lang/Object;

    const/16 v4, 0x428

    const/16 v1, 0x450

    new-array v1, v1, [B

    .line 2540
    const-class v2, Lo/NetworkInfo;

    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v5, 0xf

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    .line 2446
    sget v5, Lo/NetworkInfo;->y:I

    const/16 v8, 0x1d

    and-int/2addr v5, v8

    int-to-short v5, v5

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x54

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    .line 100
    invoke-static {v3, v5, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    .line 2541
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_35

    const/4 v3, 0x1

    :try_start_88
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    .line 2383
    sget-object v2, Lo/NetworkInfo;->w:[B
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_34

    .line 2350
    sget v3, Lo/NetworkInfo;->x:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lo/NetworkInfo;->v:I

    const/4 v8, 0x2

    rem-int/2addr v3, v8

    if-nez v3, :cond_63

    const/16 v3, 0x39

    goto :goto_59

    :cond_63
    const/16 v3, 0x57

    :goto_59
    const/16 v8, 0x57

    if-eq v3, v8, :cond_64

    const/16 v3, 0x48

    .line 248
    :try_start_89
    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x25f5

    int-to-short v3, v3

    sget-object v8, Lo/NetworkInfo;->w:[B
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_30

    const/16 v9, 0x2f

    goto :goto_5a

    :catchall_30
    move-exception v0

    move-object v1, v0

    const/16 v11, 0x47

    goto/16 :goto_5e

    :cond_64
    const/16 v3, 0x3a

    .line 3634
    :try_start_8a
    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x18d

    int-to-short v3, v3

    sget-object v8, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    .line 3592
    :goto_5a
    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v2, v3, v8}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Class;

    .line 0
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x53

    aget-byte v3, v3, v9

    int-to-byte v3, v3

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x2e

    .line 216
    aget-byte v9, v9, v11

    int-to-short v9, v9

    sget-object v11, Lo/NetworkInfo;->w:[B

    const/16 v12, 0x22

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v3, v9, v11}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    .line 1778
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_34

    .line 3588
    sget v3, Lo/NetworkInfo;->v:I

    add-int/lit8 v3, v3, 0x6e

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lo/NetworkInfo;->x:I

    const/4 v8, 0x2

    rem-int/2addr v3, v8

    :try_start_8b
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    .line 3670
    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v8, 0x3a

    .line 2348
    aget-byte v5, v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x18d

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x22

    .line 100
    aget-byte v9, v9, v11

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v11, 0x16

    .line 3733
    aget-byte v9, v9, v11

    int-to-byte v9, v9

    const/16 v11, 0x287

    int-to-short v11, v11

    sget-object v12, Lo/NetworkInfo;->w:[B

    const/4 v14, 0x1

    .line 134
    aget-byte v12, v12, v14

    int-to-byte v12, v12

    invoke-static {v9, v11, v12}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v9

    new-array v11, v14, [Ljava/lang/Class;

    .line 1787
    const-class v12, [B

    const/4 v14, 0x0

    aput-object v12, v11, v14

    invoke-virtual {v5, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_33

    .line 134
    :try_start_8c
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x3a

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    sget-object v5, Lo/NetworkInfo;->w:[B

    const/16 v9, 0x22

    .line 2475
    aget-byte v5, v5, v9

    int-to-byte v5, v5

    invoke-static {v3, v8, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lo/NetworkInfo;->w:[B
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_32

    .line 2535
    sget v8, Lo/NetworkInfo;->x:I

    or-int/lit8 v9, v8, 0x31

    const/4 v11, 0x1

    shl-int/2addr v9, v11

    xor-int/lit8 v8, v8, 0x31

    sub-int/2addr v9, v8

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lo/NetworkInfo;->v:I

    const/4 v8, 0x2

    rem-int/2addr v9, v8

    if-nez v9, :cond_65

    const/16 v8, 0x20

    goto :goto_5b

    :cond_65
    const/16 v8, 0x1e

    :goto_5b
    const/16 v9, 0x20

    if-eq v8, v9, :cond_66

    .line 144
    :try_start_8d
    aget-byte v5, v5, v22

    int-to-byte v5, v5

    or-int/lit16 v8, v5, 0xf9

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_32

    const/16 v11, 0x47

    :try_start_8e
    aget-byte v9, v9, v11

    goto :goto_5c

    :cond_66
    const/16 v11, 0x47

    .line 3600
    aget-byte v5, v5, v22

    int-to-byte v5, v5

    and-int/lit16 v8, v5, 0x585a

    int-to-short v8, v8

    sget-object v9, Lo/NetworkInfo;->w:[B

    const/16 v12, 0x3e

    aget-byte v9, v9, v12

    :goto_5c
    int-to-byte v9, v9

    .line 2344
    invoke-static {v5, v8, v9}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_31

    .line 2548
    :try_start_8f
    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v11, v31

    move-object/from16 v10, v34

    move-object/from16 v14, v37

    move/from16 v12, v39

    move/from16 v13, v40

    move-object/from16 v5, v41

    goto/16 :goto_31

    :catchall_31
    move-exception v0

    goto :goto_5d

    :catchall_32
    move-exception v0

    const/16 v11, 0x47

    :goto_5d
    move-object v1, v0

    .line 3600
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 3639
    throw v2

    .line 3692
    :cond_67
    throw v1

    :catchall_33
    move-exception v0

    const/16 v11, 0x47

    move-object v1, v0

    .line 77
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 3600
    throw v2

    .line 3666
    :cond_68
    throw v1

    :catchall_34
    move-exception v0

    const/16 v11, 0x47

    move-object v1, v0

    .line 3639
    :goto_5e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 3670
    throw v2

    .line 2556
    :cond_69
    throw v1

    :catchall_35
    move-exception v0

    goto/16 :goto_62

    :cond_6a
    const/16 v11, 0x47

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2553
    const-class v2, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 3594
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    move-object/from16 v7, v42

    .line 2554
    invoke-virtual {v7, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2555
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    if-nez v15, :cond_6b

    const/4 v1, 0x1

    goto :goto_5f

    :cond_6b
    const/4 v1, 0x0

    .line 81
    :goto_5f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lo/NetworkInfo;->q:Ljava/lang/Object;

    move-object/from16 v2, v41

    const/4 v3, 0x0

    const/16 v5, 0x1d

    const/16 v6, 0x22

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v12, 0x1

    goto/16 :goto_6d

    :catchall_36
    move-exception v0

    goto :goto_60

    :catchall_37
    move-exception v0

    const/16 v10, 0x8

    :goto_60
    const/16 v11, 0x47

    move-object v1, v0

    .line 233
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 3749
    throw v2

    .line 2306
    :cond_6c
    throw v1

    :catch_d
    move-exception v0

    const/16 v10, 0x8

    const/16 v11, 0x47

    move-object v2, v0

    .line 3745
    :goto_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lo/NetworkInfo;->w:[B

    aget-byte v4, v4, v22

    int-to-byte v4, v4

    const/16 v5, 0x1ea

    int-to-short v5, v5

    sget v6, Lo/NetworkInfo;->y:I

    const/16 v7, 0x1d

    and-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v4, 0x2e

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    or-int/lit16 v5, v1, 0x264

    int-to-short v5, v5

    sget-object v6, Lo/NetworkInfo;->w:[B

    aget-byte v4, v6, v4

    int-to-byte v4, v4

    invoke-static {v1, v5, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_46

    const/4 v3, 0x2

    :try_start_90
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 77
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v2, 0x53

    .line 3639
    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x8f

    int-to-short v2, v2

    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x22

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    .line 0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const-class v2, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_38

    :catchall_38
    move-exception v0

    move-object v1, v0

    .line 2450
    :try_start_91
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 216
    throw v2

    .line 2383
    :cond_6d
    throw v1

    :catchall_39
    move-exception v0

    const/16 v10, 0x8

    const/16 v11, 0x47

    move-object v1, v0

    .line 122
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 3639
    throw v2

    .line 2377
    :cond_6e
    throw v1

    :catchall_3a
    move-exception v0

    const/16 v10, 0x8

    const/16 v11, 0x47

    move-object v1, v0

    .line 1787
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 2383
    throw v2

    .line 2310
    :cond_6f
    throw v1

    :catchall_3b
    move-exception v0

    const/16 v10, 0x8

    :goto_62
    const/16 v11, 0x47

    goto/16 :goto_67

    :catchall_3c
    move-exception v0

    const/16 v10, 0x8

    const/16 v11, 0x47

    move-object v1, v0

    .line 208
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 216
    throw v2

    .line 1786
    :cond_70
    throw v1

    :catchall_3d
    move-exception v0

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    move-object v1, v0

    .line 81
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 248
    throw v2

    .line 2475
    :cond_71
    throw v1

    :catchall_3e
    move-exception v0

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    move-object v1, v0

    .line 2344
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 77
    throw v2

    .line 246
    :cond_72
    throw v1

    :catchall_3f
    move-exception v0

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    move-object v1, v0

    .line 1000
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 112
    throw v2

    .line 2392
    :cond_73
    throw v1

    :catchall_40
    move-exception v0

    goto/16 :goto_66

    :catchall_41
    move-exception v0

    move-object/from16 v41, v5

    move/from16 v40, v13

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    move-object v1, v0

    .line 3600
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 3594
    throw v2

    .line 77
    :cond_74
    throw v1

    :catchall_42
    move-exception v0

    move-object/from16 v41, v5

    goto :goto_63

    :catchall_43
    move-exception v0

    move-object/from16 v41, v5

    move/from16 v39, v12

    :goto_63
    move/from16 v40, v13

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    move-object v1, v0

    .line 3686
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 1788
    throw v2

    .line 144
    :cond_75
    throw v1

    :catchall_44
    move-exception v0

    move-object/from16 v41, v5

    goto/16 :goto_65

    :catchall_45
    move-exception v0

    move-object/from16 v41, v5

    move-object/from16 v31, v11

    move/from16 v39, v12

    move/from16 v40, v13

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    move-object v1, v0

    .line 3588
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_76

    throw v2

    .line 3666
    :cond_76
    throw v1

    :catchall_46
    move-exception v0

    goto :goto_67

    :catchall_47
    move-exception v0

    move-object/from16 v41, v5

    move-object/from16 v31, v11

    move/from16 v39, v12

    move/from16 v40, v13

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    move-object v1, v0

    .line 2334
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 2348
    throw v2

    .line 226
    :cond_77
    throw v1

    :catchall_48
    move-exception v0

    move-object/from16 v41, v5

    move-object/from16 v31, v11

    move/from16 v39, v12

    move/from16 v40, v13

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    move-object v1, v0

    .line 2330
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 216
    throw v2

    :cond_78
    throw v1

    :catchall_49
    move-exception v0

    move-object/from16 v41, v5

    move-object/from16 v31, v11

    move/from16 v39, v12

    move/from16 v40, v13

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    move-object v1, v0

    .line 2450
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 205
    throw v2

    .line 2379
    :cond_79
    throw v1
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_46

    :catchall_4a
    move-exception v0

    goto :goto_64

    :catchall_4b
    move-exception v0

    move-object/from16 v30, v1

    move-object/from16 v33, v2

    move-object/from16 v32, v3

    :goto_64
    move-object/from16 v41, v5

    move-object/from16 v31, v11

    :goto_65
    move/from16 v39, v12

    move/from16 v40, v13

    :goto_66
    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    :goto_67
    move-object v1, v0

    :goto_68
    and-int/lit8 v2, v40, 0x1

    or-int/lit8 v3, v40, 0x1

    add-int/2addr v2, v3

    move v3, v2

    move-object/from16 v2, v41

    .line 1786
    :goto_69
    :try_start_92
    array-length v4, v2

    if-ge v3, v4, :cond_7b

    .line 246
    aget-boolean v4, v2, v3

    if-eqz v4, :cond_7a

    const/4 v3, 0x1

    goto :goto_6a

    :cond_7a
    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    goto :goto_69

    :cond_7b
    const/4 v3, 0x0

    :goto_6a
    if-nez v3, :cond_7c

    const/16 v8, 0x5e

    const/4 v3, 0x2

    goto :goto_6b

    :cond_7c
    const/4 v3, 0x2

    const/4 v8, 0x2

    :goto_6b
    if-ne v8, v3, :cond_7d

    const/4 v3, 0x0

    .line 261
    sput-object v3, Lo/NetworkInfo;->q:Ljava/lang/Object;

    .line 262
    sput-object v3, Lo/NetworkInfo;->p:Ljava/lang/Object;

    const/16 v5, 0x1d

    const/16 v6, 0x22

    const/4 v7, 0x2

    const/4 v8, 0x0

    goto/16 :goto_6c

    .line 256
    :cond_7d
    sget-object v2, Lo/NetworkInfo;->w:[B

    const/16 v3, 0x3a

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x208

    int-to-short v3, v3

    sget v4, Lo/NetworkInfo;->y:I

    const/16 v5, 0x1d

    and-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v2
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_e

    const/4 v3, 0x2

    :try_start_93
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x0

    aput-object v2, v4, v1

    .line 218
    sget-object v1, Lo/NetworkInfo;->w:[B

    const/16 v2, 0x53

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x8f

    int-to-short v2, v2

    .line 2527
    sget-object v3, Lo/NetworkInfo;->w:[B

    const/16 v6, 0x22

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/Class;

    .line 2475
    const-class v3, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v2, v8

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_4c

    :catchall_4c
    move-exception v0

    move-object v1, v0

    .line 2522
    :try_start_94
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 77
    throw v2

    .line 3686
    :cond_7e
    throw v1

    :cond_7f
    move-object/from16 v30, v1

    move-object/from16 v33, v2

    move-object/from16 v32, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v31, v11

    move/from16 v39, v12

    move/from16 v40, v13

    const/16 v5, 0x1d

    const/16 v6, 0x22

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x47

    const/4 v13, 0x3

    :goto_6c
    move/from16 v12, v39

    :goto_6d
    or-int/lit8 v1, v40, 0x7e

    const/4 v4, 0x1

    shl-int/2addr v1, v4

    xor-int/lit8 v9, v40, 0x7e

    sub-int/2addr v1, v9

    and-int/lit8 v9, v1, -0x7d

    or-int/lit8 v1, v1, -0x7d

    add-int/2addr v1, v9

    move v13, v1

    move-object v5, v2

    move-object v6, v3

    move-object/from16 v1, v30

    move-object/from16 v11, v31

    move-object/from16 v3, v32

    move-object/from16 v2, v33

    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v10, 0x22

    goto/16 :goto_1a

    :cond_80
    :goto_6e
    return-void

    :catchall_4d
    move-exception v0

    move-object v1, v0

    .line 2475
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 2375
    throw v2

    .line 267
    :cond_81
    throw v1

    :catchall_4e
    move-exception v0

    move-object v1, v0

    .line 205
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 148
    throw v2

    .line 2383
    :cond_82
    throw v1

    :catchall_4f
    move-exception v0

    move-object v1, v0

    .line 3670
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 3692
    throw v2

    .line 3627
    :cond_83
    throw v1

    :catchall_50
    move-exception v0

    move-object v1, v0

    .line 211
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 3634
    throw v2

    .line 141
    :cond_84
    throw v1
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_e

    :catch_e
    move-exception v0

    move-object v1, v0

    .line 272
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(I)I
    .locals 9

    :try_start_0
    sget v0, Lo/NetworkInfo;->x:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    or-int/lit8 v1, v0, 0x15

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x15

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    :try_start_1
    sput v0, Lo/NetworkInfo;->v:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x26

    if-nez v1, :cond_0

    const/16 v1, 0x26

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    :goto_0
    if-eq v1, v0, :cond_1

    sget-object v0, Lo/NetworkInfo;->q:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lo/NetworkInfo;->q:Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    :try_start_3
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    sget-object p0, Lo/NetworkInfo;->w:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget v4, Lo/NetworkInfo;->x:I

    xor-int/lit8 v5, v4, 0x41

    and-int/lit8 v4, v4, 0x41

    shl-int/2addr v4, v2

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    sput v4, Lo/NetworkInfo;->v:I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    rem-int/lit8 v5, v5, 0x2
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    const/16 v4, 0x1d

    :try_start_7
    aget-byte p0, p0, v4

    int-to-byte p0, p0

    const/16 v5, 0x264

    int-to-short v5, v5

    sget v6, Lo/NetworkInfo;->y:I

    and-int/lit16 v6, v6, 0x1c7

    int-to-byte v6, v6

    invoke-static {p0, v5, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget v5, Lo/NetworkInfo;->v:I
    :try_end_8
    .catch Ljava/lang/ArrayStoreException; {:try_start_8 .. :try_end_8} :catch_1

    or-int/lit8 v6, v5, 0x1d

    shl-int/2addr v6, v2

    xor-int/2addr v4, v5

    sub-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    :try_start_9
    sput v4, Lo/NetworkInfo;->x:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2

    rem-int/lit8 v6, v6, 0x2

    :try_start_a
    sget-object v4, Lo/NetworkInfo;->p:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x2e

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0xd4

    and-int/lit16 v6, v4, 0xd4

    or-int/2addr v5, v6

    int-to-short v5, v5

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x9d

    aget-byte v6, v6, v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    neg-int v6, v6

    int-to-byte v6, v6

    :try_start_b
    sget v7, Lo/NetworkInfo;->v:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_2

    add-int/lit8 v7, v7, 0x67

    rem-int/lit16 v8, v7, 0x80

    :try_start_c
    sput v8, Lo/NetworkInfo;->x:I
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_4

    rem-int/lit8 v7, v7, 0x2

    :try_start_d
    invoke-static {v4, v5, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    sget v4, Lo/NetworkInfo;->x:I

    xor-int/lit8 v5, v4, 0xf

    and-int/lit8 v4, v4, 0xf

    shl-int/2addr v4, v2

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lo/NetworkInfo;->v:I

    rem-int/lit8 v5, v5, 0x2

    :try_start_e
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    sget v0, Lo/NetworkInfo;->x:I
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_4

    or-int/lit8 v1, v0, 0x73

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x73

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    :try_start_10
    sput v0, Lo/NetworkInfo;->v:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const/16 v0, 0x57

    if-nez v1, :cond_2

    const/16 v1, 0x43

    goto :goto_2

    :cond_2
    const/16 v1, 0x57

    :goto_2
    if-eq v1, v0, :cond_3

    const/16 v0, 0x55

    :try_start_11
    div-int/2addr v0, v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    return p0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_3
    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    throw v0

    :cond_4
    throw p0

    :catchall_2
    move-exception p0

    throw p0

    :catch_4
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception p0

    :goto_4
    throw p0
.end method

.method public static b(Ljava/lang/Object;)I
    .locals 8

    :try_start_0
    sget v0, Lo/NetworkInfo;->v:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7

    and-int/lit8 v1, v0, 0x5d

    or-int/lit8 v0, v0, 0x5d

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    :try_start_1
    sput v0, Lo/NetworkInfo;->x:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_6

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    sget-object v1, Lo/NetworkInfo;->q:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v3, 0x61

    :try_start_3
    div-int/2addr v3, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    :try_start_4
    sget-object v1, Lo/NetworkInfo;->q:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_1
    :try_start_5
    sget v3, Lo/NetworkInfo;->x:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    add-int/lit8 v3, v3, 0x28

    sub-int/2addr v3, v2

    rem-int/lit16 v4, v3, 0x80

    :try_start_6
    sput v4, Lo/NetworkInfo;->v:I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_3

    rem-int/lit8 v3, v3, 0x2

    :try_start_7
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v0

    sget-object p0, Lo/NetworkInfo;->w:[B

    const/16 v4, 0x1d

    aget-byte p0, p0, v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sget v4, Lo/NetworkInfo;->x:I

    xor-int/lit8 v5, v4, 0x29

    and-int/lit8 v4, v4, 0x29

    shl-int/2addr v4, v2

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lo/NetworkInfo;->v:I

    rem-int/lit8 v5, v5, 0x2

    int-to-byte p0, p0

    const/16 v4, 0x264

    int-to-short v4, v4

    :try_start_8
    sget v5, Lo/NetworkInfo;->y:I

    and-int/lit16 v5, v5, 0x1c7

    int-to-byte v5, v5

    invoke-static {p0, v4, v5}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    sget v4, Lo/NetworkInfo;->x:I

    add-int/lit8 v4, v4, 0x56

    sub-int/2addr v4, v2

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lo/NetworkInfo;->v:I

    rem-int/lit8 v4, v4, 0x2

    const/16 v5, 0x4e

    if-nez v4, :cond_2

    const/16 v4, 0x4e

    goto :goto_2

    :cond_2
    const/16 v4, 0x23

    :goto_2
    if-eq v4, v5, :cond_3

    :try_start_9
    sget-object v4, Lo/NetworkInfo;->p:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object v4, Lo/NetworkInfo;->w:[B

    const/16 v5, 0x2e

    goto :goto_3

    :cond_3
    sget-object v4, Lo/NetworkInfo;->p:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object v4, Lo/NetworkInfo;->w:[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/16 v5, 0x4d

    :goto_3
    sget v6, Lo/NetworkInfo;->x:I

    add-int/lit8 v6, v6, 0x49

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lo/NetworkInfo;->v:I

    rem-int/lit8 v6, v6, 0x2

    :try_start_a
    aget-byte v4, v4, v5

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0xd4

    and-int/lit16 v6, v4, 0xd4

    or-int/2addr v5, v6

    int-to-short v5, v5

    sget-object v6, Lo/NetworkInfo;->w:[B

    const/16 v7, 0x9d

    aget-byte v6, v6, v7

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    sget v4, Lo/NetworkInfo;->v:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4

    xor-int/lit8 v5, v4, 0x9

    and-int/lit8 v4, v4, 0x9

    shl-int/2addr v4, v2

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    :try_start_c
    sput v4, Lo/NetworkInfo;->x:I

    rem-int/lit8 v5, v5, 0x2
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_2

    const/16 v4, 0x2a

    if-eqz v5, :cond_4

    const/16 v5, 0x28

    goto :goto_4

    :cond_4
    const/16 v5, 0x2a

    :goto_4
    if-eq v5, v4, :cond_5

    :try_start_d
    invoke-virtual {p0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/2addr v4, v0

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_5
    :try_start_e
    sget v1, Lo/NetworkInfo;->x:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v3, v1, 0x80
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_1

    :try_start_f
    sput v3, Lo/NetworkInfo;->v:I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_7

    :try_start_10
    rem-int/lit8 v1, v1, 0x2
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_1

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :try_start_11
    array-length v0, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    :cond_7
    return p0

    :catch_1
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    goto :goto_7

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    throw v0

    :cond_8
    throw p0

    :catch_3
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p0

    goto :goto_6

    :catch_5
    move-exception p0

    goto :goto_6

    :catch_6
    move-exception p0

    :goto_6
    throw p0

    :catch_7
    move-exception p0

    :goto_7
    throw p0
.end method

.method public static e(CII)Ljava/lang/Object;
    .locals 7

    :try_start_0
    sget-object v0, Lo/NetworkInfo;->q:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    sget v1, Lo/NetworkInfo;->v:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    and-int/lit8 v2, v1, 0x67

    or-int/lit8 v1, v1, 0x67

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    :try_start_2
    sput v1, Lo/NetworkInfo;->x:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v1, 0x2

    rem-int/2addr v2, v1

    sget v2, Lo/NetworkInfo;->v:I

    xor-int/lit8 v3, v2, 0x2f

    and-int/lit8 v2, v2, 0x2f

    const/4 v4, 0x1

    shl-int/2addr v2, v4

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lo/NetworkInfo;->x:I

    rem-int/2addr v3, v1

    const/16 v2, 0x23

    if-eqz v3, :cond_0

    const/16 v3, 0x4f

    goto :goto_0

    :cond_0
    const/16 v3, 0x23

    :goto_0
    const/4 v5, 0x3

    if-eq v3, v2, :cond_1

    :try_start_3
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    goto :goto_1

    :goto_2
    aput-object p1, v2, v4

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    sget-object p0, Lo/NetworkInfo;->w:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 p2, 0x1d

    :try_start_4
    sget v3, Lo/NetworkInfo;->x:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    add-int/lit8 v3, v3, 0x4b

    rem-int/lit16 v6, v3, 0x80

    :try_start_5
    sput v6, Lo/NetworkInfo;->v:I

    rem-int/2addr v3, v1
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    aget-byte p0, p0, p2

    int-to-byte p0, p0

    const/16 p2, 0x264

    int-to-short p2, p2

    sget v3, Lo/NetworkInfo;->y:I

    and-int/lit16 v3, v3, 0x1c7

    int-to-byte v3, v3

    invoke-static {p0, p2, v3}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget p2, Lo/NetworkInfo;->v:I

    add-int/lit8 p2, p2, 0x16

    sub-int/2addr p2, v4

    rem-int/lit16 v3, p2, 0x80

    sput v3, Lo/NetworkInfo;->x:I

    rem-int/2addr p2, v1

    const/16 v3, 0x61

    if-eqz p2, :cond_2

    const/16 p2, 0x61

    goto :goto_3

    :cond_2
    const/16 p2, 0x36

    :goto_3
    if-eq p2, v3, :cond_3

    :try_start_7
    sget-object p2, Lo/NetworkInfo;->p:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p0, v4, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object p2, Lo/NetworkInfo;->w:[B

    const/16 v3, 0x2e

    goto :goto_4

    :cond_3
    sget-object p2, Lo/NetworkInfo;->p:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object p2, Lo/NetworkInfo;->w:[B

    const/16 v3, 0x12

    :goto_4
    aget-byte p2, p2, v3

    int-to-byte p2, p2

    or-int/lit16 v3, p2, 0xd4

    int-to-short v3, v3

    sget-object v6, Lo/NetworkInfo;->w:[B

    aget-byte v6, v6, p1

    int-to-byte v6, v6

    invoke-static {p2, v3, v6}, Lo/NetworkInfo;->$$c(SII)Ljava/lang/String;

    move-result-object p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    sget v3, Lo/NetworkInfo;->v:I

    add-int/lit8 v3, v3, 0x4d

    rem-int/lit16 v6, v3, 0x80
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    sput v6, Lo/NetworkInfo;->x:I
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    rem-int/2addr v3, v1
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    const/4 v3, 0x1

    :goto_5
    if-eq v3, v4, :cond_5

    const/4 v3, 0x4

    :try_start_b
    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object p1, v4

    const/4 v4, 0x0

    goto :goto_6

    :cond_5
    new-array v3, v5, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, p1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_6
    aput-object p1, v3, v4

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception p0

    goto :goto_9

    :catch_2
    move-exception p0

    goto :goto_9

    :catch_3
    move-exception p0

    goto :goto_8

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    throw p1

    :cond_6
    throw p0

    :catch_4
    move-exception p0

    goto :goto_9

    :catch_5
    move-exception p0

    :goto_8
    throw p0

    :catch_6
    move-exception p0

    :goto_9
    throw p0
.end method
