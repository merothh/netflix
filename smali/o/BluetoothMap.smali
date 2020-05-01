.class public Lo/BluetoothMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/BluetoothProfile;


# direct methods
.method public constructor <init>(Lo/BluetoothProfile;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/BluetoothMap;->a:Lo/BluetoothProfile;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0

    .line 16
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lo/BluetoothMap;->c(Ljava/nio/ByteBuffer;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/nio/ByteBuffer;Lo/FullBackupAgent;)Z
    .locals 0

    .line 25
    iget-object p2, p0, Lo/BluetoothMap;->a:Lo/BluetoothProfile;

    invoke-virtual {p2, p1}, Lo/BluetoothProfile;->e(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0

    .line 16
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothMap;->e(Ljava/nio/ByteBuffer;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/nio/ByteBuffer;IILo/FullBackupAgent;)Lo/Slice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lo/OverlayInfo;->a(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lo/BluetoothMap;->a:Lo/BluetoothProfile;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/BluetoothProfile;->a(Ljava/io/InputStream;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
