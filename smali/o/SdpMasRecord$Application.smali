.class final Lo/SdpMasRecord$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Slice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SdpMasRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Slice<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/SdpMasRecord$Application;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/SdpMasRecord$Application;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 38
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lo/SdpMasRecord$Application;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 49
    iget-object v0, p0, Lo/SdpMasRecord$Application;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/FallbackCategoryProvider;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0

    return-void
.end method
