.class public Lo/BluetoothHealthAppConfiguration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothHealthAppConfiguration$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcpPlayerSettings<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lo/BluetoothAvrcpPlayerSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Lo/BluetoothAudioConfig;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/BluetoothAvrcpPlayerSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Lo/BluetoothAudioConfig;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/BluetoothHealthAppConfiguration;->c:Lo/BluetoothAvrcpPlayerSettings;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/BluetoothHealthAppConfiguration;->c:Lo/BluetoothAvrcpPlayerSettings;

    new-instance v1, Lo/BluetoothAudioConfig;

    invoke-direct {v1, p1}, Lo/BluetoothAudioConfig;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lo/BluetoothAvrcpPlayerSettings;->e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1}, Lo/BluetoothHealthAppConfiguration;->d(Ljava/net/URL;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/net/URL;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0

    .line 18
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothHealthAppConfiguration;->a(Ljava/net/URL;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method
