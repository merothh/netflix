.class final Lo/BluetoothA2dp$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
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
.field private final b:Ljava/lang/String;

.field private final c:Lo/BluetoothA2dp$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothA2dp$Activity<",
            "TData;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/BluetoothA2dp$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/BluetoothA2dp$Activity<",
            "TData;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lo/BluetoothA2dp$TaskDescription;->b:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lo/BluetoothA2dp$TaskDescription;->c:Lo/BluetoothA2dp$Activity;

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

    .line 104
    iget-object v0, p0, Lo/BluetoothA2dp$TaskDescription;->c:Lo/BluetoothA2dp$Activity;

    invoke-interface {v0}, Lo/BluetoothA2dp$Activity;->d()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lo/RestoreSession$Application<",
            "-TData;>;)V"
        }
    .end annotation

    .line 80
    :try_start_0
    iget-object p1, p0, Lo/BluetoothA2dp$TaskDescription;->c:Lo/BluetoothA2dp$Activity;

    iget-object v0, p0, Lo/BluetoothA2dp$TaskDescription;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/BluetoothA2dp$Activity;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/BluetoothA2dp$TaskDescription;->e:Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lo/BluetoothA2dp$TaskDescription;->e:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lo/RestoreSession$Application;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-interface {p2, p1}, Lo/RestoreSession$Application;->d(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public b()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 110
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->a:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 90
    :try_start_0
    iget-object v0, p0, Lo/BluetoothA2dp$TaskDescription;->c:Lo/BluetoothA2dp$Activity;

    iget-object v1, p0, Lo/BluetoothA2dp$TaskDescription;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/BluetoothA2dp$Activity;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
