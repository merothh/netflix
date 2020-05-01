.class public final Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method public static a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .locals 2

    .line 111
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->q()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY_EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY_EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->q()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY_MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY_MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->q()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z
    .locals 1

    .line 121
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->q()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->MY_LIST:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z
    .locals 0

    .line 119
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->q()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Ljava/lang/Integer;
    .locals 1

    .line 91
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object p0

    invoke-interface {p0}, Lo/agg;->c()Lcom/netflix/model/leafs/ArtworkColors;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/netflix/model/leafs/ArtworkColors;->getForegroundColor(I)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static e(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z
    .locals 2

    .line 62
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->d()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;->VIDEO:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static f(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .locals 1

    .line 129
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->w()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static g(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z
    .locals 0

    .line 127
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->w()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z
    .locals 1

    .line 131
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->q()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->MORE_INFO:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static i(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z
    .locals 1

    .line 123
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->q()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->SHARE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static j(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z
    .locals 1

    .line 125
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->q()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->REMIND_ME:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
