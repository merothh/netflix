.class final Lo/BluetoothAvrcp$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothAvrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/RestoreSession<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field private final d:Ljava/io/File;

.field private final e:Lo/BluetoothAvrcp$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothAvrcp$TaskDescription<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lo/BluetoothAvrcp$TaskDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lo/BluetoothAvrcp$TaskDescription<",
            "TData;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/BluetoothAvrcp$StateListAnimator;->d:Ljava/io/File;

    .line 62
    iput-object p2, p0, Lo/BluetoothAvrcp$StateListAnimator;->e:Lo/BluetoothAvrcp$TaskDescription;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lo/BluetoothAvrcp$StateListAnimator;->e:Lo/BluetoothAvrcp$TaskDescription;

    invoke-interface {v0}, Lo/BluetoothAvrcp$TaskDescription;->e()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lo/RestoreSession$Application<",
            "-TData;>;)V"
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object p1, p0, Lo/BluetoothAvrcp$StateListAnimator;->e:Lo/BluetoothAvrcp$TaskDescription;

    iget-object v0, p0, Lo/BluetoothAvrcp$StateListAnimator;->d:Ljava/io/File;

    invoke-interface {p1, v0}, Lo/BluetoothAvrcp$TaskDescription;->e(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/BluetoothAvrcp$StateListAnimator;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    iget-object p1, p0, Lo/BluetoothAvrcp$StateListAnimator;->c:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lo/RestoreSession$Application;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "FileLoader"

    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to open file"

    .line 71
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_0
    invoke-interface {p2, p1}, Lo/RestoreSession$Application;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public b()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 104
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->a:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 81
    iget-object v0, p0, Lo/BluetoothAvrcp$StateListAnimator;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v1, p0, Lo/BluetoothAvrcp$StateListAnimator;->e:Lo/BluetoothAvrcp$TaskDescription;

    invoke-interface {v1, v0}, Lo/BluetoothAvrcp$TaskDescription;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
