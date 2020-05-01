.class public final Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;
.super Lcom/airbnb/epoxy/TypedEpoxyController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/TypedEpoxyController<",
        "Lo/PI;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusFactory:Lo/UpdateEngine;


# direct methods
.method public constructor <init>(Lo/UpdateEngine;)V
    .locals 1

    const-string v0, "eventBusFactory"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/airbnb/epoxy/TypedEpoxyController;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;->eventBusFactory:Lo/UpdateEngine;

    return-void
.end method

.method public static final synthetic access$getEventBusFactory$p(Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;)Lo/UpdateEngine;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;->eventBusFactory:Lo/UpdateEngine;

    return-object p0
.end method

.method private final getCallback(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$ActionBar;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$ActionBar;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Landroid/view/View$OnClickListener;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/PI;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;->buildModels(Lo/PI;)V

    return-void
.end method

.method protected buildModels(Lo/PI;)V
    .locals 13

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lo/PJ;

    invoke-direct {v0}, Lo/PJ;-><init>()V

    .line 107
    move-object v1, v0

    check-cast v1, Lo/PM;

    const-string v2, "headline"

    .line 36
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/PM;->b(Ljava/lang/CharSequence;)Lo/PM;

    .line 37
    invoke-virtual {p1}, Lo/PI;->b()Lo/Pn;

    move-result-object v2

    invoke-virtual {v2}, Lo/Pn;->c()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/PM;->a(Ljava/lang/CharSequence;)Lo/PM;

    .line 38
    invoke-virtual {p1}, Lo/PI;->b()Lo/Pn;

    move-result-object v2

    invoke-virtual {v2}, Lo/Pn;->e()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/PM;->e(Ljava/lang/CharSequence;)Lo/PM;

    .line 106
    invoke-virtual {v0, p0}, Lo/PJ;->a(Lo/OfPrimitive;)V

    .line 41
    invoke-virtual {p1}, Lo/PI;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Iterable;

    .line 112
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    check-cast v4, Lo/Po;

    .line 42
    invoke-virtual {v4}, Lo/Po;->c()Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 113
    new-instance v7, Lo/PG;

    invoke-direct {v7}, Lo/PG;-><init>()V

    .line 117
    move-object v8, v7

    check-cast v8, Lo/PE;

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hero_title_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v8, v3}, Lo/PE;->a(Ljava/lang/CharSequence;)Lo/PE;

    .line 45
    invoke-virtual {v6}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->heroImageWebp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Lo/PE;->c(Ljava/lang/String;)Lo/PE;

    .line 46
    invoke-virtual {v6}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->bodyCopy()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v8, v3}, Lo/PE;->e(Ljava/lang/CharSequence;)Lo/PE;

    .line 48
    invoke-virtual {v6}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->actions()Ljava/util/List;

    move-result-object v3

    const-string v6, "module.actions()"

    invoke-static {v3, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 118
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;

    .line 49
    invoke-virtual {v6}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->actionType()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x178a1

    if-eq v10, v11, :cond_6

    const v11, 0x6bac4cf

    if-eq v10, v11, :cond_5

    const v6, 0x551ac888

    if-eq v10, v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "download"

    .line 52
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lo/Po;->b()Lo/Bc;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lo/Bc;->bb()Lo/AK;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v2

    :goto_2
    invoke-interface {v8, v6}, Lo/PE;->c(Lo/AK;)Lo/PE;

    goto :goto_1

    :cond_5
    const-string v10, "watch"

    .line 50
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->action()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Lo/PE;->d(Ljava/lang/String;)Lo/PE;

    goto :goto_1

    :cond_6
    const-string v6, "add"

    .line 51
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lo/Po;->b()Lo/Bc;

    move-result-object v6

    invoke-interface {v8, v6}, Lo/PE;->e(Lo/Bc;)Lo/PE;

    goto :goto_1

    .line 116
    :cond_7
    invoke-virtual {v7, p0}, Lo/PG;->a(Lo/OfPrimitive;)V

    :cond_8
    move v3, v5

    goto/16 :goto_0

    .line 59
    :cond_9
    invoke-virtual {p1}, Lo/PI;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, Ljava/lang/Iterable;

    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_a

    invoke-static {}, Lo/akz;->c()V

    :cond_a
    check-cast v4, Lo/Pp;

    .line 60
    invoke-virtual {v4}, Lo/Pp;->e()Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;->headlineText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 126
    new-instance v7, Lo/Pz;

    invoke-direct {v7}, Lo/Pz;-><init>()V

    .line 130
    move-object v8, v7

    check-cast v8, Lo/Pw;

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "grid_headline_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v8, v3}, Lo/Pw;->a(Ljava/lang/CharSequence;)Lo/Pw;

    .line 63
    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v8, v6}, Lo/Pw;->b(Ljava/lang/CharSequence;)Lo/Pw;

    .line 129
    invoke-virtual {v7, p0}, Lo/Pz;->a(Lo/OfPrimitive;)V

    .line 67
    :cond_b
    invoke-virtual {v4}, Lo/Pp;->e()Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;->actions()Ljava/util/List;

    move-result-object v3

    const-string v4, "model.module.actions()"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lo/akz;->d(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 135
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-gez v4, :cond_c

    invoke-static {}, Lo/akz;->c()V

    :cond_c
    check-cast v6, Ljava/util/List;

    .line 70
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

    const/4 v9, 0x1

    .line 71
    invoke-static {v6, v9}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

    .line 136
    new-instance v9, Lo/PA;

    invoke-direct {v9}, Lo/PA;-><init>()V

    .line 140
    move-object v10, v9

    check-cast v10, Lo/Py;

    .line 74
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "grid_module_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v10, v4}, Lo/Py;->a(Ljava/lang/CharSequence;)Lo/Py;

    .line 75
    invoke-virtual {p1}, Lo/PI;->a()I

    move-result v4

    invoke-interface {v10, v4}, Lo/Py;->c(I)Lo/Py;

    .line 76
    invoke-virtual {v8}, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;->boxshotWebp()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Lo/Py;->d(Ljava/lang/String;)Lo/Py;

    .line 77
    invoke-virtual {v8}, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;->action()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;->getCallback(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-interface {v10, v4}, Lo/Py;->d(Landroid/view/View$OnClickListener;)Lo/Py;

    if-eqz v6, :cond_d

    .line 78
    invoke-virtual {v6}, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;->boxshotWebp()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_d
    move-object v4, v2

    :goto_5
    invoke-interface {v10, v4}, Lo/Py;->c(Ljava/lang/String;)Lo/Py;

    if-eqz v6, :cond_e

    .line 79
    invoke-virtual {v6}, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;->action()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_e
    move-object v4, v2

    :goto_6
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;->getCallback(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-interface {v10, v4}, Lo/Py;->c(Landroid/view/View$OnClickListener;)Lo/Py;

    .line 139
    invoke-virtual {v9, p0}, Lo/PA;->a(Lo/OfPrimitive;)V

    move v4, v7

    goto :goto_4

    :cond_f
    move v3, v5

    goto/16 :goto_3

    .line 85
    :cond_10
    invoke-virtual {p1}, Lo/PI;->e()Lo/Pi;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lo/Pi;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_11
    move-object v0, v2

    .line 86
    :goto_7
    invoke-virtual {p1}, Lo/PI;->e()Lo/Pi;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lo/Pi;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_12
    move-object v1, v2

    .line 87
    :goto_8
    invoke-virtual {p1}, Lo/PI;->e()Lo/Pi;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lo/Pi;->a()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v2

    .line 88
    :cond_13
    new-instance p1, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$buildModels$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$buildModels$4;-><init>(Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;)V

    check-cast p1, Lo/alO;

    .line 84
    invoke-static {v0, v1, v2, p1}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    return-void
.end method

.method public final updateData(Lo/PI;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;->setData(Ljava/lang/Object;)V

    return-void
.end method
