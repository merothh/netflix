.class Lo/PendingHostUpdate$TaskDescription$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PendingHostUpdate$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PendingHostUpdate$TaskDescription;->e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/PendingHostUpdate$Application<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/PendingHostUpdate$TaskDescription;


# direct methods
.method constructor <init>(Lo/PendingHostUpdate$TaskDescription;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/PendingHostUpdate$TaskDescription$3;->c:Lo/PendingHostUpdate$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a([B)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lo/PendingHostUpdate$TaskDescription$3;->c([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 111
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public c([B)Ljava/nio/ByteBuffer;
    .locals 0

    .line 106
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
