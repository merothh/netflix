.class Lo/BluetoothGattCallback$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;Lo/CharArrayReader$Activity;)Lo/BluetoothGatt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "TModel;TData;>;>;",
            "Lo/CharArrayReader$Activity<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Lo/BluetoothGatt<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Lo/BluetoothGatt;

    invoke-direct {v0, p1, p2}, Lo/BluetoothGatt;-><init>(Ljava/util/List;Lo/CharArrayReader$Activity;)V

    return-object v0
.end method
