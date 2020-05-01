.class public final Lo/BluetoothLeUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "Lo/BackupManager;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/RulesUpdaterContract;


# direct methods
.method public constructor <init>(Lo/RulesUpdaterContract;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/BluetoothLeUtils;->b:Lo/RulesUpdaterContract;

    return-void
.end method


# virtual methods
.method public synthetic c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0

    .line 16
    check-cast p1, Lo/BackupManager;

    invoke-virtual {p0, p1, p2}, Lo/BluetoothLeUtils;->d(Lo/BackupManager;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public d(Lo/BackupManager;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BackupManager;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Lo/BackupManager;->f()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lo/BluetoothLeUtils;->b:Lo/RulesUpdaterContract;

    invoke-static {p1, p2}, Lo/BluetoothHidDeviceAppQosSettings;->c(Landroid/graphics/Bitmap;Lo/RulesUpdaterContract;)Lo/BluetoothHidDeviceAppQosSettings;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/BackupManager;Lo/FullBackupAgent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0

    .line 16
    check-cast p1, Lo/BackupManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothLeUtils;->d(Lo/BackupManager;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
