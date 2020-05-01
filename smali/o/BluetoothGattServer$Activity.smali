.class public Lo/BluetoothGattServer$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/BluetoothDevice<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final e:Lo/BluetoothGattServer$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothGattServer$Activity<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lo/BluetoothGattServer$Activity;

    invoke-direct {v0}, Lo/BluetoothGattServer$Activity;-><init>()V

    sput-object v0, Lo/BluetoothGattServer$Activity;->e:Lo/BluetoothGattServer$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/BluetoothGattServer$Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/BluetoothGattServer$Activity<",
            "TT;>;"
        }
    .end annotation

    .line 97
    sget-object v0, Lo/BluetoothGattServer$Activity;->e:Lo/BluetoothGattServer$Activity;

    return-object v0
.end method


# virtual methods
.method public e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothGattCallback;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "TModel;TModel;>;"
        }
    .end annotation

    .line 111
    invoke-static {}, Lo/BluetoothGattServer;->e()Lo/BluetoothGattServer;

    move-result-object p1

    return-object p1
.end method
