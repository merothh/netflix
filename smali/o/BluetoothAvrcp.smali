.class public Lo/BluetoothAvrcp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothAvrcp$Application;,
        Lo/BluetoothAvrcp$ActionBar;,
        Lo/BluetoothAvrcp$Activity;,
        Lo/BluetoothAvrcp$StateListAnimator;,
        Lo/BluetoothAvrcp$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcpPlayerSettings<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final b:Lo/BluetoothAvrcp$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothAvrcp$TaskDescription<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/BluetoothAvrcp$TaskDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothAvrcp$TaskDescription<",
            "TData;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/BluetoothAvrcp;->b:Lo/BluetoothAvrcp$TaskDescription;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lo/BluetoothAvrcp;->c(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public e(Ljava/io/File;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "TData;>;"
        }
    .end annotation

    .line 37
    new-instance p2, Lo/BluetoothAvrcpPlayerSettings$Application;

    new-instance p3, Lo/AuxiliaryResolveInfo;

    invoke-direct {p3, p1}, Lo/AuxiliaryResolveInfo;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/BluetoothAvrcp$StateListAnimator;

    iget-object v0, p0, Lo/BluetoothAvrcp;->b:Lo/BluetoothAvrcp$TaskDescription;

    invoke-direct {p4, p1, v0}, Lo/BluetoothAvrcp$StateListAnimator;-><init>(Ljava/io/File;Lo/BluetoothAvrcp$TaskDescription;)V

    invoke-direct {p2, p3, p4}, Lo/BluetoothAvrcpPlayerSettings$Application;-><init>(Lo/FileBackupHelperBase;Lo/RestoreSession;)V

    return-object p2
.end method

.method public bridge synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0

    .line 23
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothAvrcp;->e(Ljava/io/File;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method
