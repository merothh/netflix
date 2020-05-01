.class public final Lo/SZ$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "DownloadedErrorVideoModel"

    .line 37
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/SZ$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lo/Bi;Lo/Tf;)Lo/Te;
    .locals 5

    const-string v0, "modelId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineViewData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lo/Te;

    invoke-direct {v0}, Lo/Te;-><init>()V

    .line 49
    invoke-virtual {p3}, Lo/Tf;->bb()Lo/AK;

    move-result-object v1

    const-string v2, "video.playable"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/Te;->a(Ljava/lang/CharSequence;)Lo/Te;

    .line 52
    invoke-virtual {p3}, Lo/Tf;->as()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Te;->a(Ljava/lang/String;)Lo/Te;

    .line 53
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Te;->d(Ljava/lang/String;)Lo/Te;

    .line 54
    invoke-virtual {p3}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Te;->a(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lo/Te;

    .line 55
    invoke-virtual {p3}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/Te;->b(Ljava/lang/CharSequence;)Lo/Te;

    .line 56
    invoke-interface {v1}, Lo/AK;->S()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Te;->i(I)Lo/Te;

    .line 57
    invoke-virtual {p3}, Lo/Tf;->aQ()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/Te;->d(Ljava/lang/CharSequence;)Lo/Te;

    .line 58
    invoke-virtual {p3}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 59
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realmHorzDispUrl for video movie? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lo/Tf;->bb()Lo/AK;

    move-result-object v3

    invoke-static {v3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lo/Tf;->bb()Lo/AK;

    move-result-object v4

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-virtual {p3}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Te;->b(Ljava/lang/String;)Lo/Te;

    .line 63
    invoke-interface {p2}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Te;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lo/Te;

    .line 64
    invoke-interface {p2}, Lo/Bi;->z()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/Te;->e(J)Lo/Te;

    .line 65
    invoke-interface {p2}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Te;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)Lo/Te;

    .line 66
    invoke-interface {p2}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Te;->a(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Lo/Te;

    .line 67
    invoke-interface {p2}, Lo/Bi;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Te;->g(I)Lo/Te;

    .line 68
    invoke-interface {p2}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/Te;->c(Z)Lo/Te;

    .line 69
    invoke-interface {p2}, Lo/Bi;->x()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/Te;->c(J)Lo/Te;

    .line 70
    invoke-virtual {v0}, Lo/Te;->z()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v1, :cond_1

    .line 71
    invoke-virtual {p3}, Lo/Tf;->bb()Lo/AK;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/AK;->X()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Te;->f(I)Lo/Te;

    .line 72
    invoke-virtual {p3}, Lo/Tf;->V()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Te;->o(I)Lo/Te;

    .line 73
    invoke-virtual {p3}, Lo/Tf;->ai()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/Te;->a(Z)Lo/Te;

    .line 75
    :cond_1
    invoke-interface {p2}, Lo/Bi;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Te;->j(I)Lo/Te;

    return-object v0
.end method
