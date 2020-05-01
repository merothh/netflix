.class public Lo/BluetoothHeadsetClientCall$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothHeadsetClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothDevice<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lo/BluetoothHeadsetClientCall$TaskDescription;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothGattCallback;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance p1, Lo/BluetoothHeadsetClientCall;

    iget-object v0, p0, Lo/BluetoothHeadsetClientCall$TaskDescription;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lo/BluetoothHeadsetClientCall;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
