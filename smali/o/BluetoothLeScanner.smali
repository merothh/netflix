.class public Lo/BluetoothLeScanner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/io/File;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance p2, Lo/AdvertisingSet;

    invoke-direct {p2, p1}, Lo/AdvertisingSet;-><init>(Ljava/io/File;)V

    return-object p2
.end method

.method public synthetic c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0

    .line 13
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lo/BluetoothLeScanner;->d(Ljava/io/File;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/io/File;Lo/FullBackupAgent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0

    .line 13
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothLeScanner;->c(Ljava/io/File;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
