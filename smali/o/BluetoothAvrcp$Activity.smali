.class public Lo/BluetoothAvrcp$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothAvrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/BluetoothDevice<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final d:Lo/BluetoothAvrcp$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothAvrcp$TaskDescription<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/BluetoothAvrcp$TaskDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothAvrcp$TaskDescription<",
            "TData;>;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lo/BluetoothAvrcp$Activity;->d:Lo/BluetoothAvrcp$TaskDescription;

    return-void
.end method


# virtual methods
.method public final e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothGattCallback;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    .line 122
    new-instance p1, Lo/BluetoothAvrcp;

    iget-object v0, p0, Lo/BluetoothAvrcp$Activity;->d:Lo/BluetoothAvrcp$TaskDescription;

    invoke-direct {p1, v0}, Lo/BluetoothAvrcp;-><init>(Lo/BluetoothAvrcp$TaskDescription;)V

    return-object p1
.end method
