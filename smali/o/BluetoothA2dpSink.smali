.class public Lo/BluetoothA2dpSink;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothA2dpSink$TaskDescription;,
        Lo/BluetoothA2dpSink$Application;,
        Lo/BluetoothA2dpSink$Activity;
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
.field private static final a:I = 0x16


# instance fields
.field private final b:Landroid/content/res/AssetManager;

.field private final d:Lo/BluetoothA2dpSink$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothA2dpSink$Activity<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lo/BluetoothA2dpSink$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Lo/BluetoothA2dpSink$Activity<",
            "TData;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/BluetoothA2dpSink;->b:Landroid/content/res/AssetManager;

    .line 33
    iput-object p2, p0, Lo/BluetoothA2dpSink;->d:Lo/BluetoothA2dpSink$Activity;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lo/BluetoothA2dpSink;->b(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/net/Uri;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 1
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

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, Lo/BluetoothA2dpSink;->a:I

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 40
    new-instance p3, Lo/BluetoothAvrcpPlayerSettings$Application;

    new-instance p4, Lo/AuxiliaryResolveInfo;

    invoke-direct {p4, p1}, Lo/AuxiliaryResolveInfo;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lo/BluetoothA2dpSink;->d:Lo/BluetoothA2dpSink$Activity;

    iget-object v0, p0, Lo/BluetoothA2dpSink;->b:Landroid/content/res/AssetManager;

    invoke-interface {p1, v0, p2}, Lo/BluetoothA2dpSink$Activity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lo/RestoreSession;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lo/BluetoothAvrcpPlayerSettings$Application;-><init>(Lo/FileBackupHelperBase;Lo/RestoreSession;)V

    return-object p3
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0

    .line 20
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothA2dpSink;->b(Landroid/net/Uri;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method
