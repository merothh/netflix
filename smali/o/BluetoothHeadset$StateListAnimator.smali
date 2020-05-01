.class public Lo/BluetoothHeadset$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothDevice<",
        "Lo/BluetoothAudioConfig;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lo/BluetoothCodecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothCodecConfig<",
            "Lo/BluetoothAudioConfig;",
            "Lo/BluetoothAudioConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lo/BluetoothCodecConfig;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lo/BluetoothCodecConfig;-><init>(J)V

    iput-object v0, p0, Lo/BluetoothHeadset$StateListAnimator;->e:Lo/BluetoothCodecConfig;

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
            "Lo/BluetoothAudioConfig;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance p1, Lo/BluetoothHeadset;

    iget-object v0, p0, Lo/BluetoothHeadset$StateListAnimator;->e:Lo/BluetoothCodecConfig;

    invoke-direct {p1, v0}, Lo/BluetoothHeadset;-><init>(Lo/BluetoothCodecConfig;)V

    return-object p1
.end method
