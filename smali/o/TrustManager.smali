.class Lo/TrustManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CacheQuotaHint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TrustManager$StateListAnimator;,
        Lo/TrustManager$Activity;
    }
.end annotation


# instance fields
.field private final b:Lo/EventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EventList<",
            "Lo/TrustManager$StateListAnimator;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/TrustManager$Activity;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lo/TrustManager$Activity;

    invoke-direct {v0}, Lo/TrustManager$Activity;-><init>()V

    iput-object v0, p0, Lo/TrustManager;->c:Lo/TrustManager$Activity;

    .line 14
    new-instance v0, Lo/EventList;

    invoke-direct {v0}, Lo/EventList;-><init>()V

    iput-object v0, p0, Lo/TrustManager;->b:Lo/EventList;

    return-void
.end method

.method static e(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lo/TrustManager;->e(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 18
    iget-object v0, p0, Lo/TrustManager;->c:Lo/TrustManager$Activity;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/TrustManager$Activity;->e(IILandroid/graphics/Bitmap$Config;)Lo/TrustManager$StateListAnimator;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lo/TrustManager;->b:Lo/EventList;

    invoke-virtual {v1, v0, p1}, Lo/EventList;->b(Lo/ExternalStorageStats;Ljava/lang/Object;)V

    return-void
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p1, p2, p3}, Lo/TrustManager;->e(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p1}, Lo/TrustManager;->e(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/TrustManager;->b:Lo/EventList;

    invoke-virtual {v0}, Lo/EventList;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 47
    invoke-static {p1}, Lo/FallbackCategoryProvider;->d(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/TrustManager;->c:Lo/TrustManager$Activity;

    invoke-virtual {v0, p1, p2, p3}, Lo/TrustManager$Activity;->e(IILandroid/graphics/Bitmap$Config;)Lo/TrustManager$StateListAnimator;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lo/TrustManager;->b:Lo/EventList;

    invoke-virtual {p2, p1}, Lo/EventList;->b(Lo/ExternalStorageStats;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/TrustManager;->b:Lo/EventList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
