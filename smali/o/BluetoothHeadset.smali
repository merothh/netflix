.class public Lo/BluetoothHeadset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcpPlayerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothHeadset$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcpPlayerSettings<",
        "Lo/BluetoothAudioConfig;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FullBackupDataOutput<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Lo/BluetoothCodecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothCodecConfig<",
            "Lo/BluetoothAudioConfig;",
            "Lo/BluetoothAudioConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    .line 28
    invoke-static {v1, v0}, Lo/FullBackupDataOutput;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/FullBackupDataOutput;

    move-result-object v0

    sput-object v0, Lo/BluetoothHeadset;->a:Lo/FullBackupDataOutput;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lo/BluetoothHeadset;-><init>(Lo/BluetoothCodecConfig;)V

    return-void
.end method

.method public constructor <init>(Lo/BluetoothCodecConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothCodecConfig<",
            "Lo/BluetoothAudioConfig;",
            "Lo/BluetoothAudioConfig;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/BluetoothHeadset;->e:Lo/BluetoothCodecConfig;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, Lo/BluetoothAudioConfig;

    invoke-virtual {p0, p1}, Lo/BluetoothHeadset;->b(Lo/BluetoothAudioConfig;)Z

    move-result p1

    return p1
.end method

.method public b(Lo/BluetoothAudioConfig;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0

    .line 20
    check-cast p1, Lo/BluetoothAudioConfig;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothHeadset;->e(Lo/BluetoothAudioConfig;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/BluetoothAudioConfig;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothAudioConfig;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p2, p0, Lo/BluetoothHeadset;->e:Lo/BluetoothCodecConfig;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 48
    invoke-virtual {p2, p1, p3, p3}, Lo/BluetoothCodecConfig;->b(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/BluetoothAudioConfig;

    if-nez p2, :cond_0

    .line 50
    iget-object p2, p0, Lo/BluetoothHeadset;->e:Lo/BluetoothCodecConfig;

    invoke-virtual {p2, p1, p3, p3, p1}, Lo/BluetoothCodecConfig;->e(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 54
    :cond_1
    :goto_0
    sget-object p2, Lo/BluetoothHeadset;->a:Lo/FullBackupDataOutput;

    invoke-virtual {p4, p2}, Lo/FullBackupAgent;->a(Lo/FullBackupDataOutput;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 55
    new-instance p3, Lo/BluetoothAvrcpPlayerSettings$Application;

    new-instance p4, Lo/ActivityLifecycleItem;

    invoke-direct {p4, p1, p2}, Lo/ActivityLifecycleItem;-><init>(Lo/BluetoothAudioConfig;I)V

    invoke-direct {p3, p1, p4}, Lo/BluetoothAvrcpPlayerSettings$Application;-><init>(Lo/FileBackupHelperBase;Lo/RestoreSession;)V

    return-object p3
.end method
