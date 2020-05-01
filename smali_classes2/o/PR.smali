.class public final Lo/PR;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c(Lo/PI$Application;Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lo/PI;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PI$Application;",
            "Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lo/Bc;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;",
            ">;)",
            "Lo/PI;"
        }
    .end annotation

    const-string v0, "$this$toModel"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p1, p0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0xa

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 39
    check-cast p2, Ljava/lang/Iterable;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, p0}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 68
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 69
    check-cast v3, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    .line 37
    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->titleId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 38
    invoke-static {v1, p2}, Lo/akz;->d(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Iterable;

    .line 39
    invoke-static {p2}, Lo/akI;->b(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 42
    check-cast p3, Ljava/lang/Iterable;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3, p0}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 72
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 73
    check-cast v2, Lo/Bc;

    .line 43
    new-instance v3, Lo/Po;

    .line 44
    invoke-interface {v2}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    .line 43
    invoke-direct {v3, v4, v2}, Lo/Po;-><init>(Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;Lo/Bc;)V

    .line 46
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    :cond_2
    move-object p2, v1

    check-cast p2, Ljava/util/List;

    move-object v3, p2

    goto :goto_3

    :cond_3
    move-object v3, v0

    :goto_3
    if-eqz p4, :cond_5

    .line 50
    check-cast p4, Ljava/lang/Iterable;

    .line 75
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p4, p0}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 76
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 77
    check-cast p3, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    .line 50
    new-instance p4, Lo/Pp;

    invoke-direct {p4, p3}, Lo/Pp;-><init>(Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;)V

    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 78
    :cond_4
    move-object p0, p2

    check-cast p0, Ljava/util/List;

    move-object v4, p0

    goto :goto_5

    :cond_5
    move-object v4, v0

    .line 52
    :goto_5
    new-instance p0, Lo/PI;

    .line 53
    new-instance v2, Lo/Pn;

    .line 54
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->headlineText()Ljava/lang/String;

    move-result-object p2

    const-string p3, "template.headlineText()"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->bodyText()Ljava/lang/String;

    move-result-object p3

    const-string p4, "template.bodyText()"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {v2, p2, p3}, Lo/Pn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_6

    :cond_6
    new-instance v0, Lo/Pi;

    .line 60
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;->buttonText()Ljava/lang/String;

    move-result-object p2

    const-string p3, "template.ctaButton().buttonText()"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;->action()Ljava/lang/String;

    move-result-object p3

    const-string p4, "template.ctaButton().action()"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;

    move-result-object p1

    check-cast p1, Lo/zR;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    const-string p4, "CLv2Utils.toTrackingInfo\u2026aButton().trackingInfo())"

    invoke-static {p1, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {v0, p2, p3, p1}, Lo/Pi;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V

    :goto_6
    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    .line 52
    invoke-direct/range {v1 .. v8}, Lo/PI;-><init>(Lo/Pn;Ljava/util/List;Ljava/util/List;Lo/Pi;IILo/amc;)V

    return-object p0
.end method
