.class public Lo/ThemedResourceCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lo/ResourcesImpl;

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field private static e:Z

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/ThemedResourceCache;->b:Z

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lo/ThemedResourceCache;->d:Z

    .line 23
    invoke-static {}, Lo/ThemedResourceCache;->b()Z

    move-result v0

    sput-boolean v0, Lo/ThemedResourceCache;->c:Z

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lo/ThemedResourceCache;->a:Lo/ResourcesImpl;

    .line 27
    sput-boolean v2, Lo/ThemedResourceCache;->e:Z

    const-string v0, "RIFF"

    .line 81
    invoke-static {v0}, Lo/ThemedResourceCache;->e(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ThemedResourceCache;->g:[B

    const-string v0, "WEBP"

    .line 82
    invoke-static {v0}, Lo/ThemedResourceCache;->e(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ThemedResourceCache;->h:[B

    const-string v0, "VP8 "

    .line 87
    invoke-static {v0}, Lo/ThemedResourceCache;->e(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ThemedResourceCache;->f:[B

    const-string v0, "VP8L"

    .line 88
    invoke-static {v0}, Lo/ThemedResourceCache;->e(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ThemedResourceCache;->i:[B

    const-string v0, "VP8X"

    .line 89
    invoke-static {v0}, Lo/ThemedResourceCache;->e(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ThemedResourceCache;->j:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)Z
    .locals 1

    add-int/lit8 p1, p1, 0xc

    .line 156
    sget-object v0, Lo/ThemedResourceCache;->i:[B

    invoke-static {p0, p1, v0}, Lo/ThemedResourceCache;->e([BI[B)Z

    move-result p0

    return p0
.end method

.method private static b()Z
    .locals 5

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 102
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA=="

    .line 105
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 106
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 107
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 108
    array-length v4, v0

    invoke-static {v0, v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v0, v3, :cond_1

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v0, v3, :cond_2

    :cond_1
    return v2

    :cond_2
    return v3
.end method

.method public static c()Lo/ResourcesImpl;
    .locals 2

    .line 30
    sget-boolean v0, Lo/ThemedResourceCache;->e:Z

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lo/ThemedResourceCache;->a:Lo/ResourcesImpl;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.webpsupport.WebpBitmapFactoryImpl"

    .line 36
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ResourcesImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    const/4 v1, 0x1

    .line 41
    sput-boolean v1, Lo/ThemedResourceCache;->e:Z

    return-object v0
.end method

.method public static c([BI)Z
    .locals 3

    add-int/lit8 v0, p1, 0xc

    .line 145
    sget-object v1, Lo/ThemedResourceCache;->j:[B

    invoke-static {p0, v0, v1}, Lo/ThemedResourceCache;->e([BI[B)Z

    move-result v0

    add-int/lit8 p1, p1, 0x14

    .line 147
    aget-byte p0, p0, p1

    const/4 p1, 0x2

    and-int/2addr p0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static c([BII)Z
    .locals 1

    const/16 v0, 0x14

    if-lt p2, v0, :cond_0

    .line 189
    sget-object p2, Lo/ThemedResourceCache;->g:[B

    .line 190
    invoke-static {p0, p1, p2}, Lo/ThemedResourceCache;->e([BI[B)Z

    move-result p2

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x8

    sget-object p2, Lo/ThemedResourceCache;->h:[B

    .line 191
    invoke-static {p0, p1, p2}, Lo/ThemedResourceCache;->e([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d([BI)Z
    .locals 1

    add-int/lit8 p1, p1, 0xc

    .line 152
    sget-object v0, Lo/ThemedResourceCache;->f:[B

    invoke-static {p0, p1, v0}, Lo/ThemedResourceCache;->e([BI[B)Z

    move-result p0

    return p0
.end method

.method public static e([BI)Z
    .locals 3

    add-int/lit8 v0, p1, 0xc

    .line 170
    sget-object v1, Lo/ThemedResourceCache;->j:[B

    invoke-static {p0, v0, v1}, Lo/ThemedResourceCache;->e([BI[B)Z

    move-result v0

    add-int/lit8 p1, p1, 0x14

    .line 172
    aget-byte p0, p0, p1

    const/16 p1, 0x10

    and-int/2addr p0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static e([BII)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    add-int/lit8 p1, p1, 0xc

    .line 163
    sget-object p2, Lo/ThemedResourceCache;->j:[B

    .line 164
    invoke-static {p0, p1, p2}, Lo/ThemedResourceCache;->e([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e([BI[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    array-length v1, p2

    add-int/2addr v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 205
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    add-int v2, v1, p1

    .line 206
    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method private static e(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "ASCII"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII not found!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
