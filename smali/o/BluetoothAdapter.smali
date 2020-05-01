.class public interface abstract Lo/BluetoothAdapter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/BluetoothAdapter;

.field public static final d:Lo/BluetoothAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/BluetoothAdapter$3;

    invoke-direct {v0}, Lo/BluetoothAdapter$3;-><init>()V

    sput-object v0, Lo/BluetoothAdapter;->d:Lo/BluetoothAdapter;

    .line 30
    new-instance v0, Lo/BluetoothAvrcpController$StateListAnimator;

    invoke-direct {v0}, Lo/BluetoothAvrcpController$StateListAnimator;-><init>()V

    invoke-virtual {v0}, Lo/BluetoothAvrcpController$StateListAnimator;->b()Lo/BluetoothAvrcpController;

    move-result-object v0

    sput-object v0, Lo/BluetoothAdapter;->b:Lo/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public abstract d()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
