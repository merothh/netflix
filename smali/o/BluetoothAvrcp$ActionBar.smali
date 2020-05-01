.class public Lo/BluetoothAvrcp$ActionBar;
.super Lo/BluetoothAvrcp$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothAvrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BluetoothAvrcp$Activity<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    new-instance v0, Lo/BluetoothAvrcp$ActionBar$5;

    invoke-direct {v0}, Lo/BluetoothAvrcp$ActionBar$5;-><init>()V

    invoke-direct {p0, v0}, Lo/BluetoothAvrcp$Activity;-><init>(Lo/BluetoothAvrcp$TaskDescription;)V

    return-void
.end method
