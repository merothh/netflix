.class Lo/PendingHostUpdate$Activity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PendingHostUpdate$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PendingHostUpdate$Activity;->e(Lo/BluetoothGattCallback;)Lo/BluetoothAvrcpPlayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/PendingHostUpdate$Application<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/PendingHostUpdate$Activity;


# direct methods
.method constructor <init>(Lo/PendingHostUpdate$Activity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lo/PendingHostUpdate$Activity$3;->a:Lo/PendingHostUpdate$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a([B)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lo/PendingHostUpdate$Activity$3;->c([B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public c([B)Ljava/io/InputStream;
    .locals 1

    .line 133
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 138
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
