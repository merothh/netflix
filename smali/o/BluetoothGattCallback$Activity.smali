.class Lo/BluetoothGattCallback$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcpPlayerSettings<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
