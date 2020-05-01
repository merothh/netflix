.class public Lo/BluetoothGattCharacteristic$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothGattCharacteristic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothDevice<",
        "Ljava/lang/Integer;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lo/BluetoothGattCharacteristic$StateListAnimator;->c:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothGattCallback;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lo/BluetoothGattCharacteristic;

    iget-object v1, p0, Lo/BluetoothGattCharacteristic$StateListAnimator;->c:Landroid/content/res/Resources;

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    invoke-virtual {p1, v2, v3}, Lo/BluetoothGattCallback;->c(Ljava/lang/Class;Ljava/lang/Class;)Lo/BluetoothAvrcpPlayerSettings;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/BluetoothGattCharacteristic;-><init>(Landroid/content/res/Resources;Lo/BluetoothAvrcpPlayerSettings;)V

    return-object v0
.end method
