.class public Lo/BluetoothA2dpSink$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothDevice;
.implements Lo/BluetoothA2dpSink$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothDevice<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "Lo/BluetoothA2dpSink$Activity<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lo/BluetoothA2dpSink$Application;->d:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lo/RestoreSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lo/RestoreSession<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lo/ActivityConfigurationChangeItem;

    invoke-direct {v0, p1, p2}, Lo/ActivityConfigurationChangeItem;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BluetoothGattCallback;",
            ")",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance p1, Lo/BluetoothA2dpSink;

    iget-object v0, p0, Lo/BluetoothA2dpSink$Application;->d:Landroid/content/res/AssetManager;

    invoke-direct {p1, v0, p0}, Lo/BluetoothA2dpSink;-><init>(Landroid/content/res/AssetManager;Lo/BluetoothA2dpSink$Activity;)V

    return-object p1
.end method
