.class public Lo/NetworkTemplate;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static L:[B = null

.field public static M:[B = null

.field private static O:B = 0x0t

.field private static P:Ljava/lang/Object; = null

.field private static Q:Ljava/lang/Object; = null

.field private static R:J = 0x0L

.field private static final S:[B

.field private static T:I = 0x1

.field private static U:I

.field private static V:I


# direct methods
.method private static $$c(ISI)Ljava/lang/String;
    .locals 8

    :try_start_0
    sget v0, Lo/NetworkTemplate;->T:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    :try_start_1
    sput v1, Lo/NetworkTemplate;->V:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    and-int/lit8 v0, p2, -0x50

    or-int/lit8 p2, p2, -0x50

    add-int/2addr v0, p2

    or-int/lit8 p2, v0, 0x79

    const/4 v1, 0x1

    shl-int/2addr p2, v1

    xor-int/lit8 v0, v0, 0x79

    sub-int/2addr p2, v0

    :try_start_2
    sget-object v0, Lo/NetworkTemplate;->S:[B
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    and-int/lit8 v2, p1, 0x51

    const/16 v3, 0x51

    or-int/2addr p1, v3

    add-int/2addr v2, p1

    or-int/lit8 p1, v2, -0x50

    shl-int/2addr p1, v1

    xor-int/lit8 v2, v2, -0x50

    sub-int/2addr p1, v2

    neg-int p0, p0

    not-int p0, p0

    rsub-int p0, p0, 0x33b

    sub-int/2addr p0, v1

    :try_start_3
    sget v2, Lo/NetworkTemplate;->V:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v4, v2, 0x80
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    sput v4, Lo/NetworkTemplate;->T:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    rem-int/lit8 v2, v2, 0x2
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v4, 0xb

    if-nez v2, :cond_0

    const/16 v2, 0xb

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/16 v5, 0x24

    const/4 v6, 0x0

    if-eq v2, v4, :cond_3

    new-array v2, p1, [B

    not-int v4, p1

    and-int/lit8 p1, p1, -0x1

    shl-int/2addr p1, v1

    add-int/2addr v4, p1

    const/16 p1, 0x22

    if-nez v0, :cond_1

    const/16 v7, 0x55

    goto :goto_1

    :cond_1
    const/16 v7, 0x22

    :goto_1
    if-eq v7, p1, :cond_2

    goto :goto_3

    :cond_2
    move p1, p0

    const/4 p0, 0x0

    goto :goto_7

    :cond_3
    new-array v2, p1, [B

    and-int/lit8 v4, p1, 0x24

    or-int/2addr p1, v5

    add-int/2addr v4, p1

    if-nez v0, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_2

    :goto_3
    sget p1, Lo/NetworkTemplate;->T:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v7, p1, 0x80

    sput v7, Lo/NetworkTemplate;->V:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    const/16 p1, 0x24

    goto :goto_4

    :cond_5
    const/16 p1, 0x47

    :goto_4
    if-eq p1, v5, :cond_6

    goto :goto_5

    :cond_6
    const/16 p1, 0x45

    :try_start_6
    div-int/2addr p1, v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    :try_start_7
    sget p1, Lo/NetworkTemplate;->T:I

    and-int/lit8 v5, p1, 0x2d

    or-int/lit8 p1, p1, 0x2d

    add-int/2addr v5, p1

    rem-int/lit16 p1, v5, 0x80
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    sput p1, Lo/NetworkTemplate;->V:I

    rem-int/lit8 v5, v5, 0x2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v5, :cond_7

    const/16 p1, 0x51

    goto :goto_6

    :cond_7
    const/16 p1, 0x1b

    :goto_6
    move p1, p0

    move p0, v4

    const/4 v3, 0x0

    goto :goto_8

    :catch_0
    move-exception p0

    goto :goto_a

    :catch_1
    move-exception p0

    goto :goto_a

    :catchall_0
    move-exception p0

    throw p0

    :goto_7
    int-to-byte v3, p2

    aput-byte v3, v2, p0

    if-ne p0, v4, :cond_8

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_8
    and-int/lit8 v3, p0, 0x52

    or-int/lit8 p0, p0, 0x52

    add-int/2addr v3, p0

    add-int/lit8 v3, v3, -0x50

    sub-int/2addr v3, v1

    aget-byte p0, v0, p1

    :goto_8
    neg-int p0, p0

    add-int/2addr p2, p0

    and-int/lit8 p0, p1, -0x8

    or-int/lit8 p1, p1, -0x8

    add-int/2addr p0, p1

    xor-int/lit8 p1, p0, 0x9

    and-int/lit8 p0, p0, 0x9

    shl-int/2addr p0, v1

    add-int/2addr p1, p0

    :try_start_9
    sget p0, Lo/NetworkTemplate;->T:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 v5, p0, 0x80
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    sput v5, Lo/NetworkTemplate;->V:I

    rem-int/lit8 p0, p0, 0x2
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/ArrayStoreException; {:try_start_a .. :try_end_a} :catch_2

    move p0, v3

    goto :goto_7

    :catch_2
    move-exception p0

    goto :goto_9

    :catch_3
    move-exception p0

    goto :goto_9

    :catch_4
    move-exception p0

    goto :goto_a

    :catch_5
    move-exception p0

    goto :goto_9

    :catch_6
    move-exception p0

    goto :goto_9

    :catch_7
    move-exception p0

    :goto_9
    throw p0

    :catch_8
    move-exception p0

    :goto_a
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 43

    const/16 v1, 0x34d

    new-array v1, v1, [B

    const-string v2, "\u0006A\u0006\u00ce\t\u00eb\u00153\u00c5\u00faA\u00ec\u00cd\u000f\u0000\u0001\u00f3\r\u0001\u001b\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00db\u00da\u0006\u00ff\u000f\u00f8\u00ee\u0003\u0000\r\u00f7\u00fa3\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\t\u00eb\u00153\u00c0\u0005\u00faA\u00ec\u00c9\u0005\u000f#\u00cd\u000f\u0000\u0001\u00f3\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00ec\u00cd\u000c\u00fd\u0008@\u00ce\u0011\u00f3\u00ff\n\u00fa\u0001\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e80\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00e5\u00db!\u00e8\u00f8\u00fe\u00fd\u00f95\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\r\u0004\u00fd\u001e\u00d1\t\u0000\u00f3\u00cc5\u0002\u00f1.\u00dd\u00fd\u0007\u00f2/\u00db\u00f7\u0005\t\u00f5\u000f\u0002\u00f11\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\r\u0004\u00fdA\u00e0\u00e9\u00f1\u00fd\u0008\u00fd\u0007\u0016\u00e1\u000b\u00fd\u00f9\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ea\u00df\u00ed2\u00dd\u00fd\u0007\u00f4\u000b\u00ff\u0006\u00fc\u0002\u00fe\u00fb\u0003\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ec\u00e1\u00ee\u000e!\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u0002\u00f11\u00d4\u000b\u00ff\"\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\u00fa\u000b\u000b@\u00e1\u00e9\u00f1\u00fd\u0008\u00fd\u0007\u0016\u00e1\u000b\u00fd\u00f9\u0015\u00f9\u0017\u00f8\u00ba\u00ffO\u00ba\u0005\u00f5\u0000\n\u0001\u00fe\u00f8\u00f8S\u00b4\u0007\u00ff\u00f2K\u0015\u00fa\u0016\u00f8\u0015\u00fc\u0014\u00f8\u0015\u00f8\u0018\u00f8\u00cb6\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00eb\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00d1\u0000)\u00db\u00fd\r\u0001\u00f5\u00f9\u00f4\u0002?\u00c0\t\u00f1\u000e\u00fa\u0003\u00f1J\u00c1\u0008\u0001\u00fb\u0008\u00fe\u00f7\u0003\u0004\u00f7\u00fa\u0002\u00f1/\u00cd\u0004\u000f\u00f3\u0004\r\u00f5\u0019\u00df\u0005\u00fd\u0011\u00fa\u0002!\u00db\u00f7\r\u0002\u00ef\u0005\u00fd\u00f9\t\u00eb\u00153\u00c5\u00faA\u00ea\u00e3\u00ed\u0013\u0018\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00fd\u000e\u00fd \u00df\u00ed\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8*\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00e9\u00d7\u00f8\r\u00f7\u0003\u0001\u0001\u0008\u00f7\u00fa\u0008\u0002\u00f9\u0002\u00f11\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u00cb\u0003\u00ed\u00132\u00cb\u0003\u00ed\u00132\u00ff\u00f9\u0007\u00f1\u000f\u0002\u00f1.\u0002\u000f\u00f9\u00ec\u0016\u00fb\u00fa@\u00e1\u00e9\u00f1\u00fd\u0008\u00fd\u0007\u0017\u00ef\u00f8\u00fd\u0004\u000b\u00ed\u000fA\u00ae\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f9)\u00ef\u00ed\u000c#\u00d9\u0007\u00f8\u0008\u00f7\u00fa\u0001\u00f7\u00fd\u00fc\u000e\t\u00eb\u00153\u00c5\u00faA\u00ba\u0007\u00fd\u000c\u00fb\u00f7\u0002\u00f1$\u00de\u0003\u00ff\u000b\u00f3\u00fe\u00fb\u0002\u00f13\u00df\u00ef\u0004\u0003\u00f7\u0001\u000f\u0015\u00ef\u00ed\u000c\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00de\u00ef\u000b\u00f3\r\u00f5\u00fb%\u00ec\u00f6\r\u0004\u00fd\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\u0016\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0002\u00f3\u0017\u00e5\t\u00f5\u000f\t\u00eb\u00153\u00c5\u00faA\u00e5\u00fa\n\u00cd\u0015\u00fe\u00f5\u00fc\u000b\u00fa\u0001\u000f\u00ed\u000c\u001c\u00e3\u00f6\u00ff\u0002\u00f1+\u00db\u0005\u00f5\u000b\u0008\u00f5+\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\u0015\u00fd\u0013\u00f8\u00ee\u0003\u0000\r\u00f7\u00fa \u00eb\u00fc\u0008\u0018\u00e4\u00fd\u0000\u0003\u00f6\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007!\u00df\u00f2\u0010\u00f1\t\u00f9\u00fc\u0005\u00fd\u0005-\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8\u00fd\u000e\u00fd!\u00d7\u000b\u00ee\u0000\u0005\u0011\u00f1\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f95\u00db\u00f7\r\u0002\u00ef\u0005\u00fd\t\u0004\u00f2\t\u00eb\u00153\u00c5\u00faA\u00e5\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4"

    const-string v3, "ISO-8859-1"

    .line 1000
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x34d

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lo/NetworkTemplate;->S:[B

    const/16 v1, 0xaa

    sput v1, Lo/NetworkTemplate;->U:I

    const-wide v1, 0x47d9dc0b4b40f18eL    # 1.374929370888698E38

    .line 3639
    sget v3, Lo/NetworkTemplate;->T:I

    xor-int/lit8 v5, v3, 0x61

    and-int/lit8 v3, v3, 0x61

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    add-int/2addr v5, v3

    rem-int/lit16 v3, v5, 0x80

    sput v3, Lo/NetworkTemplate;->V:I

    const/4 v3, 0x2

    rem-int/2addr v5, v3

    .line 3634
    sput-wide v1, Lo/NetworkTemplate;->R:J

    const/16 v1, -0xf

    sput-byte v1, Lo/NetworkTemplate;->O:B

    const/16 v1, 0x217

    int-to-short v1, v1

    .line 77
    :try_start_0
    sget-object v2, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0x11

    .line 141
    aget-byte v2, v2, v5

    int-to-byte v2, v2

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x135

    aget-byte v5, v5, v7

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    .line 81
    sget-object v2, Lo/NetworkTemplate;->Q:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/16 v5, 0xd2

    const/16 v7, 0x26

    const/4 v8, 0x0

    if-eq v2, v6, :cond_1

    const/16 v2, 0x1bd

    int-to-short v2, v2

    .line 2371
    sget-object v9, Lo/NetworkTemplate;->S:[B

    aget-byte v9, v9, v5

    int-to-byte v9, v9

    sget-object v10, Lo/NetworkTemplate;->S:[B

    .line 2379
    aget-byte v10, v10, v7

    add-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v6

    int-to-byte v10, v10

    invoke-static {v2, v9, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    goto :goto_1

    :cond_1
    move-object v2, v8

    :goto_1
    const/16 v9, 0xc4

    int-to-short v9, v9

    const/16 v10, 0x22

    .line 1771
    :try_start_1
    sget-object v11, Lo/NetworkTemplate;->S:[B

    const/16 v12, 0x19e

    .line 2471
    aget-byte v11, v11, v12

    int-to-byte v11, v11

    sget-object v12, Lo/NetworkTemplate;->S:[B

    aget-byte v12, v12, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    xor-int/lit8 v13, v12, -0x1

    and-int/lit8 v12, v12, -0x1

    shl-int/2addr v12, v6

    add-int/2addr v13, v12

    sget v12, Lo/NetworkTemplate;->T:I

    xor-int/lit8 v14, v12, 0x35

    and-int/lit8 v12, v12, 0x35

    shl-int/2addr v12, v6

    add-int/2addr v14, v12

    rem-int/lit16 v12, v14, 0x80

    sput v12, Lo/NetworkTemplate;->V:I

    rem-int/2addr v14, v3

    if-eqz v14, :cond_2

    int-to-byte v12, v13

    .line 3634
    :try_start_2
    invoke-static {v9, v11, v12}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    .line 1772
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v11, 0x73af

    int-to-short v11, v11

    sget-object v12, Lo/NetworkTemplate;->S:[B

    goto :goto_2

    :cond_2
    int-to-byte v12, v13

    .line 2461
    invoke-static {v9, v11, v12}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    .line 1772
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v11, 0x30e

    int-to-short v11, v11

    sget-object v12, Lo/NetworkTemplate;->S:[B

    :goto_2
    const/16 v13, 0x61

    .line 2475
    aget-byte v12, v12, v13

    int-to-byte v12, v12

    sget-object v13, Lo/NetworkTemplate;->S:[B

    aget-byte v13, v13, v7

    and-int/lit8 v14, v13, 0x1

    or-int/2addr v13, v6

    add-int/2addr v14, v13

    int-to-byte v13, v14

    .line 2494
    invoke-static {v11, v12, v13}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Class;

    .line 1773
    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v11, v8

    check-cast v11, [Ljava/lang/Object;

    .line 1774
    invoke-virtual {v9, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v9, :cond_3

    goto :goto_3

    :catch_0
    move-object v9, v8

    :cond_3
    const/16 v11, 0x1d2

    int-to-short v11, v11

    .line 1785
    :try_start_3
    sget-object v12, Lo/NetworkTemplate;->S:[B

    const/4 v13, 0x6

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    sget-object v13, Lo/NetworkTemplate;->S:[B

    aget-byte v13, v13, v7

    xor-int/lit8 v14, v13, -0x1

    and-int/lit8 v13, v13, -0x1

    shl-int/2addr v13, v6

    add-int/2addr v14, v13

    int-to-byte v13, v14

    invoke-static {v11, v12, v13}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    .line 1786
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x74

    int-to-short v12, v12

    sget-object v13, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x14d

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    aget-byte v14, v14, v10

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Class;

    .line 1787
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    .line 1788
    invoke-virtual {v11, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    nop

    :goto_3
    if-eqz v9, :cond_4

    .line 98
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x28c

    int-to-short v12, v12

    sget-object v13, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x51

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    aget-byte v14, v14, v10

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    check-cast v13, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v11, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    :cond_4
    move-object v11, v8

    :goto_4
    if-eqz v9, :cond_5

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    if-eq v12, v6, :cond_6

    goto :goto_6

    .line 110
    :cond_6
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const/16 v13, 0x228

    int-to-short v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v15, 0xa1

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    sget-object v15, Lo/NetworkTemplate;->S:[B

    aget-byte v15, v15, v10

    neg-int v15, v15

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v13

    move-object v14, v8

    check-cast v14, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v13, v8

    check-cast v13, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v12, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    :goto_6
    move-object v12, v8

    :goto_7
    if-eqz v9, :cond_7

    const/4 v13, 0x1

    goto :goto_8

    :cond_7
    const/4 v13, 0x0

    :goto_8
    if-eq v13, v6, :cond_8

    goto :goto_9

    .line 122
    :cond_8
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const/16 v14, 0x27e

    int-to-short v14, v14

    sget-object v15, Lo/NetworkTemplate;->S:[B

    const/16 v16, 0x51

    aget-byte v15, v15, v16

    int-to-byte v15, v15

    sget-object v16, Lo/NetworkTemplate;->S:[B

    aget-byte v5, v16, v10

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {v14, v15, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    move-object v14, v8

    check-cast v14, [Ljava/lang/Class;

    .line 123
    invoke-virtual {v13, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v13, v8

    check-cast v13, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v5, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_a

    :catch_4
    :goto_9
    move-object v5, v8

    :goto_a
    const/16 v9, 0x23

    if-eqz v11, :cond_9

    .line 2541
    sget v2, Lo/NetworkTemplate;->T:I

    and-int/lit8 v13, v2, 0x63

    or-int/lit8 v2, v2, 0x63

    add-int/2addr v13, v2

    rem-int/lit16 v2, v13, 0x80

    sput v2, Lo/NetworkTemplate;->V:I

    rem-int/2addr v13, v3

    move-object v2, v11

    goto :goto_b

    :cond_9
    if-nez v2, :cond_a

    move-object v2, v8

    goto :goto_b

    .line 3745
    :cond_a
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x130

    int-to-short v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v15, 0x51

    .line 2475
    aget-byte v14, v14, v15

    int-to-byte v14, v14

    sget-object v15, Lo/NetworkTemplate;->S:[B

    aget-byte v15, v15, v4

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    :try_start_8
    new-array v11, v6, [Ljava/lang/Object;

    aput-object v2, v11, v4

    const/16 v2, 0x60

    int-to-short v2, v2

    .line 2399
    sget-object v13, Lo/NetworkTemplate;->S:[B

    aget-byte v13, v13, v9

    int-to-byte v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    aget-byte v14, v14, v6

    int-to-byte v14, v14

    invoke-static {v2, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v13, v6, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v4

    invoke-virtual {v2, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_53

    :goto_b
    if-eqz v5, :cond_b

    goto/16 :goto_d

    :cond_b
    const/16 v5, 0xe9

    int-to-short v5, v5

    .line 262
    :try_start_9
    sget-object v11, Lo/NetworkTemplate;->S:[B

    const/16 v13, 0x11

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    sget-object v13, Lo/NetworkTemplate;->S:[B

    aget-byte v13, v13, v6

    int-to-byte v13, v13

    invoke-static {v5, v11, v13}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    :try_start_a
    new-array v11, v6, [Ljava/lang/Object;

    aput-object v5, v11, v4

    const/16 v5, 0x31d

    int-to-short v5, v5

    .line 3745
    sget-object v13, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0xd

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    aget-byte v14, v14, v6

    int-to-byte v14, v14

    invoke-static {v5, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v13, 0xdc

    int-to-short v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v15, 0x51

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    sget-object v15, Lo/NetworkTemplate;->S:[B

    aget-byte v15, v15, v10

    neg-int v15, v15

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v13

    new-array v14, v6, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v4

    invoke-virtual {v5, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_52

    .line 2355
    sget v11, Lo/NetworkTemplate;->V:I

    or-int/lit8 v13, v11, 0x5f

    shl-int/2addr v13, v6

    xor-int/lit8 v11, v11, 0x5f

    sub-int/2addr v13, v11

    rem-int/lit16 v11, v13, 0x80

    sput v11, Lo/NetworkTemplate;->T:I

    rem-int/2addr v13, v3

    if-nez v13, :cond_c

    :try_start_b
    new-array v11, v6, [Ljava/lang/Object;

    aput-object v5, v11, v4

    const/16 v5, 0x58

    int-to-short v5, v5

    .line 2541
    sget-object v13, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x11

    goto :goto_c

    :cond_c
    new-array v11, v6, [Ljava/lang/Object;

    aput-object v5, v11, v4

    const/16 v5, 0x60

    int-to-short v5, v5

    .line 3634
    sget-object v13, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x23

    .line 3720
    :goto_c
    aget-byte v13, v13, v14

    int-to-byte v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    aget-byte v14, v14, v6

    int-to-byte v14, v14

    invoke-static {v5, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v13, v6, [Ljava/lang/Class;

    .line 211
    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v4

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_51

    :goto_d
    const/4 v11, 0x4

    if-nez v12, :cond_e

    if-eqz v2, :cond_e

    const/16 v12, 0x250

    int-to-short v12, v12

    .line 144
    :try_start_c
    sget-object v13, Lo/NetworkTemplate;->S:[B

    aget-byte v13, v13, v11

    int-to-byte v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    .line 2484
    aget-byte v14, v14, v7

    or-int/lit8 v15, v14, 0x1

    shl-int/2addr v15, v6

    xor-int/2addr v14, v6

    sub-int/2addr v15, v14

    int-to-byte v14, v15

    invoke-static {v12, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v12
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    :try_start_d
    new-array v13, v3, [Ljava/lang/Object;

    aput-object v12, v13, v6

    aput-object v2, v13, v4

    const/16 v12, 0x60

    int-to-short v12, v12

    .line 272
    sget-object v14, Lo/NetworkTemplate;->S:[B

    aget-byte v14, v14, v9

    int-to-byte v14, v14

    sget-object v15, Lo/NetworkTemplate;->S:[B

    .line 1788
    aget-byte v15, v15, v6

    int-to-byte v15, v15

    invoke-static {v12, v14, v15}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    new-array v15, v3, [Ljava/lang/Class;

    .line 2334
    sget-object v16, Lo/NetworkTemplate;->S:[B

    aget-byte v11, v16, v9

    int-to-byte v11, v11

    sget-object v16, Lo/NetworkTemplate;->S:[B

    .line 3733
    aget-byte v3, v16, v6

    int-to-byte v3, v3

    invoke-static {v12, v11, v3}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v15, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v15, v6

    .line 2409
    invoke-virtual {v14, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 81
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 211
    throw v2

    .line 2379
    :cond_d
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    :cond_e
    :goto_e
    const/16 v3, 0x155

    int-to-short v3, v3

    .line 3620
    :try_start_f
    sget-object v11, Lo/NetworkTemplate;->S:[B

    const/4 v13, 0x6

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    sget-object v13, Lo/NetworkTemplate;->S:[B

    aget-byte v13, v13, v7

    sub-int/2addr v13, v6

    int-to-byte v13, v13

    invoke-static {v3, v11, v13}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v11, 0x1a7

    int-to-short v11, v11

    sget-object v13, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x13

    aget-byte v13, v13, v14

    and-int/lit8 v14, v13, -0x1

    or-int/lit8 v13, v13, -0x1

    add-int/2addr v14, v13

    int-to-byte v13, v14

    sget-object v14, Lo/NetworkTemplate;->S:[B

    aget-byte v14, v14, v10

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v11, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_50

    const/16 v11, 0x9

    const/16 v13, 0x60

    int-to-short v13, v13

    .line 148
    :try_start_10
    sget-object v14, Lo/NetworkTemplate;->S:[B

    aget-byte v14, v14, v9

    int-to-byte v14, v14

    sget-object v15, Lo/NetworkTemplate;->S:[B

    aget-byte v15, v15, v6

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    aput-object v8, v11, v4

    aput-object v12, v11, v6

    const/4 v14, 0x2

    aput-object v2, v11, v14

    const/4 v14, 0x3

    aput-object v5, v11, v14

    const/4 v15, 0x4

    aput-object v3, v11, v15

    const/4 v15, 0x5

    aput-object v12, v11, v15

    const/4 v12, 0x6

    aput-object v2, v11, v12

    const/4 v2, 0x7

    aput-object v5, v11, v2

    const/16 v2, 0x8

    aput-object v3, v11, v2

    const/16 v3, 0x9

    new-array v3, v3, [Z

    aput-boolean v4, v3, v4

    aput-boolean v6, v3, v6

    const/4 v5, 0x2

    aput-boolean v6, v3, v5

    aput-boolean v6, v3, v14

    const/4 v5, 0x4

    aput-boolean v6, v3, v5

    const/4 v5, 0x5

    aput-boolean v6, v3, v5

    const/4 v5, 0x6

    aput-boolean v6, v3, v5

    const/4 v5, 0x7

    aput-boolean v6, v3, v5

    aput-boolean v6, v3, v2

    const/16 v5, 0x9

    new-array v5, v5, [Z

    aput-boolean v4, v5, v4

    aput-boolean v4, v5, v6

    const/4 v12, 0x2

    aput-boolean v4, v5, v12

    aput-boolean v4, v5, v14

    const/4 v12, 0x4

    aput-boolean v4, v5, v12

    const/4 v12, 0x5

    aput-boolean v6, v5, v12

    const/4 v12, 0x6

    aput-boolean v6, v5, v12

    const/4 v12, 0x7

    aput-boolean v6, v5, v12

    aput-boolean v6, v5, v2

    const/16 v12, 0x9

    new-array v12, v12, [Z

    aput-boolean v4, v12, v4

    aput-boolean v4, v12, v6

    const/4 v15, 0x2

    aput-boolean v6, v12, v15

    aput-boolean v6, v12, v14

    const/4 v15, 0x4

    aput-boolean v4, v12, v15

    const/4 v15, 0x5

    aput-boolean v4, v12, v15

    const/4 v15, 0x6

    aput-boolean v6, v12, v15

    const/4 v15, 0x7

    aput-boolean v6, v12, v15

    aput-boolean v4, v12, v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 204
    :try_start_11
    sget v15, Lo/NetworkTemplate;->U:I

    xor-int/lit16 v10, v15, 0x241

    and-int/lit16 v15, v15, 0x241

    or-int/2addr v10, v15

    int-to-short v10, v10

    sget-object v15, Lo/NetworkTemplate;->S:[B

    const/16 v19, 0x133

    aget-byte v15, v15, v19

    int-to-byte v15, v15

    sget-object v19, Lo/NetworkTemplate;->S:[B

    aget-byte v19, v19, v7

    add-int/lit8 v14, v19, -0x1

    int-to-byte v14, v14

    invoke-static {v10, v15, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v14, 0x11d

    int-to-short v14, v14

    .line 205
    sget-object v15, Lo/NetworkTemplate;->S:[B

    aget-byte v15, v15, v4

    int-to-byte v15, v15

    sget-object v19, Lo/NetworkTemplate;->S:[B

    const/16 v21, 0x1da

    aget-byte v8, v19, v21

    int-to-byte v8, v8

    invoke-static {v14, v15, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    const/16 v10, 0x1a

    if-lt v8, v10, :cond_f

    const/4 v10, 0x0

    goto :goto_f

    :cond_f
    const/4 v10, 0x1

    :goto_f
    xor-int/2addr v10, v6

    aput-boolean v10, v12, v4
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    const/16 v10, 0x15

    if-lt v8, v10, :cond_10

    const/4 v10, 0x2

    goto :goto_10

    :cond_10
    const/16 v10, 0xa

    :goto_10
    const/16 v14, 0xa

    if-eq v10, v14, :cond_11

    .line 3720
    sget v10, Lo/NetworkTemplate;->T:I

    add-int/lit8 v10, v10, 0x4e

    sub-int/2addr v10, v6

    rem-int/lit16 v14, v10, 0x80

    sput v14, Lo/NetworkTemplate;->V:I

    const/4 v14, 0x2

    rem-int/2addr v10, v14

    const/4 v10, 0x1

    goto :goto_11

    :cond_11
    const/4 v10, 0x0

    :goto_11
    :try_start_12
    aput-boolean v10, v12, v6

    const/4 v10, 0x5

    const/16 v14, 0x15

    if-lt v8, v14, :cond_12

    const/4 v14, 0x1

    goto :goto_12

    :cond_12
    const/4 v14, 0x0

    :goto_12
    aput-boolean v14, v12, v10

    const/16 v10, 0x10

    if-ge v8, v10, :cond_13

    const/4 v14, 0x3

    goto :goto_13

    :cond_13
    const/16 v14, 0x14

    :goto_13
    const/16 v10, 0x14

    if-eq v14, v10, :cond_14

    const/4 v10, 0x1

    :goto_14
    const/4 v14, 0x4

    goto :goto_15

    :cond_14
    const/4 v10, 0x0

    goto :goto_14

    :goto_15
    aput-boolean v10, v12, v14
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    const/16 v10, 0x10

    if-ge v8, v10, :cond_15

    const/4 v8, 0x0

    goto :goto_16

    :cond_15
    const/4 v8, 0x1

    :goto_16
    if-eqz v8, :cond_16

    const/4 v8, 0x0

    goto :goto_17

    .line 2487
    :cond_16
    sget v8, Lo/NetworkTemplate;->T:I

    or-int/lit8 v10, v8, 0x51

    shl-int/2addr v10, v6

    xor-int/lit8 v8, v8, 0x51

    sub-int/2addr v10, v8

    rem-int/lit16 v8, v10, 0x80

    sput v8, Lo/NetworkTemplate;->V:I

    const/4 v8, 0x2

    rem-int/2addr v10, v8

    const/4 v8, 0x1

    :goto_17
    :try_start_13
    aput-boolean v8, v12, v2
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    :catch_5
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_18
    if-nez v8, :cond_7f

    const/16 v14, 0x9

    if-ge v10, v14, :cond_7f

    .line 229
    :try_start_14
    aget-boolean v14, v12, v10
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    if-eqz v14, :cond_7e

    .line 233
    :try_start_15
    aget-boolean v15, v3, v10

    aget-object v2, v11, v10

    aget-boolean v21, v5, v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4e

    const/16 v22, 0xe

    const/16 v23, 0x1c

    if-eqz v15, :cond_1b

    if-eqz v2, :cond_17

    const/16 v24, 0x19

    const/16 v14, 0x19

    goto :goto_19

    :cond_17
    const/16 v24, 0x59

    const/16 v14, 0x59

    :goto_19
    const/16 v4, 0x19

    if-ne v14, v4, :cond_19

    .line 2379
    sget v4, Lo/NetworkTemplate;->V:I

    add-int/lit8 v4, v4, 0x25

    rem-int/lit16 v14, v4, 0x80

    sput v14, Lo/NetworkTemplate;->T:I

    const/4 v14, 0x2

    rem-int/2addr v4, v14

    .line 3596
    :try_start_16
    sget-object v4, Lo/NetworkTemplate;->S:[B

    aget-byte v4, v4, v9

    int-to-byte v4, v4

    sget-object v14, Lo/NetworkTemplate;->S:[B

    .line 2484
    aget-byte v14, v14, v6

    int-to-byte v14, v14

    invoke-static {v13, v4, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v14, 0x94

    int-to-short v14, v14

    .line 3751
    sget-object v26, Lo/NetworkTemplate;->S:[B

    const/16 v27, 0x25

    aget-byte v9, v26, v27

    int-to-byte v9, v9

    sget-object v26, Lo/NetworkTemplate;->S:[B

    .line 3641
    aget-byte v26, v26, v7

    xor-int/lit8 v27, v26, 0x1

    and-int/lit8 v26, v26, 0x1

    shl-int/lit8 v26, v26, 0x1

    add-int v7, v27, v26

    int-to-byte v7, v7

    invoke-static {v14, v9, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 272
    invoke-virtual {v4, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v4, :cond_19

    goto :goto_1a

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 2544
    :try_start_17
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 2388
    throw v4

    .line 112
    :cond_18
    throw v2

    .line 2310
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x1f4

    int-to-short v7, v7

    sget-object v9, Lo/NetworkTemplate;->S:[B

    .line 211
    aget-byte v9, v9, v23

    int-to-byte v9, v9

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v15, 0x2c3

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    .line 1792
    invoke-static {v7, v9, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x264

    int-to-short v2, v2

    .line 272
    sget-object v7, Lo/NetworkTemplate;->S:[B

    aget-byte v7, v7, v22

    int-to-byte v7, v7

    int-to-byte v9, v7

    invoke-static {v2, v7, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    .line 2515
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4e

    :try_start_18
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v4, v7

    const/16 v2, 0x8d

    int-to-short v2, v2

    .line 3663
    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x2d

    aget-byte v7, v7, v9

    neg-int v7, v7

    int-to-byte v7, v7

    sget-object v9, Lo/NetworkTemplate;->S:[B

    .line 134
    aget-byte v9, v9, v6

    int-to-byte v9, v9

    invoke-static {v2, v7, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Class;

    .line 2334
    const-class v9, Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v7, v14

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2475
    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 3751
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 2450
    throw v4

    .line 124
    :cond_1a
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4e

    :cond_1b
    :goto_1a
    if-eqz v15, :cond_38

    .line 2325
    :try_start_1a
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    const/16 v7, 0x31d

    int-to-short v7, v7

    .line 3728
    :try_start_1b
    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0xd

    aget-byte v9, v9, v14

    int-to-byte v9, v9

    sget-object v14, Lo/NetworkTemplate;->S:[B

    aget-byte v14, v14, v6

    int-to-byte v14, v14

    invoke-static {v7, v9, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0x51

    int-to-short v9, v9

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v26, 0x308

    aget-byte v14, v14, v26

    int-to-byte v14, v14

    xor-int/lit8 v26, v14, 0x2a

    and-int/lit8 v27, v14, 0x2a

    or-int v6, v26, v27

    int-to-byte v6, v6

    invoke-static {v9, v14, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    const-wide/32 v26, -0x72b5ccf8

    xor-long v6, v6, v26

    :try_start_1c
    invoke-virtual {v4, v6, v7}, Ljava/util/Random;->setSeed(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_1b
    if-nez v6, :cond_1c

    const/16 v26, 0x4b

    move-object/from16 v26, v1

    move-object/from16 v27, v3

    const/16 v1, 0x4b

    goto :goto_1c

    :cond_1c
    move-object/from16 v26, v1

    move-object/from16 v27, v3

    const/4 v1, 0x1

    :goto_1c
    const/4 v3, 0x1

    if-eq v1, v3, :cond_36

    if-nez v7, :cond_1d

    const/4 v1, 0x6

    goto :goto_1e

    :cond_1d
    if-nez v9, :cond_1e

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1e
    const/16 v1, 0x15

    :goto_1d
    const/4 v3, 0x1

    if-eq v1, v3, :cond_20

    if-nez v14, :cond_1f

    const/4 v1, 0x4

    goto :goto_1e

    :cond_1f
    const/4 v1, 0x3

    goto :goto_1e

    :cond_20
    const/4 v1, 0x5

    .line 2344
    :goto_1e
    :try_start_1d
    new-instance v3, Ljava/lang/StringBuilder;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    and-int/lit8 v30, v1, 0x1

    or-int/lit8 v31, v1, 0x1

    move-object/from16 v32, v5

    add-int v5, v30, v31

    :try_start_1e
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x2e

    .line 2346
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v1, :cond_24

    if-eqz v21, :cond_21

    move/from16 v30, v1

    move-object/from16 v31, v6

    const/4 v1, 0x0

    goto :goto_20

    :cond_21
    move/from16 v30, v1

    move-object/from16 v31, v6

    const/4 v1, 0x1

    :goto_20
    const/4 v6, 0x1

    if-eq v1, v6, :cond_23

    const/16 v1, 0x1a

    .line 2352
    :try_start_1f
    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 2353
    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v29

    if-eqz v29, :cond_22

    or-int/lit8 v29, v1, 0x41

    shl-int/lit8 v29, v29, 0x1

    xor-int/lit8 v1, v1, 0x41

    sub-int v29, v29, v1

    move/from16 v1, v29

    goto :goto_21

    :cond_22
    xor-int/lit8 v33, v1, 0x60

    and-int/lit8 v1, v1, 0x60

    shl-int/2addr v1, v6

    add-int v1, v33, v1

    :goto_21
    int-to-char v1, v1

    .line 2358
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    :catchall_3
    move-exception v0

    move-object v1, v0

    move/from16 v34, v8

    goto/16 :goto_32

    :cond_23
    const/16 v1, 0xc

    .line 2362
    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    not-int v1, v1

    rsub-int v1, v1, 0x2000

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    int-to-char v1, v1

    .line 2363
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    :goto_22
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v30

    move-object/from16 v6, v31

    goto :goto_1f

    :cond_24
    move-object/from16 v31, v6

    .line 2367
    :try_start_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    if-nez v7, :cond_28

    .line 2533
    sget v3, Lo/NetworkTemplate;->V:I

    add-int/lit8 v3, v3, 0x2b

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lo/NetworkTemplate;->T:I

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    if-nez v3, :cond_25

    const/16 v3, 0x2a

    goto :goto_23

    :cond_25
    const/16 v3, 0x20

    :goto_23
    const/16 v5, 0x20

    if-eq v3, v5, :cond_26

    const/4 v3, 0x3

    :try_start_21
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v5, v3

    aput-object v2, v5, v3

    goto :goto_24

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_26

    :cond_26
    const/4 v3, 0x1

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const/4 v1, 0x0

    aput-object v2, v6, v1

    move-object v5, v6

    .line 134
    :goto_24
    sget-object v1, Lo/NetworkTemplate;->S:[B

    const/16 v3, 0x23

    aget-byte v1, v1, v3

    int-to-byte v1, v1

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/4 v6, 0x1

    .line 1792
    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v13, v1, v3}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Class;

    .line 3597
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x23

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v29, 0x1

    .line 3663
    aget-byte v7, v7, v29

    int-to-byte v7, v7

    invoke-static {v13, v3, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v3, v6, v7

    .line 3634
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    move-object v7, v1

    :goto_25
    move-object/from16 v33, v4

    move/from16 v34, v8

    goto/16 :goto_2d

    .line 1772
    :goto_26
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 2461
    throw v2

    .line 272
    :cond_27
    throw v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    :cond_28
    if-nez v9, :cond_29

    const/16 v3, 0x5e

    goto :goto_27

    :cond_29
    const/16 v3, 0x29

    :goto_27
    const/16 v5, 0x5e

    if-eq v3, v5, :cond_33

    if-nez v14, :cond_2e

    .line 130
    sget v3, Lo/NetworkTemplate;->T:I

    and-int/lit8 v5, v3, 0x4d

    or-int/lit8 v3, v3, 0x4d

    add-int/2addr v5, v3

    rem-int/lit16 v3, v5, 0x80

    sput v3, Lo/NetworkTemplate;->V:I

    const/4 v3, 0x2

    rem-int/2addr v5, v3

    if-eqz v5, :cond_2a

    const/4 v5, 0x0

    goto :goto_28

    :cond_2a
    const/4 v5, 0x1

    :goto_28
    if-eqz v5, :cond_2b

    :try_start_23
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v5, v3

    goto :goto_29

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_2b

    :cond_2b
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v5, v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    .line 272
    :goto_29
    sget v1, Lo/NetworkTemplate;->T:I

    add-int/lit8 v1, v1, 0x78

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lo/NetworkTemplate;->V:I

    const/4 v6, 0x2

    rem-int/2addr v1, v6

    if-eqz v1, :cond_2c

    .line 2533
    :try_start_24
    aput-object v2, v5, v3

    const/16 v1, 0x63

    int-to-short v1, v1

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0x67

    goto :goto_2a

    :cond_2c
    const/4 v1, 0x0

    .line 3607
    aput-object v2, v5, v1

    sget-object v3, Lo/NetworkTemplate;->S:[B

    move v1, v13

    const/16 v6, 0x23

    .line 100
    :goto_2a
    aget-byte v3, v3, v6

    int-to-byte v3, v3

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/4 v14, 0x1

    aget-byte v6, v6, v14

    int-to-byte v6, v6

    invoke-static {v1, v3, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    .line 3751
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Class;

    .line 3619
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x23

    aget-byte v3, v3, v14

    int-to-byte v3, v3

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v29, 0x1

    aget-byte v14, v14, v29

    int-to-byte v14, v14

    invoke-static {v13, v3, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v14, 0x0

    aput-object v3, v6, v14

    .line 3751
    const-class v3, Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v3, v6, v14

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    move-object v14, v1

    goto/16 :goto_25

    .line 216
    :goto_2b
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2472
    throw v2

    .line 3660
    :cond_2d
    throw v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    :cond_2e
    const/4 v3, 0x2

    :try_start_26
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x0

    aput-object v2, v5, v1

    .line 3672
    sget-object v1, Lo/NetworkTemplate;->S:[B

    const/16 v3, 0x23

    aget-byte v1, v1, v3

    int-to-byte v1, v1

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v13, v1, v3}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v28, 0x23

    aget-byte v3, v3, v28

    int-to-byte v3, v3

    sget-object v30, Lo/NetworkTemplate;->S:[B

    move-object/from16 v33, v4

    const/16 v29, 0x1

    aget-byte v4, v30, v29

    int-to-byte v4, v4

    invoke-static {v13, v3, v4}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    :try_start_27
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    .line 1771
    sget v5, Lo/NetworkTemplate;->U:I

    xor-int/lit8 v6, v5, 0x1

    and-int/2addr v5, v4

    shl-int/2addr v5, v4

    add-int/2addr v6, v5

    int-to-short v4, v6

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0x133

    .line 216
    aget-byte v5, v5, v6

    int-to-byte v5, v5

    sget-object v6, Lo/NetworkTemplate;->S:[B

    move-object/from16 v30, v7

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Class;

    .line 144
    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v28, 0x23

    aget-byte v6, v6, v28

    int-to-byte v6, v6

    .line 225
    sget-object v29, Lo/NetworkTemplate;->S:[B
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    move/from16 v34, v8

    :try_start_28
    aget-byte v8, v29, v7

    int-to-byte v7, v8

    invoke-static {v13, v6, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 3669
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    .line 2408
    :try_start_29
    sget v4, Lo/NetworkTemplate;->U:I

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-short v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0x133

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/4 v7, 0x1

    .line 3634
    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xed

    int-to-short v5, v5

    sget-object v6, Lo/NetworkTemplate;->S:[B

    .line 2379
    aget-byte v6, v6, v23

    int-to-byte v6, v6

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x26

    aget-byte v7, v7, v8

    xor-int/lit8 v8, v7, 0x1

    const/16 v29, 0x1

    and-int/lit8 v7, v7, 0x1

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2363
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    move-object v6, v1

    move-object/from16 v7, v30

    goto/16 :goto_2e

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 3620
    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 272
    throw v3

    .line 2323
    :cond_2f
    throw v2

    :catchall_7
    move-exception v0

    goto :goto_2c

    :catchall_8
    move-exception v0

    move/from16 v34, v8

    :goto_2c
    move-object v2, v0

    .line 3639
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 107
    throw v3

    .line 2541
    :cond_30
    throw v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_6
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 2392
    :try_start_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lo/NetworkTemplate;->U:I

    const/4 v5, 0x1

    ushr-int/2addr v4, v5

    int-to-short v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B

    aget-byte v5, v5, v23

    int-to-byte v5, v5

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x2c3

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x264

    int-to-short v1, v1

    sget-object v4, Lo/NetworkTemplate;->S:[B

    aget-byte v4, v4, v22

    int-to-byte v4, v4

    int-to-byte v5, v4

    invoke-static {v1, v4, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    const/4 v3, 0x2

    :try_start_2c
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/16 v1, 0x8d

    int-to-short v1, v1

    .line 2408
    sget-object v2, Lo/NetworkTemplate;->S:[B

    const/16 v3, 0x2d

    aget-byte v2, v2, v3

    neg-int v2, v2

    int-to-byte v2, v2

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/4 v5, 0x1

    .line 2401
    aget-byte v3, v3, v5

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_9

    .line 2530
    sget v5, Lo/NetworkTemplate;->T:I

    add-int/lit8 v5, v5, 0x53

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lo/NetworkTemplate;->V:I

    rem-int/2addr v5, v2

    .line 141
    :try_start_2d
    const-class v2, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const-class v2, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    .line 3641
    sget v2, Lo/NetworkTemplate;->V:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lo/NetworkTemplate;->T:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    .line 3733
    :try_start_2e
    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 107
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 2348
    throw v2

    .line 3751
    :cond_31
    throw v1

    :catchall_a
    move-exception v0

    move/from16 v34, v8

    move-object v1, v0

    .line 216
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2348
    throw v2

    .line 2515
    :cond_32
    throw v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    :cond_33
    move-object/from16 v33, v4

    move-object/from16 v30, v7

    move/from16 v34, v8

    .line 3588
    sget v3, Lo/NetworkTemplate;->V:I

    add-int/lit8 v3, v3, 0x6f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lo/NetworkTemplate;->T:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-nez v3, :cond_34

    const/4 v3, 0x0

    .line 2375
    :try_start_30
    array-length v5, v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    :cond_34
    :try_start_31
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x0

    aput-object v2, v3, v1

    .line 2475
    sget-object v1, Lo/NetworkTemplate;->S:[B

    const/16 v4, 0x23

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v13, v1, v4}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0x23

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v13, v4, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_b

    move-object v9, v1

    move-object/from16 v7, v30

    :goto_2d
    move-object/from16 v6, v31

    :goto_2e
    move-object/from16 v1, v26

    move-object/from16 v3, v27

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    move/from16 v8, v34

    goto/16 :goto_1b

    :catchall_b
    move-exception v0

    move-object v1, v0

    .line 208
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 3728
    throw v2

    .line 2348
    :cond_35
    throw v1

    :catchall_c
    move-exception v0

    goto :goto_30

    :catchall_d
    move-exception v0

    goto :goto_2f

    :cond_36
    move-object/from16 v32, v5

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move/from16 v34, v8

    goto :goto_37

    :catchall_e
    move-exception v0

    move-object/from16 v26, v1

    move-object/from16 v27, v3

    move-object/from16 v32, v5

    move/from16 v34, v8

    move-object v1, v0

    .line 2499
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 2407
    throw v2

    .line 2494
    :cond_37
    throw v1
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_f

    :catchall_f
    move-exception v0

    goto :goto_31

    :catchall_10
    move-exception v0

    move-object/from16 v26, v1

    move-object/from16 v27, v3

    :goto_2f
    move-object/from16 v32, v5

    :goto_30
    move/from16 v34, v8

    :goto_31
    move-object v1, v0

    :goto_32
    move/from16 v35, v10

    move-object/from16 v37, v11

    :goto_33
    move-object/from16 v39, v12

    :goto_34
    move/from16 v28, v13

    :goto_35
    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    :goto_36
    const/16 v13, 0x26

    goto/16 :goto_6c

    :cond_38
    move-object/from16 v26, v1

    move-object/from16 v27, v3

    move-object/from16 v32, v5

    move/from16 v34, v8

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_37
    const/16 v1, 0x2570

    :try_start_33
    new-array v1, v1, [B

    .line 2406
    const-class v2, Lo/NetworkTemplate;

    const/16 v3, 0x28e

    int-to-short v3, v3

    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0x1a

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    .line 2407
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4d

    const/4 v3, 0x1

    :try_start_34
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const/16 v2, 0x18d

    int-to-short v2, v2

    .line 3607
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0xd2

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v2, v3, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v6, Lo/NetworkTemplate;->S:[B

    aget-byte v6, v6, v22

    int-to-short v6, v6

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x2d

    aget-byte v7, v7, v8

    neg-int v7, v7

    int-to-byte v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v21, 0x1

    aget-byte v8, v8, v21

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_4c

    const/4 v4, 0x1

    :try_start_35
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v7

    .line 1771
    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0xd2

    .line 3694
    aget-byte v4, v4, v6

    int-to-byte v4, v4

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v2, v4, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x296

    int-to-short v6, v6

    .line 2306
    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x5e

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    or-int/lit8 v8, v7, 0x41

    int-to-byte v8, v8

    .line 2540
    invoke-static {v6, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, [B

    const/16 v21, 0x0

    aput-object v7, v8, v21

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2375
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_4b

    .line 3601
    :try_start_36
    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0xd2

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/4 v6, 0x1

    .line 2461
    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0xed

    int-to-short v4, v4

    .line 2408
    sget-object v5, Lo/NetworkTemplate;->S:[B

    aget-byte v5, v5, v23

    int-to-byte v5, v5

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x26

    aget-byte v6, v6, v7

    xor-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    and-int/2addr v6, v8

    shl-int/2addr v6, v8

    add-int/2addr v7, v6

    int-to-byte v6, v7

    .line 1778
    invoke-static {v4, v5, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4a

    const/16 v2, 0x10

    const/16 v4, 0x2542

    move-object/from16 v5, v26

    const/4 v6, 0x0

    :goto_38
    or-int/lit8 v7, v2, 0x39

    const/4 v8, 0x1

    shl-int/2addr v7, v8

    xor-int/lit8 v21, v2, 0x39

    sub-int v7, v7, v21

    or-int/lit16 v3, v2, 0x255f

    shl-int/2addr v3, v8

    xor-int/lit16 v8, v2, 0x255f

    sub-int/2addr v3, v8

    .line 2421
    :try_start_37
    aget-byte v3, v1, v3

    add-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 2426
    array-length v3, v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_4d

    sub-int/2addr v3, v2

    const/4 v7, 0x3

    :try_start_38
    new-array v8, v7, [Ljava/lang/Object;

    .line 3596
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v8, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v8, v7

    const/4 v3, 0x0

    aput-object v1, v8, v3

    const/16 v1, 0x2d4

    int-to-short v1, v1

    .line 2484
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x13

    .line 2323
    aget-byte v3, v3, v7

    int-to-byte v3, v3

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v29, 0x1

    aget-byte v7, v7, v29

    int-to-byte v7, v7

    invoke-static {v1, v3, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Class;

    .line 2348
    const-class v3, [B

    const/16 v24, 0x0

    aput-object v3, v7, v24

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v29, 0x1

    aput-object v3, v7, v29

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x2

    aput-object v3, v7, v18

    .line 3660
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_48

    .line 2432
    :try_start_39
    sget-object v3, Lo/NetworkTemplate;->Q:Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_4d

    if-nez v3, :cond_39

    const/4 v3, 0x1

    goto :goto_39

    :cond_39
    const/4 v3, 0x0

    :goto_39
    const/4 v7, 0x1

    if-eq v3, v7, :cond_3b

    .line 2443
    :try_start_3a
    sget-object v3, Lo/NetworkTemplate;->Q:Ljava/lang/Object;

    const/16 v8, 0x10

    new-array v8, v8, [B

    const/16 v29, 0x33

    const/16 v24, 0x0

    aput-byte v29, v8, v24

    const/16 v29, 0x2c

    aput-byte v29, v8, v7

    const/16 v7, 0x54

    const/16 v18, 0x2

    aput-byte v7, v8, v18

    const/16 v7, -0x6f

    const/16 v20, 0x3

    aput-byte v7, v8, v20

    const/16 v7, 0x6a

    const/16 v17, 0x4

    aput-byte v7, v8, v17

    const/4 v7, 0x5

    const/16 v35, -0x7b

    aput-byte v35, v8, v7

    const/4 v7, 0x6

    const/16 v35, -0x7c

    aput-byte v35, v8, v7

    const/4 v7, 0x7

    const/16 v35, 0x71

    aput-byte v35, v8, v7

    const/16 v7, -0x54

    const/16 v19, 0x8

    aput-byte v7, v8, v19

    const/16 v7, 0x9

    const/16 v35, -0x2d

    aput-byte v35, v8, v7

    const/16 v7, 0xa

    const/16 v35, 0x62

    aput-byte v35, v8, v7

    const/16 v7, 0xb

    const/16 v29, 0x1

    aput-byte v29, v8, v7

    const/16 v7, 0xc

    const/16 v35, 0x59

    aput-byte v35, v8, v7

    const/16 v7, 0xd

    const/16 v35, -0x2

    aput-byte v35, v8, v7

    const/16 v7, -0x2e

    aput-byte v7, v8, v22

    const/16 v7, 0xf

    const/16 v35, -0xf

    aput-byte v35, v8, v7
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_14

    move/from16 v35, v4

    const/4 v7, 0x4

    :try_start_3b
    new-array v4, v7, [Ljava/lang/Object;

    .line 3751
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/4 v7, 0x3

    aput-object v36, v4, v7

    const/4 v7, 0x2

    aput-object v8, v4, v7

    const v7, 0x72279cc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const/4 v7, 0x0

    aput-object v1, v4, v7

    const/16 v1, 0x271

    int-to-short v1, v1

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x11

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v33, 0x135

    aget-byte v8, v8, v33

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v1, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lo/NetworkTemplate;->P:Ljava/lang/Object;

    check-cast v7, Ljava/lang/ClassLoader;

    const/4 v8, 0x1

    invoke-static {v1, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const/16 v7, 0xd2

    int-to-short v8, v7

    sget-object v7, Lo/NetworkTemplate;->S:[B

    aget-byte v7, v7, v22

    int-to-byte v7, v7

    sget-object v33, Lo/NetworkTemplate;->S:[B

    move-object/from16 v36, v9

    const/16 v19, 0x8

    aget-byte v9, v33, v19

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v8, v7, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v8, Lo/NetworkTemplate;->S:[B

    aget-byte v8, v8, v22

    int-to-short v8, v8

    sget-object v33, Lo/NetworkTemplate;->S:[B
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_12

    move-object/from16 v37, v11

    const/16 v25, 0x2d

    :try_start_3c
    aget-byte v11, v33, v25

    neg-int v11, v11

    int-to-byte v11, v11

    sget-object v33, Lo/NetworkTemplate;->S:[B

    move-object/from16 v38, v14

    const/16 v29, 0x1

    aget-byte v14, v33, v29

    int-to-byte v14, v14

    invoke-static {v8, v11, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v9, v11

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v8, v9, v11

    const-class v8, [B

    const/4 v11, 0x2

    aput-object v8, v9, v11

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v8, v9, v11

    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_11

    move-object v7, v1

    const/16 v1, 0x10

    const/4 v8, 0x4

    goto/16 :goto_3c

    :catchall_11
    move-exception v0

    goto :goto_3a

    :catchall_12
    move-exception v0

    move-object/from16 v37, v11

    :goto_3a
    move-object v1, v0

    .line 2450
    :try_start_3d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 2377
    throw v2

    .line 2383
    :cond_3a
    throw v1
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_13

    :catchall_13
    move-exception v0

    goto :goto_3b

    :catchall_14
    move-exception v0

    move-object/from16 v37, v11

    :goto_3b
    move-object v1, v0

    move/from16 v35, v10

    goto/16 :goto_33

    :cond_3b
    move/from16 v35, v4

    move-object/from16 v36, v9

    move-object/from16 v37, v11

    move-object/from16 v38, v14

    const v3, 0x1e8778e1

    const/16 v4, 0x10

    :try_start_3e
    new-array v4, v4, [B

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-byte v7, v4, v8

    const/16 v7, 0x3a

    const/4 v8, 0x1

    aput-byte v7, v4, v8

    const/16 v7, 0x48

    const/4 v8, 0x2

    aput-byte v7, v4, v8

    const/16 v7, 0x2c

    const/4 v8, 0x3

    aput-byte v7, v4, v8

    const/16 v7, 0x1f

    const/4 v8, 0x4

    aput-byte v7, v4, v8

    const/4 v7, 0x5

    const/16 v8, -0x5a

    aput-byte v8, v4, v7

    const/4 v7, 0x6

    const/16 v8, 0x46

    aput-byte v8, v4, v7

    const/4 v7, 0x7

    const/16 v8, -0x6b

    aput-byte v8, v4, v7

    const/16 v7, 0x46

    const/16 v8, 0x8

    aput-byte v7, v4, v8

    const/16 v7, 0x9

    const/16 v8, -0x4e

    aput-byte v8, v4, v7

    const/16 v7, 0xa

    const/16 v8, 0x19

    aput-byte v8, v4, v7

    const/16 v7, 0xb

    const/16 v8, 0x5c

    aput-byte v8, v4, v7

    const/16 v7, 0xc

    const/16 v8, -0x54

    aput-byte v8, v4, v7

    const/16 v7, 0xd

    const/16 v8, -0x6d

    aput-byte v8, v4, v7

    const/16 v7, 0x61

    aput-byte v7, v4, v22

    const/16 v7, 0xf

    const/16 v8, -0x45

    aput-byte v8, v4, v7

    .line 3110
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    .line 3624
    check-cast v4, [B

    .line 3112
    sget-byte v7, Lo/NetworkTemplate;->O:B

    sget-wide v8, Lo/NetworkTemplate;->R:J

    .line 3669
    invoke-static {v4, v7, v8, v9}, Lo/NetworkState;->c([BBJ)V

    .line 3116
    invoke-static {v3}, Lo/NetworkRecommendationProvider;->e(I)[[B

    move-result-object v3

    .line 3119
    new-instance v7, Lo/NetworkScorerAppData;

    const/4 v8, 0x4

    invoke-direct {v7, v1, v8, v4, v3}, Lo/NetworkScorerAppData;-><init>(Ljava/io/InputStream;I[B[[B)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_47

    const/16 v1, 0x10

    :goto_3c
    int-to-long v3, v1

    const/4 v9, 0x1

    :try_start_3f
    new-array v11, v9, [Ljava/lang/Object;

    .line 112
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_46

    .line 272
    sget v4, Lo/NetworkTemplate;->T:I

    add-int/lit8 v4, v4, 0x34

    sub-int/2addr v4, v9

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lo/NetworkTemplate;->V:I

    const/4 v9, 0x2

    rem-int/2addr v4, v9

    if-eqz v4, :cond_3c

    const/4 v4, 0x0

    :try_start_40
    aput-object v3, v11, v4

    .line 2408
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v4, 0x33

    aget-byte v3, v3, v4

    int-to-short v3, v3

    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x13

    aget-byte v4, v4, v9
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_15

    goto :goto_3d

    :catchall_15
    move-exception v0

    move-object v1, v0

    move/from16 v35, v10

    move-object/from16 v39, v12

    move/from16 v28, v13

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    goto/16 :goto_65

    :cond_3c
    const/4 v4, 0x0

    :try_start_41
    aput-object v3, v11, v4

    .line 2487
    sget-object v3, Lo/NetworkTemplate;->S:[B

    aget-byte v3, v3, v22

    int-to-short v3, v3

    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x2d

    aget-byte v4, v4, v9

    :goto_3d
    neg-int v4, v4

    int-to-byte v4, v4

    .line 2499
    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/4 v14, 0x1

    aget-byte v9, v9, v14

    int-to-byte v9, v9

    invoke-static {v3, v4, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_46

    .line 2506
    sget v4, Lo/NetworkTemplate;->T:I

    add-int/lit8 v4, v4, 0x63

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lo/NetworkTemplate;->V:I

    const/4 v9, 0x2

    rem-int/2addr v4, v9

    if-eqz v4, :cond_3d

    const/16 v4, 0xc5e

    int-to-short v4, v4

    .line 2472
    :try_start_42
    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x47

    aget-byte v9, v9, v14

    int-to-byte v9, v9

    sget-object v14, Lo/NetworkTemplate;->S:[B
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_15

    goto :goto_3e

    :cond_3d
    const/16 v4, 0x140

    int-to-short v4, v4

    .line 2377
    :try_start_43
    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x2e

    aget-byte v9, v9, v14

    int-to-byte v9, v9

    sget-object v14, Lo/NetworkTemplate;->S:[B

    :goto_3e
    const/16 v17, 0x188

    .line 3728
    aget-byte v14, v14, v17

    int-to-byte v14, v14

    invoke-static {v4, v9, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Class;

    .line 1778
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v9, v14, v17

    invoke-virtual {v3, v4, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 3119
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_46

    if-eqz v15, :cond_53

    .line 2452
    :try_start_44
    sget-object v3, Lo/NetworkTemplate;->Q:Ljava/lang/Object;

    if-nez v3, :cond_3e

    move-object/from16 v3, v30

    goto :goto_3f

    :cond_3e
    move-object/from16 v3, v36

    .line 112
    :goto_3f
    sget-object v4, Lo/NetworkTemplate;->Q:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_29

    if-nez v4, :cond_3f

    const/16 v4, 0x23

    const/16 v9, 0x23

    goto :goto_40

    :cond_3f
    const/16 v9, 0x19

    const/16 v4, 0x23

    :goto_40
    if-eq v9, v4, :cond_40

    move-object/from16 v4, v31

    goto :goto_41

    :cond_40
    move-object/from16 v4, v38

    :goto_41
    const/4 v9, 0x1

    :try_start_45
    new-array v11, v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v11, v14

    .line 1788
    sget v14, Lo/NetworkTemplate;->U:I

    and-int/lit8 v17, v14, 0x1

    or-int/2addr v14, v9

    add-int v9, v17, v14

    int-to-short v9, v9

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v17, 0x133

    aget-byte v14, v14, v17

    int-to-byte v14, v14

    sget-object v17, Lo/NetworkTemplate;->S:[B

    const/4 v1, 0x1

    aget-byte v8, v17, v1

    int-to-byte v8, v8

    invoke-static {v9, v14, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Class;

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v17, 0x23

    aget-byte v14, v14, v17

    int-to-byte v14, v14

    sget-object v17, Lo/NetworkTemplate;->S:[B
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_23

    move-object/from16 v39, v12

    :try_start_46
    aget-byte v12, v17, v1

    int-to-byte v1, v12

    invoke-static {v13, v14, v1}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v9, v12

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_22

    const/16 v8, 0x400

    :try_start_47
    new-array v8, v8, [B

    move/from16 v9, v35

    :goto_42
    if-lez v9, :cond_43

    .line 124
    array-length v11, v8

    .line 3597
    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_21

    const/4 v12, 0x3

    :try_start_48
    new-array v14, v12, [Ljava/lang/Object;

    .line 3728
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v14, v12

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v14, v17

    aput-object v8, v14, v11

    sget-object v11, Lo/NetworkTemplate;->S:[B

    aget-byte v11, v11, v22

    int-to-short v11, v11

    sget-object v12, Lo/NetworkTemplate;->S:[B

    const/16 v17, 0x2d

    aget-byte v12, v12, v17

    neg-int v12, v12

    int-to-byte v12, v12

    sget-object v17, Lo/NetworkTemplate;->S:[B
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_18

    move/from16 v35, v10

    const/16 v29, 0x1

    :try_start_49
    aget-byte v10, v17, v29

    int-to-byte v10, v10

    invoke-static {v11, v12, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v11, 0x274

    int-to-short v11, v11

    sget-object v12, Lo/NetworkTemplate;->S:[B

    const/16 v17, 0x2e

    aget-byte v12, v12, v17

    int-to-byte v12, v12

    sget-object v17, Lo/NetworkTemplate;->S:[B

    const/16 v40, 0x188

    aget-byte v17, v17, v40

    const/16 v24, 0x0

    add-int/lit8 v17, v17, 0x0

    move-object/from16 v40, v6

    const/16 v29, 0x1

    add-int/lit8 v6, v17, -0x1

    int-to-byte v6, v6

    invoke-static {v11, v12, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Class;

    const-class v11, [B

    aput-object v11, v12, v24

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v11, v12, v17

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v11, v12, v17

    invoke-virtual {v10, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_17

    const/4 v10, -0x1

    if-eq v6, v10, :cond_44

    const/4 v10, 0x3

    :try_start_4a
    new-array v11, v10, [Ljava/lang/Object;

    .line 2494
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v10, 0x0

    .line 2487
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v11, v14

    aput-object v8, v11, v10

    sget v10, Lo/NetworkTemplate;->U:I

    add-int/2addr v10, v14

    int-to-short v10, v10

    .line 2369
    sget-object v12, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x133

    aget-byte v12, v12, v14

    int-to-byte v12, v12

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v17, 0x1

    .line 2399
    aget-byte v14, v14, v17

    int-to-byte v14, v14

    invoke-static {v10, v12, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v12, 0x282

    int-to-short v12, v12

    sget-object v14, Lo/NetworkTemplate;->S:[B

    .line 2379
    aget-byte v14, v14, v23

    int-to-byte v14, v14

    xor-int/lit8 v17, v14, 0x4a

    and-int/lit8 v41, v14, 0x4a

    move-object/from16 v42, v8

    or-int v8, v17, v41

    int-to-byte v8, v8

    invoke-static {v12, v14, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Class;

    .line 3660
    const-class v12, [B

    const/16 v17, 0x0

    aput-object v12, v14, v17

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v12, v14, v17

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v12, v14, v17

    .line 2452
    invoke-virtual {v10, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_16

    neg-int v6, v6

    or-int v8, v9, v6

    const/4 v10, 0x1

    shl-int/2addr v8, v10

    xor-int/2addr v6, v9

    sub-int v9, v8, v6

    move/from16 v10, v35

    move-object/from16 v6, v40

    move-object/from16 v8, v42

    goto/16 :goto_42

    :catchall_16
    move-exception v0

    move-object v1, v0

    .line 3592
    :try_start_4b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 3588
    throw v2

    .line 1778
    :cond_41
    throw v1

    :catchall_17
    move-exception v0

    goto :goto_43

    :catchall_18
    move-exception v0

    move/from16 v35, v10

    :goto_43
    move-object v1, v0

    .line 3634
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 3588
    throw v2

    .line 1772
    :cond_42
    throw v1
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_24

    :cond_43
    move-object/from16 v40, v6

    move/from16 v35, v10

    .line 2475
    :cond_44
    :try_start_4c
    sget v6, Lo/NetworkTemplate;->U:I

    and-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    or-int/2addr v6, v8

    add-int/2addr v7, v6

    int-to-short v6, v7

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x133

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    .line 3663
    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x121

    int-to-short v7, v7

    .line 2548
    sget-object v8, Lo/NetworkTemplate;->S:[B

    aget-byte v8, v8, v23

    int-to-byte v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x22

    aget-byte v9, v9, v10

    neg-int v9, v9

    int-to-byte v9, v9

    .line 2499
    invoke-static {v7, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_20

    .line 141
    :try_start_4d
    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    int-to-short v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/4 v9, 0x6

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/4 v10, 0x1

    .line 3666
    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x21a

    int-to-short v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x2e

    .line 3733
    aget-byte v9, v9, v10

    int-to-byte v9, v9

    sget-object v10, Lo/NetworkTemplate;->S:[B

    const/16 v11, 0x188

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 2399
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_1f

    .line 3596
    :try_start_4e
    sget v6, Lo/NetworkTemplate;->U:I

    or-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    shl-int/2addr v7, v8

    xor-int/2addr v6, v8

    sub-int/2addr v7, v6

    int-to-short v6, v7

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x133

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    .line 2383
    invoke-static {v6, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0xed

    int-to-short v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    aget-byte v8, v8, v23

    int-to-byte v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x26

    .line 2484
    aget-byte v9, v9, v10

    or-int/lit8 v10, v9, 0x1

    const/4 v11, 0x1

    shl-int/2addr v10, v11

    xor-int/2addr v9, v11

    sub-int/2addr v10, v9

    int-to-byte v9, v10

    invoke-static {v7, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1e

    const/16 v1, 0x264

    int-to-short v1, v1

    .line 3619
    :try_start_4f
    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x14d

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x8

    aget-byte v7, v7, v8

    neg-int v7, v7

    int-to-byte v7, v7

    .line 3606
    invoke-static {v1, v6, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v6, 0x177

    int-to-short v6, v6

    .line 3620
    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/4 v8, 0x0

    .line 2475
    aget-byte v7, v7, v8

    int-to-byte v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x173

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    .line 2530
    const-class v7, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v8, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v7, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_24

    .line 1788
    :try_start_50
    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x23

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/4 v9, 0x1

    .line 262
    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v13, v6, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0xd2

    int-to-short v9, v8

    .line 3745
    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0xa1

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    sget-object v10, Lo/NetworkTemplate;->S:[B

    const/16 v11, 0x22

    .line 3728
    aget-byte v10, v10, v11

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v9, v8, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1d

    const/4 v8, 0x0

    :try_start_51
    aput-object v6, v7, v8
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_24

    .line 3600
    :try_start_52
    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x23

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/4 v10, 0x1

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    invoke-static {v13, v6, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0xa1

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    sget-object v10, Lo/NetworkTemplate;->S:[B

    const/16 v11, 0x22

    aget-byte v10, v10, v11

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v9, v8, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_1c

    const/4 v8, 0x1

    :try_start_53
    aput-object v6, v7, v8

    const/4 v6, 0x0

    .line 3627
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v6, 0x2

    aput-object v8, v7, v6

    .line 3624
    invoke-virtual {v1, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_24

    .line 3751
    :try_start_54
    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x23

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v13, v6, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x126

    int-to-short v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x43

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x8

    aget-byte v9, v9, v10

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1b

    .line 1772
    :try_start_55
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0x23

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/4 v8, 0x1

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v13, v3, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x43

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x8

    aget-byte v8, v8, v9

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v7, v6, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1a

    .line 3639
    :try_start_56
    sget-object v3, Lo/NetworkTemplate;->P:Ljava/lang/Object;

    if-nez v3, :cond_45

    const/4 v3, 0x0

    goto :goto_44

    :cond_45
    const/4 v3, 0x1

    :goto_44
    const/4 v4, 0x1

    if-eq v3, v4, :cond_47

    .line 3641
    const-class v3, Lo/NetworkTemplate;
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_28

    .line 2471
    :try_start_57
    const-class v4, Ljava/lang/Class;

    const/16 v6, 0x13d

    int-to-short v6, v6

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x11

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x22

    .line 3669
    aget-byte v8, v8, v9

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2475
    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_19

    :try_start_58
    sput-object v3, Lo/NetworkTemplate;->P:Ljava/lang/Object;

    goto :goto_45

    :catchall_19
    move-exception v0

    move-object v1, v0

    .line 1771
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 2543
    throw v2

    .line 77
    :cond_46
    throw v1

    :cond_47
    :goto_45
    move/from16 v42, v2

    move/from16 v28, v13

    goto/16 :goto_52

    :catchall_1a
    move-exception v0

    move-object v1, v0

    .line 2544
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 3641
    throw v2

    .line 119
    :cond_48
    throw v1

    :catchall_1b
    move-exception v0

    move-object v1, v0

    .line 2330
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 1788
    throw v2

    .line 262
    :cond_49
    throw v1
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_28

    :catchall_1c
    move-exception v0

    move-object v1, v0

    .line 1772
    :try_start_59
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 3751
    throw v2

    .line 2399
    :cond_4a
    throw v1

    :catchall_1d
    move-exception v0

    move-object v1, v0

    .line 2499
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 2487
    throw v2

    .line 2475
    :cond_4b
    throw v1

    :catchall_1e
    move-exception v0

    move-object v1, v0

    .line 1772
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 262
    throw v2

    .line 141
    :cond_4c
    throw v1

    :catchall_1f
    move-exception v0

    move-object v1, v0

    .line 2484
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 3112
    throw v2

    .line 2379
    :cond_4d
    throw v1

    :catchall_20
    move-exception v0

    move-object v1, v0

    .line 262
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 2515
    throw v2

    .line 2530
    :cond_4e
    throw v1
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_24

    :catchall_21
    move-exception v0

    move/from16 v35, v10

    goto :goto_47

    :catchall_22
    move-exception v0

    move/from16 v35, v10

    goto :goto_46

    :catchall_23
    move-exception v0

    move/from16 v35, v10

    move-object/from16 v39, v12

    :goto_46
    move-object v1, v0

    .line 0
    :try_start_5a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 2369
    throw v2

    .line 272
    :cond_4f
    throw v1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_7
    .catchall {:try_start_5a .. :try_end_5a} :catchall_24

    :catchall_24
    move-exception v0

    :goto_47
    move-object v1, v0

    goto/16 :goto_48

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 3592
    :try_start_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1f0

    int-to-short v5, v5

    sget-object v6, Lo/NetworkTemplate;->S:[B

    aget-byte v6, v6, v23

    int-to-byte v6, v6

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x2c3

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x264

    int-to-short v5, v5

    sget-object v6, Lo/NetworkTemplate;->S:[B

    aget-byte v6, v6, v22

    int-to-byte v6, v6

    int-to-byte v7, v6

    invoke-static {v5, v6, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_24

    const/4 v5, 0x2

    :try_start_5c
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v1, v6, v5

    const/4 v1, 0x0

    aput-object v2, v6, v1

    const/16 v1, 0x8d

    int-to-short v1, v1

    .line 3663
    sget-object v2, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0x2d

    aget-byte v2, v2, v5

    neg-int v2, v2

    int-to-byte v2, v2

    .line 1778
    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/4 v7, 0x1

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    .line 3633
    const-class v2, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const-class v2, Ljava/lang/Throwable;

    const/4 v7, 0x1

    aput-object v2, v5, v7

    .line 2510
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_25

    :catchall_25
    move-exception v0

    move-object v1, v0

    .line 2487
    :try_start_5d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 2348
    throw v2

    .line 2452
    :cond_50
    throw v1
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_24

    .line 3112
    :goto_48
    :try_start_5e
    sget-object v2, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0x23

    aget-byte v2, v2, v5

    int-to-byte v2, v2

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v13, v2, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x126

    int-to-short v5, v5

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x43

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x8

    aget-byte v7, v7, v8

    neg-int v7, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_27

    .line 2323
    :try_start_5f
    sget-object v2, Lo/NetworkTemplate;->S:[B

    const/16 v3, 0x23

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v13, v2, v3}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0x43

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x8

    aget-byte v6, v6, v7

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v5, v3, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_26

    .line 3635
    :try_start_60
    throw v1

    :catchall_26
    move-exception v0

    move-object v1, v0

    .line 2472
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 272
    throw v2

    .line 3682
    :cond_51
    throw v1

    :catchall_27
    move-exception v0

    move-object v1, v0

    .line 2409
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 2533
    throw v2

    .line 3663
    :cond_52
    throw v1
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_28

    :catchall_28
    move-exception v0

    goto :goto_49

    :catchall_29
    move-exception v0

    move/from16 v35, v10

    move-object/from16 v39, v12

    :goto_49
    move-object v1, v0

    goto/16 :goto_34

    :cond_53
    move-object/from16 v40, v6

    move/from16 v35, v10

    move-object/from16 v39, v12

    .line 3657
    :try_start_61
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3658
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_45

    const/4 v4, 0x1

    :try_start_62
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v6, v4

    const/16 v1, 0x337

    int-to-short v1, v1

    .line 2348
    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x13

    .line 2499
    aget-byte v4, v4, v7

    or-int/lit8 v7, v4, -0x1

    const/4 v8, 0x1

    shl-int/2addr v7, v8

    xor-int/lit8 v4, v4, -0x1

    sub-int/2addr v7, v4

    int-to-byte v4, v7

    sget-object v7, Lo/NetworkTemplate;->S:[B

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v1, v4, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v7, v8, [Ljava/lang/Class;

    .line 2401
    sget-object v8, Lo/NetworkTemplate;->S:[B

    aget-byte v8, v8, v22

    int-to-short v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x2d

    .line 2330
    aget-byte v9, v9, v10

    neg-int v9, v9

    int-to-byte v9, v9

    sget-object v10, Lo/NetworkTemplate;->S:[B

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 3663
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_44

    const/16 v6, 0x171

    int-to-short v6, v6

    .line 2484
    :try_start_63
    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x2c3

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    .line 2358
    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    .line 2383
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_43

    const/16 v8, 0x400

    :try_start_64
    new-array v8, v8, [B
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_45

    const/4 v9, 0x0

    .line 272
    :goto_4a
    sget v10, Lo/NetworkTemplate;->V:I

    xor-int/lit8 v11, v10, 0x23

    const/16 v12, 0x23

    and-int/2addr v10, v12

    const/4 v14, 0x1

    shl-int/2addr v10, v14

    add-int/2addr v11, v10

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lo/NetworkTemplate;->T:I

    const/4 v10, 0x2

    rem-int/2addr v11, v10

    const/4 v10, 0x0

    if-nez v11, :cond_54

    :try_start_65
    new-array v11, v10, [Ljava/lang/Object;

    .line 2487
    aput-object v8, v11, v10
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_2a

    const/16 v14, 0x5dc2

    const/16 v10, 0x5dc2

    goto :goto_4c

    :catchall_2a
    move-exception v0

    move-object v1, v0

    move/from16 v28, v13

    :goto_4b
    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    goto/16 :goto_64

    :cond_54
    const/4 v11, 0x1

    :try_start_66
    new-array v14, v11, [Ljava/lang/Object;

    aput-object v8, v14, v10

    const/16 v10, 0x337

    move-object v11, v14

    :goto_4c
    int-to-short v10, v10

    .line 3728
    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v17, 0x13

    aget-byte v14, v14, v17

    xor-int/lit8 v17, v14, -0x1

    and-int/lit8 v14, v14, -0x1

    const/16 v28, 0x1

    shl-int/lit8 v14, v14, 0x1

    add-int v14, v17, v14

    int-to-byte v14, v14

    sget-object v17, Lo/NetworkTemplate;->S:[B

    .line 3663
    aget-byte v12, v17, v28

    int-to-byte v12, v12

    invoke-static {v10, v14, v12}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v12, 0x274

    int-to-short v12, v12

    .line 3682
    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v17, 0x2e

    aget-byte v14, v14, v17

    int-to-byte v14, v14

    sget-object v17, Lo/NetworkTemplate;->S:[B

    const/16 v28, 0x188

    .line 2379
    aget-byte v17, v17, v28
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_42

    move/from16 v42, v2

    move/from16 v28, v13

    const/4 v13, 0x1

    add-int/lit8 v2, v17, -0x1

    int-to-byte v2, v2

    :try_start_67
    invoke-static {v12, v14, v2}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    new-array v12, v13, [Ljava/lang/Class;
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_41

    .line 216
    sget v13, Lo/NetworkTemplate;->T:I

    add-int/lit8 v13, v13, 0x27

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lo/NetworkTemplate;->V:I

    const/4 v14, 0x2

    rem-int/2addr v13, v14

    if-eqz v13, :cond_55

    .line 1772
    :try_start_68
    const-class v13, [B

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_2b

    goto :goto_4d

    :catchall_2b
    move-exception v0

    move-object v1, v0

    goto :goto_4b

    .line 2484
    :cond_55
    :try_start_69
    const-class v13, [B

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2541
    :goto_4d
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_41

    if-lez v2, :cond_57

    int-to-long v10, v9

    .line 3667
    :try_start_6a
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_2d

    cmp-long v14, v10, v12

    if-gez v14, :cond_57

    const/4 v10, 0x3

    :try_start_6b
    new-array v11, v10, [Ljava/lang/Object;

    .line 3692
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    aput-object v8, v11, v10

    sget-object v10, Lo/NetworkTemplate;->S:[B

    const/16 v12, 0x2c3

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    sget-object v12, Lo/NetworkTemplate;->S:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v6, v10, v12}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v12, 0x282

    int-to-short v12, v12

    sget-object v13, Lo/NetworkTemplate;->S:[B

    aget-byte v13, v13, v23

    int-to-byte v13, v13

    xor-int/lit8 v14, v13, 0x4a

    and-int/lit8 v17, v13, 0x4a

    or-int v14, v14, v17

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    const-class v13, [B

    const/16 v17, 0x0

    aput-object v13, v14, v17

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v13, v14, v17

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v13, v14, v17

    invoke-virtual {v10, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_2c

    xor-int v10, v9, v2

    and-int/2addr v2, v9

    const/4 v9, 0x1

    shl-int/2addr v2, v9

    add-int v9, v10, v2

    move/from16 v13, v28

    move/from16 v2, v42

    goto/16 :goto_4a

    :catchall_2c
    move-exception v0

    move-object v1, v0

    .line 262
    :try_start_6c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 2436
    throw v2

    .line 3634
    :cond_56
    throw v1
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_2d

    :catchall_2d
    move-exception v0

    move-object v1, v0

    goto/16 :goto_35

    .line 3663
    :cond_57
    sget v2, Lo/NetworkTemplate;->T:I

    or-int/lit8 v3, v2, 0x5d

    const/4 v8, 0x1

    shl-int/2addr v3, v8

    xor-int/lit8 v2, v2, 0x5d

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lo/NetworkTemplate;->V:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    .line 2426
    :try_start_6d
    sget-object v2, Lo/NetworkTemplate;->S:[B

    const/16 v3, 0x2c3

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/4 v8, 0x1

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    invoke-static {v6, v2, v3}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x116

    aget-byte v3, v3, v8

    neg-int v3, v3

    int-to-short v3, v3

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x51

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x146

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v3, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_40

    .line 3663
    :try_start_6e
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x13

    aget-byte v3, v3, v8

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    int-to-byte v3, v3

    sget-object v8, Lo/NetworkTemplate;->S:[B
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_2e

    .line 1772
    sget v9, Lo/NetworkTemplate;->V:I

    add-int/lit8 v9, v9, 0x39

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lo/NetworkTemplate;->T:I

    const/4 v10, 0x2

    rem-int/2addr v9, v10

    const/4 v9, 0x1

    .line 229
    :try_start_6f
    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v1, v3, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0xed

    int-to-short v3, v3

    sget-object v8, Lo/NetworkTemplate;->S:[B

    .line 272
    aget-byte v8, v8, v23

    int-to-byte v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x26

    aget-byte v9, v9, v10

    or-int/lit8 v10, v9, 0x1

    const/4 v11, 0x1

    shl-int/2addr v10, v11

    xor-int/2addr v9, v11

    sub-int/2addr v10, v9

    int-to-byte v9, v10

    invoke-static {v3, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    .line 2556
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_2e

    goto :goto_4e

    :catchall_2e
    move-exception v0

    move-object v1, v0

    .line 100
    :try_start_70
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 2306
    throw v3

    .line 1772
    :cond_58
    throw v1
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_70} :catch_8
    .catchall {:try_start_70 .. :try_end_70} :catchall_2d

    :catch_8
    :goto_4e
    :try_start_71
    sget-object v1, Lo/NetworkTemplate;->S:[B

    const/16 v3, 0x2c3

    aget-byte v1, v1, v3

    int-to-byte v1, v1

    .line 216
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    invoke-static {v6, v1, v3}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0xed

    int-to-short v3, v3

    .line 81
    sget-object v4, Lo/NetworkTemplate;->S:[B

    aget-byte v4, v4, v23

    int-to-byte v4, v4

    sget-object v6, Lo/NetworkTemplate;->S:[B
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_2f

    .line 2450
    sget v8, Lo/NetworkTemplate;->V:I

    or-int/lit8 v9, v8, 0x29

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    xor-int/lit8 v8, v8, 0x29

    sub-int/2addr v9, v8

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lo/NetworkTemplate;->T:I

    const/4 v8, 0x2

    rem-int/2addr v9, v8

    const/16 v8, 0x26

    .line 272
    :try_start_72
    aget-byte v6, v6, v8

    const/4 v8, 0x1

    add-int/2addr v6, v8

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2401
    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_2f

    goto :goto_4f

    :catchall_2f
    move-exception v0

    move-object v1, v0

    .line 1778
    :try_start_73
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 1772
    throw v3

    .line 1000
    :cond_59
    throw v1
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_73} :catch_9
    .catchall {:try_start_73 .. :try_end_73} :catchall_2d

    .line 3686
    :catch_9
    :goto_4f
    :try_start_74
    const-class v1, Lo/NetworkTemplate;
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_3f

    .line 2510
    :try_start_75
    const-class v3, Ljava/lang/Class;

    const/16 v4, 0x13d

    int-to-short v4, v4

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x11

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x22

    .line 212
    aget-byte v7, v7, v8

    neg-int v7, v7

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_3e

    const/16 v3, 0x2b9

    int-to-short v3, v3

    .line 229
    :try_start_76
    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0x4a

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x8

    aget-byte v6, v6, v7

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    .line 2369
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const/16 v4, 0x2fd

    int-to-short v4, v4

    .line 3692
    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x2d

    .line 2510
    aget-byte v7, v7, v8

    neg-int v7, v7

    int-to-byte v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/16 v7, 0x1e6

    int-to-short v7, v7

    .line 1788
    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x14d

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/4 v10, 0x1

    .line 2355
    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_3f

    :try_start_77
    new-array v6, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    .line 2436
    sget-object v2, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x2d

    aget-byte v2, v2, v8

    neg-int v2, v2

    int-to-byte v2, v2

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v2, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x13

    aget-byte v4, v4, v8

    and-int/lit8 v8, v4, -0x1

    or-int/lit8 v4, v4, -0x1

    add-int/2addr v8, v4

    int-to-short v4, v8

    .line 1778
    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x2e

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x137

    aget-byte v9, v9, v10

    and-int/lit8 v10, v9, -0x1

    or-int/lit8 v9, v9, -0x1

    add-int/2addr v10, v9

    int-to-byte v9, v10

    invoke-static {v4, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, [B

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v2, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_3d

    :try_start_78
    aput-object v2, v7, v10

    const/4 v2, 0x1

    aput-object v1, v7, v2

    .line 2484
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_3f

    const/16 v3, 0x247

    int-to-short v3, v3

    .line 3707
    :try_start_79
    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0xd3

    aget-byte v4, v4, v6

    neg-int v4, v4

    int-to-byte v4, v4

    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x8

    aget-byte v6, v6, v7

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x7b

    int-to-short v4, v4

    .line 3708
    sget-object v6, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x25

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    or-int/lit8 v7, v6, 0x40

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

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

    move-result-object v6

    .line 3714
    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x133

    aget-byte v7, v7, v8

    int-to-short v7, v7

    int-to-byte v8, v7

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x59

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x1

    .line 3715
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v8, 0x105

    int-to-short v8, v8

    .line 3717
    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x151

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    sget-object v10, Lo/NetworkTemplate;->S:[B

    const/16 v11, 0x59

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v8, 0x1

    .line 3718
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2556
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3721
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3723
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3726
    new-instance v9, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/List;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
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
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_d
    .catchall {:try_start_79 .. :try_end_79} :catchall_3f

    const/4 v11, 0x0

    :goto_50
    if-ge v11, v10, :cond_5a

    .line 3735
    :try_start_7a
    invoke-static {v4, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v11, v12}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_2d

    add-int/lit8 v11, v11, 0x1

    goto :goto_50

    :catch_a
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    goto/16 :goto_61

    .line 3738
    :cond_5a
    :try_start_7b
    invoke-virtual {v7, v3, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3739
    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_d
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3f

    .line 3749
    :try_start_7c
    sget-object v1, Lo/NetworkTemplate;->P:Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_3f

    if-nez v1, :cond_5b

    const/16 v1, 0xa

    goto :goto_51

    :cond_5b
    const/16 v1, 0x5c

    :goto_51
    const/16 v3, 0x5c

    if-eq v1, v3, :cond_5c

    .line 3751
    :try_start_7d
    sput-object v2, Lo/NetworkTemplate;->P:Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_2d

    :cond_5c
    move-object v1, v2

    :goto_52
    if-eqz v15, :cond_5d

    const/16 v2, 0x1f

    goto :goto_53

    :cond_5d
    const/16 v2, 0x31

    :goto_53
    const/16 v3, 0x31

    if-eq v2, v3, :cond_5f

    const/16 v2, 0x264

    int-to-short v2, v2

    .line 2471
    :try_start_7e
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v4, 0x14d

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    sget-object v4, Lo/NetworkTemplate;->S:[B
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_33

    const/16 v6, 0x8

    .line 218
    :try_start_7f
    aget-byte v4, v4, v6

    neg-int v4, v4

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2326
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v4, 0x119

    aget-byte v3, v3, v4

    int-to-short v3, v3

    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x5e

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    .line 81
    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x173

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    add-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-static {v3, v4, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Class;

    .line 3682
    const-class v4, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/16 v4, 0x1e6

    int-to-short v4, v4

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x14d

    .line 3641
    aget-byte v8, v8, v9

    int-to-byte v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v4, v8, v9}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v7, v10

    .line 2432
    invoke-virtual {v2, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v7, v4

    .line 2401
    const-class v4, Lo/NetworkTemplate;
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_32

    .line 1773
    :try_start_80
    const-class v5, Ljava/lang/Class;

    const/16 v8, 0x13d

    int-to-short v8, v8

    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x11

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    sget-object v10, Lo/NetworkTemplate;->S:[B
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_31

    const/16 v11, 0x22

    :try_start_81
    aget-byte v10, v10, v11

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_30

    const/4 v5, 0x1

    :try_start_82
    aput-object v4, v7, v5

    .line 2475
    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_60

    const/16 v3, 0xed

    int-to-short v3, v3

    .line 2486
    sget-object v4, Lo/NetworkTemplate;->S:[B

    aget-byte v4, v4, v23

    int-to-byte v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x26

    aget-byte v5, v5, v7

    or-int/lit8 v7, v5, 0x1

    const/4 v9, 0x1

    shl-int/2addr v7, v9

    xor-int/2addr v5, v9

    sub-int/2addr v7, v5

    int-to-byte v5, v7

    invoke-static {v3, v4, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 2487
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_57

    :catchall_30
    move-exception v0

    goto :goto_54

    :catchall_31
    move-exception v0

    const/16 v11, 0x22

    :goto_54
    move-object v1, v0

    .line 2471
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 3751
    throw v2

    .line 2373
    :cond_5e
    throw v1
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_34

    :catchall_32
    move-exception v0

    goto :goto_55

    :catchall_33
    move-exception v0

    const/16 v6, 0x8

    :goto_55
    const/16 v11, 0x22

    :goto_56
    move-object v1, v0

    const/4 v4, 0x3

    goto/16 :goto_36

    :cond_5f
    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v2, 0x1e6

    int-to-short v2, v2

    .line 2494
    :try_start_83
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v4, 0x14d

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    .line 3641
    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/4 v7, 0x1

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2495
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v4, 0x119

    aget-byte v3, v3, v4

    int-to-short v3, v3

    .line 2369
    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x5e

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    sget-object v7, Lo/NetworkTemplate;->S:[B
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_3b

    const/16 v8, 0x173

    .line 3715
    sget v9, Lo/NetworkTemplate;->T:I

    and-int/lit8 v10, v9, 0x7b

    or-int/lit8 v9, v9, 0x7b

    add-int/2addr v10, v9

    rem-int/lit16 v9, v10, 0x80

    sput v9, Lo/NetworkTemplate;->V:I

    const/4 v9, 0x2

    rem-int/2addr v10, v9

    .line 3720
    :try_start_84
    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-static {v3, v4, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Class;

    .line 130
    const-class v7, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_3b

    :try_start_85
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v5, v3, v9

    .line 1778
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_85
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_85 .. :try_end_85} :catch_b
    .catchall {:try_start_85 .. :try_end_85} :catchall_34

    goto :goto_57

    :catchall_34
    move-exception v0

    goto :goto_56

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 2506
    :try_start_86
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_86 .. :try_end_86} :catch_c
    .catchall {:try_start_86 .. :try_end_86} :catchall_34

    :catch_c
    const/4 v8, 0x0

    :cond_60
    :goto_57
    if-eqz v8, :cond_68

    .line 112
    sget v2, Lo/NetworkTemplate;->T:I

    or-int/lit8 v3, v2, 0x3

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    const/4 v4, 0x3

    xor-int/2addr v2, v4

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lo/NetworkTemplate;->V:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    .line 2517
    :try_start_87
    move-object v2, v8

    check-cast v2, Ljava/lang/Class;

    const/16 v3, 0x117

    int-to-short v3, v3

    .line 2522
    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0x2d

    aget-byte v5, v5, v7

    neg-int v5, v5

    int-to-byte v5, v5

    sget-object v7, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x135

    aget-byte v7, v7, v8

    neg-int v7, v7

    int-to-byte v7, v7

    invoke-static {v3, v5, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Class;

    .line 2527
    const-class v3, Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v3, v7, v8

    .line 2528
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2529
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v8, v7

    if-nez v15, :cond_61

    const/4 v1, 0x0

    goto :goto_58

    :cond_61
    const/4 v1, 0x1

    :goto_58
    const/4 v7, 0x1

    if-eq v1, v7, :cond_62

    const/4 v1, 0x1

    goto :goto_59

    :cond_62
    const/4 v1, 0x0

    .line 3691
    :goto_59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v7

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lo/NetworkTemplate;->Q:Ljava/lang/Object;

    const v1, 0x9baf

    const v3, 0x9bd0

    new-array v3, v3, [B

    .line 2540
    const-class v7, Lo/NetworkTemplate;

    const/16 v8, 0x1e8

    int-to-short v8, v8

    .line 211
    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0x1a

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    sget-object v10, Lo/NetworkTemplate;->S:[B

    const/4 v12, 0x0

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    .line 238
    invoke-static {v8, v9, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    .line 2541
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_3a

    const/4 v8, 0x1

    :try_start_88
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v9, v8

    const/16 v7, 0x18d

    int-to-short v7, v7

    .line 2443
    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0xd2

    .line 2392
    aget-byte v8, v8, v10

    int-to-byte v8, v8

    sget-object v10, Lo/NetworkTemplate;->S:[B

    const/4 v12, 0x1

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v10, v12, [Ljava/lang/Class;

    .line 3620
    sget-object v12, Lo/NetworkTemplate;->S:[B

    aget-byte v12, v12, v22

    int-to-short v12, v12

    sget-object v13, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x2d

    .line 2484
    aget-byte v13, v13, v14

    neg-int v13, v13

    int-to-byte v13, v13

    sget-object v14, Lo/NetworkTemplate;->S:[B

    const/16 v16, 0x1

    aget-byte v14, v14, v16

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v10, v13

    .line 3635
    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_39

    .line 2510
    sget v9, Lo/NetworkTemplate;->T:I

    add-int/lit8 v9, v9, 0x24

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    rem-int/lit16 v12, v9, 0x80

    sput v12, Lo/NetworkTemplate;->V:I

    const/4 v12, 0x2

    rem-int/2addr v9, v12

    if-eqz v9, :cond_63

    const/4 v9, 0x0

    goto :goto_5a

    :cond_63
    const/4 v9, 0x1

    :goto_5a
    if-eqz v9, :cond_64

    :try_start_89
    new-array v9, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    .line 3663
    sget-object v12, Lo/NetworkTemplate;->S:[B
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_35

    move v10, v7

    :goto_5b
    const/16 v13, 0xd2

    goto :goto_5c

    :catchall_35
    move-exception v0

    move-object v1, v0

    const/16 v13, 0x26

    goto/16 :goto_5e

    :cond_64
    const/4 v10, 0x0

    :try_start_8a
    new-array v9, v10, [Ljava/lang/Object;

    aput-object v3, v9, v10

    const/16 v10, 0x203

    int-to-short v10, v10

    sget-object v12, Lo/NetworkTemplate;->S:[B

    goto :goto_5b

    .line 238
    :goto_5c
    aget-byte v12, v12, v13

    int-to-byte v12, v12

    sget-object v13, Lo/NetworkTemplate;->S:[B

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v10, v12, v13}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v12, 0x296

    int-to-short v12, v12

    .line 1778
    sget-object v13, Lo/NetworkTemplate;->S:[B

    const/16 v14, 0x5e

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    or-int/lit8 v14, v13, 0x41

    int-to-byte v14, v14

    .line 2510
    invoke-static {v12, v13, v14}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const-class v13, [B

    const/16 v16, 0x0

    aput-object v13, v14, v16

    invoke-virtual {v10, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_38

    .line 3686
    sget v12, Lo/NetworkTemplate;->V:I

    or-int/lit8 v13, v12, 0x4f

    const/4 v14, 0x1

    shl-int/2addr v13, v14

    xor-int/lit8 v12, v12, 0x4f

    sub-int/2addr v13, v12

    rem-int/lit16 v12, v13, 0x80

    sput v12, Lo/NetworkTemplate;->T:I

    const/4 v12, 0x2

    rem-int/2addr v13, v12

    .line 2392
    :try_start_8b
    invoke-virtual {v10, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_38

    .line 3620
    :try_start_8c
    sget-object v9, Lo/NetworkTemplate;->S:[B

    const/16 v10, 0xd2

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    .line 2530
    sget-object v10, Lo/NetworkTemplate;->S:[B

    const/4 v12, 0x1

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v7, v9, v10}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0xed

    int-to-short v9, v9

    .line 229
    sget-object v10, Lo/NetworkTemplate;->S:[B

    aget-byte v10, v10, v23

    int-to-byte v10, v10

    .line 2401
    sget-object v12, Lo/NetworkTemplate;->S:[B
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_37

    const/16 v13, 0x26

    :try_start_8d
    aget-byte v12, v12, v13

    add-int/lit8 v12, v12, 0x2

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    int-to-byte v12, v12

    invoke-static {v9, v10, v12}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 2452
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_36

    .line 2548
    :try_start_8e
    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move-object v6, v2

    move-object v1, v3

    move v2, v7

    move/from16 v13, v28

    move/from16 v10, v35

    move-object/from16 v9, v36

    move-object/from16 v11, v37

    move-object/from16 v14, v38

    move-object/from16 v12, v39

    const v4, 0x9baf

    goto/16 :goto_38

    :catchall_36
    move-exception v0

    goto :goto_5d

    :catchall_37
    move-exception v0

    const/16 v13, 0x26

    :goto_5d
    move-object v1, v0

    .line 2392
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 3669
    throw v2

    .line 3634
    :cond_65
    throw v1

    :catchall_38
    move-exception v0

    const/16 v13, 0x26

    move-object v1, v0

    .line 3663
    :goto_5e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 1771
    throw v2

    .line 2484
    :cond_66
    throw v1

    :catchall_39
    move-exception v0

    const/16 v13, 0x26

    move-object v1, v0

    .line 229
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 218
    throw v2

    .line 2484
    :cond_67
    throw v1

    :catchall_3a
    move-exception v0

    goto/16 :goto_6a

    :cond_68
    const/4 v4, 0x3

    const/16 v13, 0x26

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2553
    const-class v2, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    move-object/from16 v2, v40

    .line 2554
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2555
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v5, v3

    if-nez v15, :cond_69

    const/16 v1, 0x4c

    goto :goto_5f

    :cond_69
    const/16 v1, 0x5e

    :goto_5f
    const/16 v3, 0x4c

    if-eq v1, v3, :cond_6a

    const/4 v1, 0x0

    goto :goto_60

    :cond_6a
    const/4 v1, 0x1

    .line 248
    :goto_60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lo/NetworkTemplate;->Q:Ljava/lang/Object;

    move-object/from16 v2, v39

    const/4 v5, 0x0

    const/16 v7, 0xd2

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_72

    :catchall_3b
    move-exception v0

    const/4 v4, 0x3

    goto/16 :goto_6a

    :catch_d
    move-exception v0

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v2, v0

    .line 3745
    :goto_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1ec

    int-to-short v5, v5

    sget-object v7, Lo/NetworkTemplate;->S:[B

    aget-byte v7, v7, v23

    int-to-byte v7, v7

    sget-object v8, Lo/NetworkTemplate;->S:[B

    const/16 v9, 0x2c3

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x264

    int-to-short v1, v1

    sget-object v5, Lo/NetworkTemplate;->S:[B

    aget-byte v5, v5, v22

    int-to-byte v5, v5

    int-to-byte v7, v5

    invoke-static {v1, v5, v7}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_49

    const/4 v3, 0x2

    :try_start_8f
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v5, v3
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_3c

    .line 2388
    sget v2, Lo/NetworkTemplate;->T:I

    and-int/lit8 v3, v2, 0x59

    or-int/lit8 v2, v2, 0x59

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lo/NetworkTemplate;->V:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    const/4 v2, 0x0

    if-eqz v3, :cond_6b

    :try_start_90
    aput-object v1, v5, v2

    const/16 v1, 0xd0e

    int-to-short v1, v1

    .line 2530
    sget-object v2, Lo/NetworkTemplate;->S:[B

    aget-byte v2, v2, v22

    goto :goto_62

    :cond_6b
    aput-object v1, v5, v2

    const/16 v1, 0x8d

    int-to-short v1, v1

    .line 2432
    sget-object v2, Lo/NetworkTemplate;->S:[B

    const/16 v3, 0x2d

    aget-byte v2, v2, v3

    :goto_62
    neg-int v2, v2

    int-to-byte v2, v2

    .line 262
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/4 v7, 0x1

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2487
    const-class v2, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const-class v2, Ljava/lang/Throwable;

    const/4 v7, 0x1

    aput-object v2, v3, v7

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_3c

    :catchall_3c
    move-exception v0

    move-object v1, v0

    .line 2510
    :try_start_91
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 2475
    throw v2

    .line 3728
    :cond_6c
    throw v1

    :catchall_3d
    move-exception v0

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 262
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 2494
    throw v2

    .line 2323
    :cond_6d
    throw v1

    :catchall_3e
    move-exception v0

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 225
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 262
    throw v2

    .line 3657
    :cond_6e
    throw v1

    :catchall_3f
    move-exception v0

    goto/16 :goto_69

    :catchall_40
    move-exception v0

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 2510
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 2369
    throw v2

    .line 1772
    :cond_6f
    throw v1

    :catchall_41
    move-exception v0

    goto :goto_63

    :catchall_42
    move-exception v0

    move/from16 v28, v13

    :goto_63
    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 211
    :goto_64
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 112
    throw v2

    .line 2484
    :cond_70
    throw v1

    :catchall_43
    move-exception v0

    move/from16 v28, v13

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 2401
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 2409
    throw v2

    .line 2510
    :cond_71
    throw v1

    :catchall_44
    move-exception v0

    move/from16 v28, v13

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 3663
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 2426
    throw v2

    .line 3728
    :cond_72
    throw v1

    :catchall_45
    move-exception v0

    goto/16 :goto_68

    :catchall_46
    move-exception v0

    move/from16 v35, v10

    move-object/from16 v39, v12

    move/from16 v28, v13

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 1771
    :goto_65
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 77
    throw v2

    .line 3733
    :cond_73
    throw v1

    :catchall_47
    move-exception v0

    move/from16 v35, v10

    goto/16 :goto_67

    :catchall_48
    move-exception v0

    move/from16 v35, v10

    move-object/from16 v37, v11

    move-object/from16 v39, v12

    move/from16 v28, v13

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 244
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 2499
    throw v2

    .line 3620
    :cond_74
    throw v1

    :catchall_49
    move-exception v0

    goto/16 :goto_6b

    :catchall_4a
    move-exception v0

    move/from16 v35, v10

    move-object/from16 v37, v11

    move-object/from16 v39, v12

    move/from16 v28, v13

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 2494
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 77
    throw v2

    .line 3751
    :cond_75
    throw v1

    :catchall_4b
    move-exception v0

    move/from16 v35, v10

    move-object/from16 v37, v11

    move-object/from16 v39, v12

    move/from16 v28, v13

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 1788
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 2379
    throw v2

    .line 130
    :cond_76
    throw v1

    :catchall_4c
    move-exception v0

    move/from16 v35, v10

    move-object/from16 v37, v11

    move-object/from16 v39, v12

    move/from16 v28, v13

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    const/16 v13, 0x26

    move-object v1, v0

    .line 3694
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 3682
    throw v2

    .line 2383
    :cond_77
    throw v1
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_49

    :catchall_4d
    move-exception v0

    goto :goto_66

    :catchall_4e
    move-exception v0

    move-object/from16 v26, v1

    move-object/from16 v27, v3

    move-object/from16 v32, v5

    move/from16 v34, v8

    :goto_66
    move/from16 v35, v10

    move-object/from16 v37, v11

    :goto_67
    move-object/from16 v39, v12

    :goto_68
    move/from16 v28, v13

    :goto_69
    const/4 v4, 0x3

    const/16 v6, 0x8

    const/16 v11, 0x22

    :goto_6a
    const/16 v13, 0x26

    :goto_6b
    move-object v1, v0

    :goto_6c
    or-int/lit8 v2, v35, 0x1

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v3, v35, 0x1

    sub-int/2addr v2, v3

    move v3, v2

    move-object/from16 v2, v39

    .line 2471
    :goto_6d
    :try_start_92
    array-length v5, v2

    if-ge v3, v5, :cond_78

    const/4 v5, 0x0

    goto :goto_6e

    :cond_78
    const/4 v5, 0x1

    :goto_6e
    if-eqz v5, :cond_79

    const/4 v3, 0x0

    goto :goto_6f

    .line 246
    :cond_79
    aget-boolean v5, v2, v3

    if-eqz v5, :cond_7d

    const/4 v3, 0x1

    :goto_6f
    if-nez v3, :cond_7a

    const/4 v3, 0x2

    goto :goto_70

    :cond_7a
    const/16 v3, 0x5d

    :goto_70
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_7b

    const/4 v5, 0x0

    .line 261
    sput-object v5, Lo/NetworkTemplate;->Q:Ljava/lang/Object;

    .line 262
    sput-object v5, Lo/NetworkTemplate;->P:Ljava/lang/Object;

    const/16 v7, 0xd2

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_71

    :cond_7b
    const/16 v2, 0x20a

    int-to-short v2, v2

    .line 256
    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/16 v7, 0xd2

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0x2c3

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

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

    const/16 v1, 0x8d

    int-to-short v1, v1

    .line 2348
    sget-object v2, Lo/NetworkTemplate;->S:[B

    const/16 v8, 0x2d

    aget-byte v2, v2, v8

    neg-int v2, v2

    int-to-byte v2, v2

    sget-object v3, Lo/NetworkTemplate;->S:[B

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v2, v10

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_4f

    :catchall_4f
    move-exception v0

    move-object v1, v0

    .line 3691
    :try_start_94
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 3669
    throw v2

    .line 3751
    :cond_7c
    throw v1

    :cond_7d
    const/4 v5, 0x0

    const/16 v7, 0xd2

    const/16 v8, 0x2d

    const/4 v9, 0x2

    const/4 v10, 0x0

    xor-int/lit8 v12, v3, 0x1b

    and-int/lit8 v3, v3, 0x1b

    const/4 v14, 0x1

    shl-int/2addr v3, v14

    add-int/2addr v12, v3

    and-int/lit8 v3, v12, -0x1a

    or-int/lit8 v12, v12, -0x1a

    add-int/2addr v3, v12

    goto/16 :goto_6d

    :cond_7e
    move-object/from16 v26, v1

    move-object/from16 v27, v3

    move-object/from16 v32, v5

    move/from16 v34, v8

    move/from16 v35, v10

    move-object/from16 v37, v11

    move-object v2, v12

    move/from16 v28, v13

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/16 v7, 0xd2

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v11, 0x22

    const/16 v13, 0x26

    :goto_71
    move/from16 v8, v34

    :goto_72
    add-int/lit8 v1, v35, 0x2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    move v10, v1

    move-object v12, v2

    move-object/from16 v1, v26

    move-object/from16 v3, v27

    move/from16 v13, v28

    move-object/from16 v5, v32

    move-object/from16 v11, v37

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x26

    const/16 v9, 0x23

    goto/16 :goto_18

    :cond_7f
    return-void

    :catchall_50
    move-exception v0

    move-object v1, v0

    .line 211
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 2379
    throw v2

    .line 2401
    :cond_80
    throw v1

    :catchall_51
    move-exception v0

    move-object v1, v0

    .line 272
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 81
    throw v2

    .line 3686
    :cond_81
    throw v1

    :catchall_52
    move-exception v0

    move-object v1, v0

    .line 215
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 3745
    throw v2

    .line 2484
    :cond_82
    throw v1

    :catchall_53
    move-exception v0

    move-object v1, v0

    .line 253
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 2548
    throw v2

    .line 2407
    :cond_83
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
    sget v0, Lo/NetworkTemplate;->V:I

    xor-int/lit8 v1, v0, 0x47

    and-int/lit8 v0, v0, 0x47

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sput v0, Lo/NetworkTemplate;->T:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    rem-int/lit8 v1, v1, 0x2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    sget-object v0, Lo/NetworkTemplate;->Q:Ljava/lang/Object;

    sget v1, Lo/NetworkTemplate;->V:I

    xor-int/lit8 v3, v1, 0x71

    and-int/lit8 v1, v1, 0x71

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lo/NetworkTemplate;->T:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_3
    sget v1, Lo/NetworkTemplate;->V:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    xor-int/lit8 v3, v1, 0x61

    and-int/lit8 v1, v1, 0x61

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    :try_start_4
    sput v1, Lo/NetworkTemplate;->T:I

    rem-int/lit8 v3, v3, 0x2
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v1, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    :try_start_5
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const/16 p0, 0x2200

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const/16 p0, 0x271

    :goto_1
    int-to-short p0, p0

    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0x11

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v6, 0x135

    :try_start_6
    sget v7, Lo/NetworkTemplate;->T:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    add-int/lit8 v7, v7, 0x52

    sub-int/2addr v7, v2

    rem-int/lit16 v8, v7, 0x80

    :try_start_7
    sput v8, Lo/NetworkTemplate;->V:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    rem-int/lit8 v7, v7, 0x2

    :try_start_8
    aget-byte v5, v5, v6

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {p0, v4, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lo/NetworkTemplate;->P:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget v4, Lo/NetworkTemplate;->V:I

    and-int/lit8 v5, v4, 0x1d

    or-int/lit8 v4, v4, 0x1d

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lo/NetworkTemplate;->T:I

    rem-int/lit8 v5, v5, 0x2

    const/16 v4, 0x43

    if-nez v5, :cond_2

    const/16 v5, 0x43

    goto :goto_2

    :cond_2
    const/16 v5, 0x4e

    :goto_2
    if-eq v5, v4, :cond_3

    const/16 v4, 0xdc

    int-to-short v4, v4

    :try_start_9
    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0xe

    aget-byte v5, v5, v6

    :goto_3
    int-to-byte v5, v5

    sget-object v6, Lo/NetworkTemplate;->S:[B

    goto :goto_4

    :cond_3
    const/16 v4, 0x64f4

    int-to-short v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0x58

    aget-byte v5, v5, v6

    goto :goto_3

    :goto_4
    const/16 v7, 0x26

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sget v7, Lo/NetworkTemplate;->V:I

    add-int/lit8 v7, v7, 0x6f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lo/NetworkTemplate;->T:I

    rem-int/lit8 v7, v7, 0x2

    :try_start_a
    aput-object v6, v5, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sget v0, Lo/NetworkTemplate;->T:I

    add-int/lit8 v0, v0, 0x28

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/NetworkTemplate;->V:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :catch_0
    move-exception p0

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    throw v0

    :cond_4
    throw p0

    :catch_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    :goto_6
    throw p0

    :catch_3
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p0

    :goto_7
    throw p0
.end method

.method public static c(Ljava/lang/Object;)I
    .locals 9

    sget v0, Lo/NetworkTemplate;->T:I

    and-int/lit8 v1, v0, 0x73

    or-int/lit8 v0, v0, 0x73

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lo/NetworkTemplate;->V:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Lo/NetworkTemplate;->Q:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    sget-object v1, Lo/NetworkTemplate;->Q:Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_1
    array-length v3, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_1
    :try_start_2
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p0, 0x271

    sget v4, Lo/NetworkTemplate;->V:I

    add-int/lit8 v4, v4, 0x3e

    sub-int/2addr v4, v2

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lo/NetworkTemplate;->T:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    int-to-short p0, p0

    if-eqz v4, :cond_3

    :try_start_3
    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0x3f

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0xac0

    goto :goto_3

    :cond_3
    sget-object v4, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0x11

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v6, 0x135

    :goto_3
    :try_start_4
    sget v7, Lo/NetworkTemplate;->V:I

    add-int/lit8 v7, v7, 0x29

    rem-int/lit16 v8, v7, 0x80
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    sput v8, Lo/NetworkTemplate;->T:I

    rem-int/lit8 v7, v7, 0x2
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    aget-byte v5, v5, v6

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {p0, v4, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lo/NetworkTemplate;->P:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    sget v5, Lo/NetworkTemplate;->V:I

    or-int/lit8 v6, v5, 0x4f

    shl-int/2addr v6, v2

    xor-int/lit8 v5, v5, 0x4f

    sub-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    sput v5, Lo/NetworkTemplate;->T:I

    rem-int/lit8 v6, v6, 0x2
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/ArrayStoreException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    invoke-static {p0, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/16 v4, 0xd2

    int-to-short v4, v4

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0xe

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    or-int/lit8 v6, v5, 0x3a

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    sget v6, Lo/NetworkTemplate;->T:I

    or-int/lit8 v7, v6, 0x4f

    shl-int/2addr v7, v2

    xor-int/lit8 v6, v6, 0x4f

    sub-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5

    :try_start_b
    sput v6, Lo/NetworkTemplate;->V:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_2

    :try_start_c
    rem-int/lit8 v7, v7, 0x2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5

    const/16 v6, 0x44

    if-eqz v7, :cond_4

    const/16 v7, 0x44

    goto :goto_4

    :cond_4
    const/16 v7, 0x55

    :goto_4
    if-eq v7, v6, :cond_5

    :try_start_d
    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    :goto_5
    invoke-virtual {p0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6

    :cond_5
    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    :goto_6
    :try_start_e
    sget v1, Lo/NetworkTemplate;->V:I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_0

    xor-int/lit8 v3, v1, 0x59

    and-int/lit8 v1, v1, 0x59

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    :try_start_f
    sput v1, Lo/NetworkTemplate;->T:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_1

    rem-int/lit8 v3, v3, 0x2

    :try_start_10
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    sget v1, Lo/NetworkTemplate;->T:I

    xor-int/lit8 v3, v1, 0x17

    and-int/lit8 v1, v1, 0x17

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lo/NetworkTemplate;->V:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v1, 0x62

    if-eqz v3, :cond_6

    const/16 v2, 0x62

    goto :goto_7

    :cond_6
    const/16 v2, 0x8

    :goto_7
    if-eq v2, v1, :cond_7

    return p0

    :cond_7
    const/16 v1, 0x35

    :try_start_11
    div-int/2addr v1, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    goto :goto_8

    :catch_2
    move-exception p0

    goto :goto_8

    :catch_3
    move-exception p0

    goto :goto_9

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

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    throw v0

    :cond_8
    throw p0

    :catchall_2
    move-exception p0

    throw p0
.end method

.method public static c(CII)Ljava/lang/Object;
    .locals 8

    sget v0, Lo/NetworkTemplate;->T:I

    or-int/lit8 v1, v0, 0x41

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x41

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lo/NetworkTemplate;->V:I

    const/4 v0, 0x2

    rem-int/2addr v1, v0

    const/16 v3, 0x51

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto :goto_0

    :cond_0
    const/16 v1, 0x51

    :goto_0
    if-eq v1, v3, :cond_1

    sget-object v1, Lo/NetworkTemplate;->Q:Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    :try_start_1
    sget-object v1, Lo/NetworkTemplate;->Q:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget v3, Lo/NetworkTemplate;->T:I

    and-int/lit8 v4, v3, 0x17

    or-int/lit8 v3, v3, 0x17

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sput v3, Lo/NetworkTemplate;->V:I

    rem-int/2addr v4, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v3, 0x3

    :try_start_4
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget p0, Lo/NetworkTemplate;->T:I

    and-int/lit8 p2, p0, 0x45

    or-int/lit8 p0, p0, 0x45

    add-int/2addr p2, p0

    rem-int/lit16 p0, p2, 0x80

    sput p0, Lo/NetworkTemplate;->V:I

    rem-int/2addr p2, v0

    const/16 p0, 0x271

    int-to-short p0, p0

    :try_start_5
    sget-object p2, Lo/NetworkTemplate;->S:[B

    const/16 v5, 0x11

    aget-byte p2, p2, v5

    int-to-byte p2, p2

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0x135

    aget-byte v5, v5, v6

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {p0, p2, v5}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lo/NetworkTemplate;->P:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/16 p2, 0xc4

    int-to-short p2, p2

    sget-object v5, Lo/NetworkTemplate;->S:[B

    const/16 v6, 0xe

    aget-byte v5, v5, v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    int-to-byte v5, v5

    sget v6, Lo/NetworkTemplate;->V:I

    add-int/lit8 v6, v6, 0xe

    sub-int/2addr v6, v2

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lo/NetworkTemplate;->T:I

    rem-int/2addr v6, v0

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_3

    xor-int/lit8 v6, v5, 0x3c

    and-int/lit8 v7, v5, 0x3c

    or-int/2addr v6, v7

    int-to-byte v6, v6

    :try_start_6
    invoke-static {p2, v5, v6}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Class;

    goto :goto_3

    :cond_3
    and-int/lit8 p1, v5, 0x21

    not-int p1, p1

    or-int/lit8 v3, v5, 0x21

    and-int/2addr p1, v3

    int-to-byte p1, p1

    invoke-static {p2, v5, p1}, Lo/NetworkTemplate;->$$c(ISI)Ljava/lang/String;

    move-result-object p2

    const/4 p1, 0x5

    new-array v3, p1, [Ljava/lang/Class;

    const/4 p1, 0x1

    :goto_3
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, p1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v3, v2

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget v2, Lo/NetworkTemplate;->T:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lo/NetworkTemplate;->V:I

    rem-int/2addr v2, v0

    :try_start_7
    aput-object p1, v3, v0

    invoke-virtual {p0, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget p1, Lo/NetworkTemplate;->T:I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    :try_start_9
    sput p2, Lo/NetworkTemplate;->V:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    rem-int/2addr p1, v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    throw p1

    :cond_4
    throw p0

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    :goto_4
    throw p0
.end method
