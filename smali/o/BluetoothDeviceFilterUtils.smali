.class public Lo/BluetoothDeviceFilterUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ScanSettings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ScanSettings<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final c:Lo/BluetoothDeviceFilterUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothDeviceFilterUtils<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/BluetoothDeviceFilterUtils;

    invoke-direct {v0}, Lo/BluetoothDeviceFilterUtils;-><init>()V

    sput-object v0, Lo/BluetoothDeviceFilterUtils;->c:Lo/BluetoothDeviceFilterUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/ScanSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/ScanSettings<",
            "TZ;TZ;>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lo/BluetoothDeviceFilterUtils;->c:Lo/BluetoothDeviceFilterUtils;

    return-object v0
.end method


# virtual methods
.method public d(Lo/Slice;Lo/FullBackupAgent;)Lo/Slice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "TZ;>;",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
