.class public final Lo/ResultStorageDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ScanSettings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ScanSettings<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Lo/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ScanSettings<",
            "Lo/AdvertisingSetParameters;",
            "[B>;"
        }
    .end annotation
.end field

.field private final b:Lo/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ScanSettings<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field private final d:Lo/RulesUpdaterContract;


# direct methods
.method public constructor <init>(Lo/RulesUpdaterContract;Lo/ScanSettings;Lo/ScanSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RulesUpdaterContract;",
            "Lo/ScanSettings<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lo/ScanSettings<",
            "Lo/AdvertisingSetParameters;",
            "[B>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/ResultStorageDescriptor;->d:Lo/RulesUpdaterContract;

    .line 29
    iput-object p2, p0, Lo/ResultStorageDescriptor;->b:Lo/ScanSettings;

    .line 30
    iput-object p3, p0, Lo/ResultStorageDescriptor;->a:Lo/ScanSettings;

    return-void
.end method

.method private static e(Lo/Slice;)Lo/Slice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lo/Slice<",
            "Lo/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public d(Lo/Slice;Lo/FullBackupAgent;)Lo/Slice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "[B>;"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 38
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 39
    iget-object p1, p0, Lo/ResultStorageDescriptor;->b:Lo/ScanSettings;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lo/ResultStorageDescriptor;->d:Lo/RulesUpdaterContract;

    invoke-static {v0, v1}, Lo/BluetoothHidDeviceAppQosSettings;->c(Landroid/graphics/Bitmap;Lo/RulesUpdaterContract;)Lo/BluetoothHidDeviceAppQosSettings;

    move-result-object v0

    .line 39
    invoke-interface {p1, v0, p2}, Lo/ScanSettings;->d(Lo/Slice;Lo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    instance-of v0, v0, Lo/AdvertisingSetParameters;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lo/ResultStorageDescriptor;->a:Lo/ScanSettings;

    invoke-static {p1}, Lo/ResultStorageDescriptor;->e(Lo/Slice;)Lo/Slice;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lo/ScanSettings;->d(Lo/Slice;Lo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
