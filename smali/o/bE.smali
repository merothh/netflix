.class public final Lo/bE;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x0

.field private static c:Ljava/lang/String; = null

.field private static d:C = '\u0000'

.field private static e:J = 0x0L

.field private static i:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lo/bE;->g()V

    const-string v0, "NFANDROID1-"

    .line 28
    sput-object v0, Lo/bE;->c:Ljava/lang/String;

    :try_start_0
    sget v0, Lo/bE;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    :try_start_1
    sput v1, Lo/bE;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1d

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    sget v0, Lo/bE;->b:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/bE;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0xe

    new-array v0, v0, [C

    .line 41
    fill-array-data v0, :array_0

    const/16 v1, 0x1258

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v4, v3, [C

    fill-array-data v4, :array_1

    new-array v3, v3, [C

    fill-array-data v3, :array_2

    invoke-static {v0, v1, v2, v4, v3}, Lo/bE;->a([CCI[C[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lo/bE;->i:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lo/bE;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :array_0
    .array-data 2
        0x53ebs
        0x601cs
        -0x251fs
        -0x379es
        -0x726fs
        0x14dds
        0x5dc4s
        -0x6932s
        0x70bs
        0x4dbds
        0x1b87s
        0x911s
        -0x2e6ds
        -0x34bas
    .end array-data

    :array_1
    .array-data 2
        -0x2d34s
        0x3225s
        0x585cs
        0x4612s
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method private static a([CCI[C[C)Ljava/lang/String;
    .locals 6

    .line 1125
    :try_start_0
    sget v0, Lo/bE;->i:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/bE;->b:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1118
    invoke-virtual {p3}, [C->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [C

    .line 1119
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    const/4 v0, 0x0

    .line 1120
    aget-char v2, p3, v0

    xor-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p3, v0

    .line 1121
    aget-char p1, p4, v1

    int-to-char p2, p2

    add-int/2addr p1, p2

    int-to-char p1, p1

    aput-char p1, p4, v1

    .line 1123
    array-length p1, p0

    .line 1124
    new-array p2, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 1125
    :try_start_1
    sget v2, Lo/bE;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x13

    rem-int/lit16 v3, v2, 0x80

    :try_start_2
    sput v3, Lo/bE;->b:I

    rem-int/lit8 v2, v2, 0x2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v3, 0x28

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_2

    :cond_1
    const/16 v2, 0x28

    :goto_2
    if-eq v2, v3, :cond_2

    .line 1128
    invoke-static {p3, p4, v1}, Lo/NetworkScoreManager;->b([C[CI)V

    .line 1131
    aget-char v2, p0, v1

    add-int/lit8 v3, v1, 0x3

    ushr-int/lit8 v3, v3, 0x5

    aget-char v3, p3, v3

    or-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lo/bE;->e:J

    sub-long/2addr v2, v4

    sget v4, Lo/bE;->a:I

    int-to-long v4, v4

    rem-long/2addr v2, v4

    sget-char v4, Lo/bE;->d:C

    int-to-long v4, v4

    mul-long v2, v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p2, v1

    add-int/lit8 v1, v1, 0x4e

    goto :goto_0

    .line 1128
    :cond_2
    :try_start_3
    invoke-static {p3, p4, v1}, Lo/NetworkScoreManager;->b([C[CI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1131
    aget-char v2, p0, v1

    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x4

    aget-char v3, p3, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lo/bE;->e:J

    xor-long/2addr v2, v4

    sget v4, Lo/bE;->a:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lo/bE;->d:C

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1125
    throw p0

    .line 1138
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :catch_1
    move-exception p0

    .line 1125
    throw p0
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    sget v0, Lo/bE;->i:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/bE;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const v1, -0x16f7e1c7

    const/16 v2, 0x42aa

    const/16 v3, 0x27

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    new-array v0, v3, [C

    .line 49
    fill-array-data v0, :array_0

    new-array v3, v4, [C

    fill-array-data v3, :array_1

    new-array v4, v4, [C

    fill-array-data v4, :array_2

    invoke-static {v0, v2, v1, v3, v4}, Lo/bE;->a([CCI[C[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-array v0, v3, [C

    fill-array-data v0, :array_3

    new-array v3, v4, [C

    fill-array-data v3, :array_4

    new-array v4, v4, [C

    fill-array-data v4, :array_5

    invoke-static {v0, v2, v1, v3, v4}, Lo/bE;->a([CCI[C[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 0
    throw v0

    nop

    :array_0
    .array-data 2
        0x37a3s
        -0x199es
        0x212es
        -0x576as
        -0x332fs
        -0x18e5s
        -0xc95s
        0x6a69s
        -0x1013s
        0x72f7s
        -0x2fe3s
        0x405s
        0x2174s
        0x2cd0s
        0x29aas
        -0x2873s
        -0xf98s
        -0x7fc2s
        -0x74acs
        -0x476cs
        0x618bs
        -0x2578s
        -0x2b4cs
        -0x6b3s
        0x243es
        -0x5534s
        0x3febs
        0x3fa9s
        -0x536s
        0x64cfs
        -0x2fc5s
        0x5cads
        0x99cs
        0x21e3s
        -0x6be3s
        -0x6e65s
        -0x78f6s
        0x72des
        -0x736es
    .end array-data

    nop

    :array_1
    .array-data 2
        0x395bs
        0x81es
        -0x5517s
        0x1142s
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    :array_3
    .array-data 2
        0x37a3s
        -0x199es
        0x212es
        -0x576as
        -0x332fs
        -0x18e5s
        -0xc95s
        0x6a69s
        -0x1013s
        0x72f7s
        -0x2fe3s
        0x405s
        0x2174s
        0x2cd0s
        0x29aas
        -0x2873s
        -0xf98s
        -0x7fc2s
        -0x74acs
        -0x476cs
        0x618bs
        -0x2578s
        -0x2b4cs
        -0x6b3s
        0x243es
        -0x5534s
        0x3febs
        0x3fa9s
        -0x536s
        0x64cfs
        -0x2fc5s
        0x5cads
        0x99cs
        0x21e3s
        -0x6be3s
        -0x6e65s
        -0x78f6s
        0x72des
        -0x736es
    .end array-data

    nop

    :array_4
    .array-data 2
        0x395bs
        0x81es
        -0x5517s
        0x1142s
    .end array-data

    :array_5
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget v0, Lo/bE;->i:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/bE;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0x5e

    :goto_0
    if-eq v0, v1, :cond_1

    .line 45
    :try_start_0
    sget-object v0, Lo/bE;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 0
    throw v0

    .line 45
    :cond_1
    sget-object v0, Lo/bE;->c:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    sget v0, Lo/bE;->i:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/bE;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x42

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x52

    .line 57
    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 0
    :goto_1
    :try_start_1
    sget v0, Lo/bE;->b:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/bE;->i:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x55

    if-nez v0, :cond_2

    const/16 v0, 0x55

    goto :goto_2

    :cond_2
    const/16 v0, 0x20

    :goto_2
    const-string v2, "_"

    if-eq v0, v1, :cond_3

    return-object v2

    :cond_3
    const/4 v0, 0x0

    :try_start_2
    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    sget v0, Lo/bE;->i:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/bE;->b:I

    rem-int/lit8 v0, v0, 0x2

    sget v0, Lo/bE;->b:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/bE;->i:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "-"

    return-object v0
.end method

.method static g()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lo/bE;->a:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lo/bE;->e:J

    const v0, 0x90e5

    sput-char v0, Lo/bE;->d:C

    return-void
.end method
