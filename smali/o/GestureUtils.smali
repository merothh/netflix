.class public Lo/GestureUtils;
.super Lo/Camera;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/Camera;-><init>()V

    return-void
.end method


# virtual methods
.method public c(IILandroid/graphics/Bitmap$Config;)Lo/CompatibilityInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lo/CompatibilityInfo<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 34
    invoke-static {}, Lo/OrientedBoundingBox;->d()Lo/OrientedBoundingBox;

    move-result-object p2

    invoke-static {p1, p2}, Lo/CompatibilityInfo;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method
