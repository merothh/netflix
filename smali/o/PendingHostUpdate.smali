.class public Lo/PendingHostUpdate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PendingHostUpdate$Activity;,
        Lo/PendingHostUpdate$TaskDescription;,
        Lo/PendingHostUpdate$ActionBar;,
        Lo/PendingHostUpdate$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcpPlayerSettings<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field private final c:Lo/PendingHostUpdate$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PendingHostUpdate$Application<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/PendingHostUpdate$Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PendingHostUpdate$Application<",
            "TData;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/PendingHostUpdate;->c:Lo/PendingHostUpdate$Application;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lo/PendingHostUpdate;->e([B)Z

    move-result p1

    return p1
.end method

.method public d([BIILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "TData;>;"
        }
    .end annotation

    .line 31
    new-instance p2, Lo/BluetoothAvrcpPlayerSettings$Application;

    new-instance p3, Lo/AuxiliaryResolveInfo;

    invoke-direct {p3, p1}, Lo/AuxiliaryResolveInfo;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/PendingHostUpdate$ActionBar;

    iget-object v0, p0, Lo/PendingHostUpdate;->c:Lo/PendingHostUpdate$Application;

    invoke-direct {p4, p1, v0}, Lo/PendingHostUpdate$ActionBar;-><init>([BLo/PendingHostUpdate$Application;)V

    invoke-direct {p2, p3, p4}, Lo/BluetoothAvrcpPlayerSettings$Application;-><init>(Lo/FileBackupHelperBase;Lo/RestoreSession;)V

    return-object p2
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0

    .line 20
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/PendingHostUpdate;->d([BIILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method

.method public e([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
