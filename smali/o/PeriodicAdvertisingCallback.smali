.class public Lo/PeriodicAdvertisingCallback;
.super Lo/AdvertiseSettings;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AdvertiseSettings<",
        "Lo/AdvertisingSetParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/AdvertisingSetParameters;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/AdvertiseSettings;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 37
    iget-object v0, p0, Lo/PeriodicAdvertisingCallback;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/AdvertisingSetParameters;

    invoke-virtual {v0}, Lo/AdvertisingSetParameters;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lo/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation

    .line 21
    const-class v0, Lo/AdvertisingSetParameters;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 26
    iget-object v0, p0, Lo/PeriodicAdvertisingCallback;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/AdvertisingSetParameters;

    invoke-virtual {v0}, Lo/AdvertisingSetParameters;->c()I

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .line 31
    iget-object v0, p0, Lo/PeriodicAdvertisingCallback;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/AdvertisingSetParameters;

    invoke-virtual {v0}, Lo/AdvertisingSetParameters;->stop()V

    .line 32
    iget-object v0, p0, Lo/PeriodicAdvertisingCallback;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/AdvertisingSetParameters;

    invoke-virtual {v0}, Lo/AdvertisingSetParameters;->f()V

    return-void
.end method
