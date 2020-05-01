.class public Lo/InstanceLearner;
.super Lo/Camera;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final a:Lo/CameraManager;

.field private final e:Lo/RequestQueue;


# direct methods
.method public constructor <init>(Lo/RequestQueue;Lo/CameraManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/Camera;-><init>()V

    .line 32
    iput-object p1, p0, Lo/InstanceLearner;->e:Lo/RequestQueue;

    .line 33
    iput-object p2, p0, Lo/InstanceLearner;->a:Lo/CameraManager;

    return-void
.end method


# virtual methods
.method public c(IILandroid/graphics/Bitmap$Config;)Lo/CompatibilityInfo;
    .locals 4
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

    .line 50
    invoke-static {p1, p2, p3}, Lo/ProgramSelector;->e(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 51
    iget-object v1, p0, Lo/InstanceLearner;->e:Lo/RequestQueue;

    invoke-interface {v1, v0}, Lo/RequestQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    mul-int v2, p1, p2

    .line 54
    invoke-static {p3}, Lo/ProgramSelector;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v3

    mul-int v2, v2, v3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-static {v1}, Lo/StringParceledListSlice;->a(Z)V

    .line 55
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 56
    iget-object p1, p0, Lo/InstanceLearner;->a:Lo/CameraManager;

    iget-object p2, p0, Lo/InstanceLearner;->e:Lo/RequestQueue;

    invoke-virtual {p1, v0, p2}, Lo/CameraManager;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method
