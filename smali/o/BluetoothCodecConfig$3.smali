.class Lo/BluetoothCodecConfig$3;
.super Lo/FeatureGroupInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BluetoothCodecConfig;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FeatureGroupInfo<",
        "Lo/BluetoothCodecConfig$ActionBar<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/BluetoothCodecConfig;


# direct methods
.method constructor <init>(Lo/BluetoothCodecConfig;J)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/BluetoothCodecConfig$3;->d:Lo/BluetoothCodecConfig;

    invoke-direct {p0, p2, p3}, Lo/FeatureGroupInfo;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a(Lo/BluetoothCodecConfig$ActionBar;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothCodecConfig$ActionBar<",
            "TA;>;TB;)V"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lo/BluetoothCodecConfig$ActionBar;->d()V

    return-void
.end method

.method protected synthetic c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lo/BluetoothCodecConfig$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/BluetoothCodecConfig$3;->a(Lo/BluetoothCodecConfig$ActionBar;Ljava/lang/Object;)V

    return-void
.end method
