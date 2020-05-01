.class public Lo/GestureStore;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/GestureLibraries$ActionBar;


# static fields
.field private static final a:[B

.field private static final b:I

.field private static final c:[B

.field private static final e:I

.field private static final f:I

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B

.field private static final l:I

.field private static final n:I

.field private static final o:[Ljava/lang/String;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 131
    fill-array-data v0, :array_0

    sput-object v0, Lo/GestureStore;->c:[B

    .line 132
    sget-object v0, Lo/GestureStore;->c:[B

    array-length v0, v0

    sput v0, Lo/GestureStore;->e:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 154
    fill-array-data v0, :array_1

    sput-object v0, Lo/GestureStore;->a:[B

    .line 158
    sget-object v0, Lo/GestureStore;->a:[B

    array-length v0, v0

    sput v0, Lo/GestureStore;->b:I

    const-string v0, "GIF87a"

    .line 178
    invoke-static {v0}, Lo/GesturePoint;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/GestureStore;->h:[B

    const-string v0, "GIF89a"

    .line 179
    invoke-static {v0}, Lo/GesturePoint;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/GestureStore;->j:[B

    const-string v0, "BM"

    .line 201
    invoke-static {v0}, Lo/GesturePoint;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/GestureStore;->g:[B

    .line 202
    sget-object v0, Lo/GestureStore;->g:[B

    array-length v0, v0

    sput v0, Lo/GestureStore;->f:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 220
    fill-array-data v0, :array_2

    sput-object v0, Lo/GestureStore;->i:[B

    .line 223
    sget-object v0, Lo/GestureStore;->i:[B

    array-length v0, v0

    sput v0, Lo/GestureStore;->l:I

    const-string v1, "heic"

    const-string v2, "heix"

    const-string v3, "hevc"

    const-string v4, "hevx"

    const-string v5, "mif1"

    const-string v6, "msf1"

    .line 248
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/GestureStore;->o:[Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ftyp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lo/GestureStore;->o:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lo/GesturePoint;->c(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    sput v0, Lo/GestureStore;->n:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x14

    aput v2, v0, v1

    .line 27
    sget v1, Lo/GestureStore;->e:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lo/GestureStore;->b:I

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v2, Lo/GestureStore;->f:I

    const/4 v3, 0x5

    aput v2, v0, v3

    sget v2, Lo/GestureStore;->l:I

    aput v2, v0, v1

    sget v1, Lo/GestureStore;->n:I

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 28
    invoke-static {v0}, Lo/ShortcutServiceInternal;->e([I)I

    move-result v0

    iput v0, p0, Lo/GestureStore;->d:I

    return-void
.end method

.method private static b([BI)Z
    .locals 2

    .line 146
    sget-object v0, Lo/GestureStore;->c:[B

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 147
    invoke-static {p0, v0}, Lo/GesturePoint;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c([BI)Z
    .locals 2

    .line 170
    sget-object v0, Lo/GestureStore;->a:[B

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 171
    invoke-static {p0, v0}, Lo/GesturePoint;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d([BI)Lo/GestureLibraries;
    .locals 2

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0, p1}, Lo/ThemedResourceCache;->c([BII)Z

    move-result v1

    invoke-static {v1}, Lo/StringParceledListSlice;->a(Z)V

    .line 106
    invoke-static {p0, v0}, Lo/ThemedResourceCache;->d([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    sget-object p0, Lo/GestureLibrary;->i:Lo/GestureLibraries;

    return-object p0

    .line 110
    :cond_0
    invoke-static {p0, v0}, Lo/ThemedResourceCache;->a([BI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    sget-object p0, Lo/GestureLibrary;->h:Lo/GestureLibraries;

    return-object p0

    .line 114
    :cond_1
    invoke-static {p0, v0, p1}, Lo/ThemedResourceCache;->e([BII)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 115
    invoke-static {p0, v0}, Lo/ThemedResourceCache;->c([BI)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    sget-object p0, Lo/GestureLibrary;->g:Lo/GestureLibraries;

    return-object p0

    .line 118
    :cond_2
    invoke-static {p0, v0}, Lo/ThemedResourceCache;->e([BI)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 119
    sget-object p0, Lo/GestureLibrary;->j:Lo/GestureLibraries;

    return-object p0

    .line 121
    :cond_3
    sget-object p0, Lo/GestureLibrary;->f:Lo/GestureLibraries;

    return-object p0

    .line 124
    :cond_4
    sget-object p0, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    return-object p0
.end method

.method private static e([BI)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    return v0

    .line 194
    :cond_0
    sget-object p1, Lo/GestureStore;->h:[B

    invoke-static {p0, p1}, Lo/GesturePoint;->a([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lo/GestureStore;->j:[B

    .line 195
    invoke-static {p0, p1}, Lo/GesturePoint;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static f([BI)Z
    .locals 7

    .line 264
    sget v0, Lo/GestureStore;->n:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x3

    .line 268
    aget-byte p1, p0, p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    return v1

    .line 273
    :cond_1
    sget-object p1, Lo/GestureStore;->o:[Ljava/lang/String;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 274
    array-length v4, p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ftyp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-static {v3}, Lo/GesturePoint;->c(Ljava/lang/String;)[B

    move-result-object v3

    sget v5, Lo/GestureStore;->n:I

    .line 275
    invoke-static {p0, v4, v3, v5}, Lo/GesturePoint;->e([BI[BI)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static i([BI)Z
    .locals 2

    .line 213
    sget-object v0, Lo/GestureStore;->g:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 216
    :cond_0
    invoke-static {p0, v0}, Lo/GesturePoint;->a([B[B)Z

    move-result p0

    return p0
.end method

.method private static j([BI)Z
    .locals 2

    .line 235
    sget-object v0, Lo/GestureStore;->i:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 238
    :cond_0
    invoke-static {p0, v0}, Lo/GesturePoint;->a([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a([BI)Lo/GestureLibraries;
    .locals 1

    .line 54
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v0, p2}, Lo/ThemedResourceCache;->c([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1, p2}, Lo/GestureStore;->d([BI)Lo/GestureLibraries;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-static {p1, p2}, Lo/GestureStore;->b([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget-object p1, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    return-object p1

    .line 64
    :cond_1
    invoke-static {p1, p2}, Lo/GestureStore;->c([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    sget-object p1, Lo/GestureLibrary;->b:Lo/GestureLibraries;

    return-object p1

    .line 68
    :cond_2
    invoke-static {p1, p2}, Lo/GestureStore;->e([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    sget-object p1, Lo/GestureLibrary;->e:Lo/GestureLibraries;

    return-object p1

    .line 72
    :cond_3
    invoke-static {p1, p2}, Lo/GestureStore;->i([BI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    sget-object p1, Lo/GestureLibrary;->c:Lo/GestureLibraries;

    return-object p1

    .line 76
    :cond_4
    invoke-static {p1, p2}, Lo/GestureStore;->j([BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    sget-object p1, Lo/GestureLibrary;->a:Lo/GestureLibraries;

    return-object p1

    .line 80
    :cond_5
    invoke-static {p1, p2}, Lo/GestureStore;->f([BI)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 81
    sget-object p1, Lo/GestureLibrary;->o:Lo/GestureLibraries;

    return-object p1

    .line 84
    :cond_6
    sget-object p1, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    return-object p1
.end method

.method public e()I
    .locals 1

    .line 40
    iget v0, p0, Lo/GestureStore;->d:I

    return v0
.end method
