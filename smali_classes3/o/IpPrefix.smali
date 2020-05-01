.class Lo/IpPrefix;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IpSecUdpEncapResponse;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/IpPrefix;->d:Landroid/os/Messenger;

    .line 38
    iput-object p2, p0, Lo/IpPrefix;->b:Ljava/lang/String;

    return-void
.end method

.method private b(I)Landroid/os/Message;
    .locals 3

    .line 52
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 53
    iput v1, v0, Landroid/os/Message;->what:I

    .line 54
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 56
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 57
    iget-object v1, p0, Lo/IpPrefix;->b:Ljava/lang/String;

    const-string v2, "tag"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 44
    :try_start_0
    iget-object v0, p0, Lo/IpPrefix;->d:Landroid/os/Messenger;

    invoke-direct {p0, p1}, Lo/IpPrefix;->b(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
