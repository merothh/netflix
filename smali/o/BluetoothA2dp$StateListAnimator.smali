.class public final Lo/BluetoothA2dp$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/BluetoothDevice<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/BluetoothA2dp$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothA2dp$Activity<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lo/BluetoothA2dp$StateListAnimator$2;

    invoke-direct {v0, p0}, Lo/BluetoothA2dp$StateListAnimator$2;-><init>(Lo/BluetoothA2dp$StateListAnimator;)V

    iput-object v0, p0, Lo/BluetoothA2dp$StateListAnimator;->a:Lo/BluetoothA2dp$Activity;

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
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance p1, Lo/BluetoothA2dp;

    iget-object v0, p0, Lo/BluetoothA2dp$StateListAnimator;->a:Lo/BluetoothA2dp$Activity;

    invoke-direct {p1, v0}, Lo/BluetoothA2dp;-><init>(Lo/BluetoothA2dp$Activity;)V

    return-object p1
.end method
