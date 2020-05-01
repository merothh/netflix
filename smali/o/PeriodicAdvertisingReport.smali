.class public Lo/PeriodicAdvertisingReport;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RestoreObserver<",
        "Lo/AdvertisingSetParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lo/RestoreObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/RestoreObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RestoreObserver;

    iput-object p1, p0, Lo/PeriodicAdvertisingReport;->d:Lo/RestoreObserver;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Lo/Slice;II)Lo/Slice;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/Slice<",
            "Lo/AdvertisingSetParameters;",
            ">;II)",
            "Lo/Slice<",
            "Lo/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-interface {p2}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AdvertisingSetParameters;

    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->b()Lo/RulesUpdaterContract;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lo/AdvertisingSetParameters;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 40
    new-instance v3, Lo/BluetoothHidDeviceAppQosSettings;

    invoke-direct {v3, v2, v1}, Lo/BluetoothHidDeviceAppQosSettings;-><init>(Landroid/graphics/Bitmap;Lo/RulesUpdaterContract;)V

    .line 41
    iget-object v1, p0, Lo/PeriodicAdvertisingReport;->d:Lo/RestoreObserver;

    invoke-interface {v1, p1, v3, p3, p4}, Lo/RestoreObserver;->c(Landroid/content/Context;Lo/Slice;II)Lo/Slice;

    move-result-object p1

    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 43
    invoke-interface {v3}, Lo/Slice;->j()V

    .line 45
    :cond_0
    invoke-interface {p1}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 47
    iget-object p3, p0, Lo/PeriodicAdvertisingReport;->d:Lo/RestoreObserver;

    invoke-virtual {v0, p3, p1}, Lo/AdvertisingSetParameters;->e(Lo/RestoreObserver;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public c(Ljava/security/MessageDigest;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/PeriodicAdvertisingReport;->d:Lo/RestoreObserver;

    invoke-interface {v0, p1}, Lo/RestoreObserver;->c(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 53
    instance-of v0, p1, Lo/PeriodicAdvertisingReport;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lo/PeriodicAdvertisingReport;

    .line 55
    iget-object v0, p0, Lo/PeriodicAdvertisingReport;->d:Lo/RestoreObserver;

    iget-object p1, p1, Lo/PeriodicAdvertisingReport;->d:Lo/RestoreObserver;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lo/PeriodicAdvertisingReport;->d:Lo/RestoreObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
