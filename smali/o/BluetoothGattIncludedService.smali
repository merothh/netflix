.class public Lo/BluetoothGattIncludedService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothGattIncludedService$Activity;,
        Lo/BluetoothGattIncludedService$Application;,
        Lo/BluetoothGattIncludedService$TaskDescription;,
        Lo/BluetoothGattIncludedService$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcpPlayerSettings<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Lo/BluetoothGattIncludedService$ActionBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothGattIncludedService$ActionBar<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "file"

    const-string v2, "android.resource"

    const-string v3, "content"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lo/BluetoothGattIncludedService;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lo/BluetoothGattIncludedService$ActionBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothGattIncludedService$ActionBar<",
            "TData;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lo/BluetoothGattIncludedService;->e:Lo/BluetoothGattIncludedService$ActionBar;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lo/BluetoothGattIncludedService;->d(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/net/Uri;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "TData;>;"
        }
    .end annotation

    .line 50
    new-instance p2, Lo/BluetoothAvrcpPlayerSettings$Application;

    new-instance p3, Lo/AuxiliaryResolveInfo;

    invoke-direct {p3, p1}, Lo/AuxiliaryResolveInfo;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lo/BluetoothGattIncludedService;->e:Lo/BluetoothGattIncludedService$ActionBar;

    invoke-interface {p4, p1}, Lo/BluetoothGattIncludedService$ActionBar;->a(Landroid/net/Uri;)Lo/RestoreSession;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lo/BluetoothAvrcpPlayerSettings$Application;-><init>(Lo/FileBackupHelperBase;Lo/RestoreSession;)V

    return-object p2
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 1

    .line 55
    sget-object v0, Lo/BluetoothGattIncludedService;->a:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0

    .line 28
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothGattIncludedService;->d(Landroid/net/Uri;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method
