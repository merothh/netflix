.class public Lo/OrientedBoundingBox;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ConfigurationBoundResourceCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ConfigurationBoundResourceCache<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static d:Lo/OrientedBoundingBox;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lo/OrientedBoundingBox;
    .locals 1

    .line 21
    sget-object v0, Lo/OrientedBoundingBox;->d:Lo/OrientedBoundingBox;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lo/OrientedBoundingBox;

    invoke-direct {v0}, Lo/OrientedBoundingBox;-><init>()V

    sput-object v0, Lo/OrientedBoundingBox;->d:Lo/OrientedBoundingBox;

    .line 24
    :cond_0
    sget-object v0, Lo/OrientedBoundingBox;->d:Lo/OrientedBoundingBox;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/OrientedBoundingBox;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
