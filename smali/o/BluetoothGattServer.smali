.class public Lo/BluetoothGattServer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothGattServer$Activity;,
        Lo/BluetoothGattServer$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcpPlayerSettings<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final b:Lo/BluetoothGattServer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothGattServer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/BluetoothGattServer;

    invoke-direct {v0}, Lo/BluetoothGattServer;-><init>()V

    sput-object v0, Lo/BluetoothGattServer;->b:Lo/BluetoothGattServer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/BluetoothGattServer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/BluetoothGattServer<",
            "TT;>;"
        }
    .end annotation

    .line 22
    sget-object v0, Lo/BluetoothGattServer;->b:Lo/BluetoothGattServer;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "TModel;>;"
        }
    .end annotation

    .line 38
    new-instance p2, Lo/BluetoothAvrcpPlayerSettings$Application;

    new-instance p3, Lo/AuxiliaryResolveInfo;

    invoke-direct {p3, p1}, Lo/AuxiliaryResolveInfo;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/BluetoothGattServer$ActionBar;

    invoke-direct {p4, p1}, Lo/BluetoothGattServer$ActionBar;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lo/BluetoothAvrcpPlayerSettings$Application;-><init>(Lo/FileBackupHelperBase;Lo/RestoreSession;)V

    return-object p2
.end method
