.class public Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lo/nS;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;
    .locals 10

    .line 38
    invoke-interface {p0}, Lo/nS;->p()Lo/Bg;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Lo/Bg;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 44
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;->b:Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;

    return-object p0

    .line 47
    :cond_0
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    invoke-interface {v0}, Lo/Rq;->g()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 52
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;->b:Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;

    return-object p0

    .line 56
    :cond_1
    invoke-interface {p0}, Lo/Bg;->d()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 58
    :goto_0
    invoke-interface {p0, v0}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/Bh;

    invoke-interface {v4}, Lo/Bh;->a()J

    move-result-wide v4

    invoke-interface {p0, v0}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bh;

    invoke-interface {v0}, Lo/Bh;->h()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 59
    invoke-interface {p0, v3}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bh;

    invoke-interface {v0}, Lo/Bh;->a()J

    move-result-wide v6

    invoke-interface {p0, v3}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/Bh;

    invoke-interface {p0}, Lo/Bh;->h()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long p0, v6, v4

    if-gtz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 66
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;->b:Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;

    return-object p0

    :cond_4
    const-wide/32 v0, 0x3b9aca00

    .line 71
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p0

    invoke-interface {p0, p1}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 72
    invoke-interface {p0}, Lo/Bi;->w()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long p1, v4, v8

    if-lez p1, :cond_5

    .line 73
    invoke-interface {p0}, Lo/Bi;->w()J

    move-result-wide v0

    :cond_5
    cmp-long p0, v6, v0

    if-gtz p0, :cond_6

    .line 79
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;->b:Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;

    return-object p0

    :cond_6
    if-nez v3, :cond_7

    .line 84
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;->a:Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;

    goto :goto_2

    :cond_7
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;->e:Lcom/netflix/mediaclient/ui/offline/StorageSwitchHelper$StorageSwitchOption;

    :goto_2
    return-object p0
.end method
