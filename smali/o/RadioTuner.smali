.class Lo/RadioTuner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RadioTuner$StateListAnimator;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lo/RadioTuner;

    sput-object v0, Lo/RadioTuner;->d:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;IZI)I
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0xe

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 139
    invoke-static {p0, v1, p2}, Lo/NanoAppState;->e(Ljava/io/InputStream;IZ)I

    move-result v2

    add-int/lit8 p1, p1, -0x2

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_2

    const/16 v2, 0xc

    if-lt p1, v2, :cond_2

    .line 142
    invoke-static {p0, v1, p2}, Lo/NanoAppState;->e(Ljava/io/InputStream;IZ)I

    move-result v2

    add-int/lit8 p1, p1, -0x2

    if-ne v2, p3, :cond_1

    return p1

    :cond_1
    const-wide/16 v4, 0xa

    .line 147
    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    add-int/lit8 p1, p1, -0xa

    move v2, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static b(Ljava/io/InputStream;I)I
    .locals 4

    .line 56
    new-instance v0, Lo/RadioTuner$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RadioTuner$StateListAnimator;-><init>(Lo/RadioTuner$2;)V

    .line 57
    invoke-static {p0, p1, v0}, Lo/RadioTuner;->b(Ljava/io/InputStream;ILo/RadioTuner$StateListAnimator;)I

    move-result p1

    .line 62
    iget v1, v0, Lo/RadioTuner$StateListAnimator;->a:I

    add-int/lit8 v1, v1, -0x8

    if-eqz p1, :cond_1

    if-le v1, p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v2, v1

    .line 66
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    sub-int/2addr p1, v1

    .line 70
    iget-boolean v1, v0, Lo/RadioTuner$StateListAnimator;->c:Z

    const/16 v2, 0x112

    invoke-static {p0, p1, v1, v2}, Lo/RadioTuner;->a(Ljava/io/InputStream;IZI)I

    move-result p1

    .line 73
    iget-boolean v0, v0, Lo/RadioTuner$StateListAnimator;->c:Z

    invoke-static {p0, p1, v0}, Lo/RadioTuner;->d(Ljava/io/InputStream;IZ)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/io/InputStream;ILo/RadioTuner$StateListAnimator;)I
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x4

    .line 99
    invoke-static {p0, v2, v1}, Lo/NanoAppState;->e(Ljava/io/InputStream;IZ)I

    move-result v3

    iput v3, p2, Lo/RadioTuner$StateListAnimator;->b:I

    add-int/lit8 p1, p1, -0x4

    .line 101
    iget v3, p2, Lo/RadioTuner$StateListAnimator;->b:I

    const v4, 0x49492a00    # 823968.0f

    if-eq v3, v4, :cond_1

    iget v3, p2, Lo/RadioTuner$StateListAnimator;->b:I

    const v5, 0x4d4d002a    # 2.14958752E8f

    if-eq v3, v5, :cond_1

    .line 103
    sget-object p0, Lo/RadioTuner;->d:Ljava/lang/Class;

    const-string p1, "Invalid TIFF header"

    invoke-static {p0, p1}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v1

    .line 106
    :cond_1
    iget v3, p2, Lo/RadioTuner$StateListAnimator;->b:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p2, Lo/RadioTuner$StateListAnimator;->c:Z

    .line 109
    iget-boolean v3, p2, Lo/RadioTuner$StateListAnimator;->c:Z

    invoke-static {p0, v2, v3}, Lo/NanoAppState;->e(Ljava/io/InputStream;IZ)I

    move-result p0

    iput p0, p2, Lo/RadioTuner$StateListAnimator;->a:I

    add-int/lit8 p1, p1, -0x4

    .line 111
    iget p0, p2, Lo/RadioTuner$StateListAnimator;->a:I

    if-lt p0, v0, :cond_4

    iget p0, p2, Lo/RadioTuner$StateListAnimator;->a:I

    sub-int/2addr p0, v0

    if-le p0, p1, :cond_3

    goto :goto_1

    :cond_3
    return p1

    .line 112
    :cond_4
    :goto_1
    sget-object p0, Lo/RadioTuner;->d:Ljava/lang/Class;

    const-string p1, "Invalid offset"

    invoke-static {p0, p1}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v1
.end method

.method private static d(Ljava/io/InputStream;IZ)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    .line 166
    invoke-static {p0, p1, p2}, Lo/NanoAppState;->e(Ljava/io/InputStream;IZ)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x4

    .line 171
    invoke-static {p0, v1, p2}, Lo/NanoAppState;->e(Ljava/io/InputStream;IZ)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    return v0

    .line 175
    :cond_2
    invoke-static {p0, p1, p2}, Lo/NanoAppState;->e(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 176
    invoke-static {p0, p1, p2}, Lo/NanoAppState;->e(Ljava/io/InputStream;IZ)I

    return v0
.end method

.method public static e(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0

    :cond_3
    return v0
.end method
