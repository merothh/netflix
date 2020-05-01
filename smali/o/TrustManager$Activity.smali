.class Lo/TrustManager$Activity;
.super Lo/Utils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Utils<",
        "Lo/TrustManager$StateListAnimator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lo/Utils;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lo/ExternalStorageStats;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lo/TrustManager$Activity;->b()Lo/TrustManager$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lo/TrustManager$StateListAnimator;
    .locals 1

    .line 75
    new-instance v0, Lo/TrustManager$StateListAnimator;

    invoke-direct {v0, p0}, Lo/TrustManager$StateListAnimator;-><init>(Lo/TrustManager$Activity;)V

    return-object v0
.end method

.method e(IILandroid/graphics/Bitmap$Config;)Lo/TrustManager$StateListAnimator;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lo/TrustManager$Activity;->e()Lo/ExternalStorageStats;

    move-result-object v0

    check-cast v0, Lo/TrustManager$StateListAnimator;

    .line 69
    invoke-virtual {v0, p1, p2, p3}, Lo/TrustManager$StateListAnimator;->e(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
