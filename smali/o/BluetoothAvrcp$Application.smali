.class public Lo/BluetoothAvrcp$Application;
.super Lo/BluetoothAvrcp$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothAvrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BluetoothAvrcp$Activity<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 161
    new-instance v0, Lo/BluetoothAvrcp$Application$4;

    invoke-direct {v0}, Lo/BluetoothAvrcp$Application$4;-><init>()V

    invoke-direct {p0, v0}, Lo/BluetoothAvrcp$Activity;-><init>(Lo/BluetoothAvrcp$TaskDescription;)V

    return-void
.end method
