.class public Lo/ReprocessFormatsMap;
.super Lo/OutputConfiguration;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>(Lo/RequestQueue;ILo/CharArrayReader$StateListAnimator;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lo/OutputConfiguration;-><init>(Lo/RequestQueue;ILo/CharArrayReader$StateListAnimator;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/BitmapFactory$Options;)I
    .locals 0

    .line 29
    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Lo/ProgramSelector;->e(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    return p1
.end method
