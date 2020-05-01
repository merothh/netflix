.class public abstract Lo/AdvertiseSettings;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Slice;
.implements Lo/TransactionExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lo/Slice<",
        "TT;>;",
        "Lo/TransactionExecutor;"
    }
.end annotation


# instance fields
.field protected final b:Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lo/AdvertiseSettings;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/AdvertiseSettings;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lo/AdvertiseSettings;->b:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 48
    iget-object v0, p0, Lo/AdvertiseSettings;->b:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto :goto_0

    .line 50
    :cond_0
    instance-of v1, v0, Lo/AdvertisingSetParameters;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lo/AdvertisingSetParameters;

    invoke-virtual {v0}, Lo/AdvertisingSetParameters;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/AdvertiseSettings;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
