.class final Lo/AdvertisingSetParameters$TaskDescription;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AdvertisingSetParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field final d:Lo/PeriodicAdvertisingParameters;


# direct methods
.method constructor <init>(Lo/PeriodicAdvertisingParameters;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 451
    iput-object p1, p0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 463
    new-instance v0, Lo/AdvertisingSetParameters;

    invoke-direct {v0, p0}, Lo/AdvertisingSetParameters;-><init>(Lo/AdvertisingSetParameters$TaskDescription;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 457
    invoke-virtual {p0}, Lo/AdvertisingSetParameters$TaskDescription;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
