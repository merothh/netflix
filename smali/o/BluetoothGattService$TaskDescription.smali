.class public final Lo/BluetoothGattService$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothGattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothDevice<",
        "Ljava/lang/String;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothGattCallback;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Lo/BluetoothGattService;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lo/BluetoothGattCallback;->c(Ljava/lang/Class;Ljava/lang/Class;)Lo/BluetoothAvrcpPlayerSettings;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/BluetoothGattService;-><init>(Lo/BluetoothAvrcpPlayerSettings;)V

    return-object v0
.end method
