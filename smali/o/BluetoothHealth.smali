.class public Lo/BluetoothHealth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothHealth$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcpPlayerSettings<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "http"

    const-string v2, "https"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lo/BluetoothHealth;->e:Ljava/util/Set;

    return-void
.end method

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/BluetoothHealth;->c:Lo/BluetoothAvrcpPlayerSettings;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lo/BluetoothHealth;->c:Lo/BluetoothAvrcpPlayerSettings;

    new-instance v1, Lo/BluetoothAudioConfig;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/BluetoothAudioConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lo/BluetoothAvrcpPlayerSettings;->e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lo/BluetoothHealth;->d(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 1

    .line 39
    sget-object v0, Lo/BluetoothHealth;->e:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0

    .line 19
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothHealth;->a(Landroid/net/Uri;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method
