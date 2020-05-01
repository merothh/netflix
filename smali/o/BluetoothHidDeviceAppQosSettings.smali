.class public Lo/BluetoothHidDeviceAppQosSettings;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Slice;
.implements Lo/TransactionExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Slice<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lo/TransactionExecutor;"
    }
.end annotation


# instance fields
.field private final c:Lo/RulesUpdaterContract;

.field private final d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lo/RulesUpdaterContract;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 37
    invoke-static {p1, v0}, Lo/FeatureInfo;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lo/BluetoothHidDeviceAppQosSettings;->d:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    .line 38
    invoke-static {p2, p1}, Lo/FeatureInfo;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RulesUpdaterContract;

    iput-object p1, p0, Lo/BluetoothHidDeviceAppQosSettings;->c:Lo/RulesUpdaterContract;

    return-void
.end method

.method public static c(Landroid/graphics/Bitmap;Lo/RulesUpdaterContract;)Lo/BluetoothHidDeviceAppQosSettings;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    new-instance v0, Lo/BluetoothHidDeviceAppQosSettings;

    invoke-direct {v0, p0, p1}, Lo/BluetoothHidDeviceAppQosSettings;-><init>(Landroid/graphics/Bitmap;Lo/RulesUpdaterContract;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/BluetoothHidDeviceAppQosSettings;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 65
    iget-object v0, p0, Lo/BluetoothHidDeviceAppQosSettings;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
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

    .line 44
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lo/BluetoothHidDeviceAppQosSettings;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 55
    iget-object v0, p0, Lo/BluetoothHidDeviceAppQosSettings;->d:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/FallbackCategoryProvider;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .line 60
    iget-object v0, p0, Lo/BluetoothHidDeviceAppQosSettings;->c:Lo/RulesUpdaterContract;

    iget-object v1, p0, Lo/BluetoothHidDeviceAppQosSettings;->d:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lo/RulesUpdaterContract;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
