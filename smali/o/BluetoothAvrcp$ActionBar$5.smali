.class Lo/BluetoothAvrcp$ActionBar$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAvrcp$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BluetoothAvrcp$ActionBar;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BluetoothAvrcp$TaskDescription<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lo/BluetoothAvrcp$ActionBar$5;->d(Ljava/io/InputStream;)V

    return-void
.end method

.method public d(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1

    .line 139
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)V
    .locals 0

    .line 144
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 149
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public synthetic e(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lo/BluetoothAvrcp$ActionBar$5;->d(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
