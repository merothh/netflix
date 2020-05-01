.class public Lo/BluetoothGattCharacteristic$TaskDescription;
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
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothDevice<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lo/BluetoothGattCharacteristic$TaskDescription;->d:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothGattCallback;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance p1, Lo/BluetoothGattCharacteristic;

    iget-object v0, p0, Lo/BluetoothGattCharacteristic$TaskDescription;->d:Landroid/content/res/Resources;

    invoke-static {}, Lo/BluetoothGattServer;->e()Lo/BluetoothGattServer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lo/BluetoothGattCharacteristic;-><init>(Landroid/content/res/Resources;Lo/BluetoothAvrcpPlayerSettings;)V

    return-object p1
.end method
