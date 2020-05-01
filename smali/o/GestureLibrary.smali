.class public final Lo/GestureLibrary;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/GestureLibraries;

.field public static final b:Lo/GestureLibraries;

.field public static final c:Lo/GestureLibraries;

.field public static final d:Lo/GestureLibraries;

.field public static final e:Lo/GestureLibraries;

.field public static final f:Lo/GestureLibraries;

.field public static final g:Lo/GestureLibraries;

.field public static final h:Lo/GestureLibraries;

.field public static final i:Lo/GestureLibraries;

.field public static final j:Lo/GestureLibraries;

.field public static final o:Lo/GestureLibraries;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lo/GestureLibraries;

    const-string v1, "JPEG"

    const-string v2, "jpeg"

    invoke-direct {v0, v1, v2}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    .line 19
    new-instance v0, Lo/GestureLibraries;

    const-string v1, "PNG"

    const-string v2, "png"

    invoke-direct {v0, v1, v2}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->b:Lo/GestureLibraries;

    .line 20
    new-instance v0, Lo/GestureLibraries;

    const-string v1, "GIF"

    const-string v2, "gif"

    invoke-direct {v0, v1, v2}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->e:Lo/GestureLibraries;

    .line 21
    new-instance v0, Lo/GestureLibraries;

    const-string v1, "BMP"

    const-string v2, "bmp"

    invoke-direct {v0, v1, v2}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->c:Lo/GestureLibraries;

    .line 22
    new-instance v0, Lo/GestureLibraries;

    const-string v1, "ICO"

    const-string v2, "ico"

    invoke-direct {v0, v1, v2}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->a:Lo/GestureLibraries;

    .line 23
    new-instance v0, Lo/GestureLibraries;

    const-string v1, "webp"

    const-string v2, "WEBP_SIMPLE"

    invoke-direct {v0, v2, v1}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->i:Lo/GestureLibraries;

    .line 24
    new-instance v0, Lo/GestureLibraries;

    const-string v2, "WEBP_LOSSLESS"

    invoke-direct {v0, v2, v1}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->h:Lo/GestureLibraries;

    .line 25
    new-instance v0, Lo/GestureLibraries;

    const-string v2, "WEBP_EXTENDED"

    invoke-direct {v0, v2, v1}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->f:Lo/GestureLibraries;

    .line 26
    new-instance v0, Lo/GestureLibraries;

    const-string v2, "WEBP_EXTENDED_WITH_ALPHA"

    invoke-direct {v0, v2, v1}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->j:Lo/GestureLibraries;

    .line 28
    new-instance v0, Lo/GestureLibraries;

    const-string v2, "WEBP_ANIMATED"

    invoke-direct {v0, v2, v1}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->g:Lo/GestureLibraries;

    .line 29
    new-instance v0, Lo/GestureLibraries;

    const-string v1, "HEIF"

    const-string v2, "heif"

    invoke-direct {v0, v1, v2}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibrary;->o:Lo/GestureLibraries;

    return-void
.end method

.method public static a(Lo/GestureLibraries;)Z
    .locals 1

    .line 51
    sget-object v0, Lo/GestureLibrary;->i:Lo/GestureLibraries;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/GestureLibrary;->h:Lo/GestureLibraries;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/GestureLibrary;->f:Lo/GestureLibraries;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/GestureLibrary;->j:Lo/GestureLibraries;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Lo/GestureLibraries;)Z
    .locals 1

    .line 40
    invoke-static {p0}, Lo/GestureLibrary;->a(Lo/GestureLibraries;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/GestureLibrary;->g:Lo/GestureLibraries;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
