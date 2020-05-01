.class public final Lo/BluetoothHidDeviceAppSdpSettings;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/RestoreObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:Lo/RestoreObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RestoreObserver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lo/BluetoothHidDeviceAppSdpSettings;

    invoke-direct {v0}, Lo/BluetoothHidDeviceAppSdpSettings;-><init>()V

    sput-object v0, Lo/BluetoothHidDeviceAppSdpSettings;->e:Lo/RestoreObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/BluetoothHidDeviceAppSdpSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/BluetoothHidDeviceAppSdpSettings<",
            "TT;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Lo/BluetoothHidDeviceAppSdpSettings;->e:Lo/RestoreObserver;

    check-cast v0, Lo/BluetoothHidDeviceAppSdpSettings;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Lo/Slice;II)Lo/Slice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/Slice<",
            "TT;>;II)",
            "Lo/Slice<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public c(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method
