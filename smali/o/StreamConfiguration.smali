.class public Lo/StreamConfiguration;
.super Lo/OutputConfiguration;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>(Lo/RequestQueue;ILo/CharArrayReader$StateListAnimator;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lo/OutputConfiguration;-><init>(Lo/RequestQueue;ILo/CharArrayReader$StateListAnimator;)V

    return-void
.end method

.method private static e(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 41
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(IILandroid/graphics/BitmapFactory$Options;)I
    .locals 1

    .line 33
    invoke-static {p3}, Lo/StreamConfiguration;->e(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 35
    invoke-static {p1, p2, p3}, Lo/ProgramSelector;->e(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    :goto_0
    return p1
.end method
