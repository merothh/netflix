.class public Lo/BluetoothActivityEnergyInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothActivityEnergyInfo$Activity;,
        Lo/BluetoothActivityEnergyInfo$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcpPlayerSettings<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance p2, Lo/BluetoothAvrcpPlayerSettings$Application;

    new-instance p3, Lo/AuxiliaryResolveInfo;

    invoke-direct {p3, p1}, Lo/AuxiliaryResolveInfo;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/BluetoothActivityEnergyInfo$Activity;

    invoke-direct {p4, p1}, Lo/BluetoothActivityEnergyInfo$Activity;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3, p4}, Lo/BluetoothAvrcpPlayerSettings$Application;-><init>(Lo/FileBackupHelperBase;Lo/RestoreSession;)V

    return-object p2
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lo/BluetoothActivityEnergyInfo;->e(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0

    .line 19
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothActivityEnergyInfo;->a(Ljava/io/File;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
