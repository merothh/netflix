.class public final Lo/OJ;
.super Lo/ArrayIndexOutOfBoundsException;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OJ$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/OJ$Activity;


# instance fields
.field private final c:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/util/List<",
            "Lo/OL;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/OJ$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/OJ$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/OJ;->b:Lo/OJ$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lo/ArrayIndexOutOfBoundsException;-><init>(Landroid/app/Application;)V

    .line 21
    new-instance p1, Lo/Cloneable;

    invoke-direct {p1}, Lo/Cloneable;-><init>()V

    iput-object p1, p0, Lo/OJ;->c:Lo/Cloneable;

    return-void
.end method

.method private final c(Ljava/util/List;Ljava/util/List;Lo/Am;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/OI;",
            ">;",
            "Ljava/util/List<",
            "Lo/OL;",
            ">;",
            "Lo/Am;",
            ")V"
        }
    .end annotation

    .line 175
    check-cast p1, Ljava/lang/Iterable;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 230
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 231
    check-cast v2, Lo/OI;

    .line 175
    invoke-virtual {v2}, Lo/OI;->b()Lio/reactivex/subjects/AsyncSubject;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 178
    check-cast v0, Ljava/lang/Iterable;

    sget-object v1, Lo/OJ$TaskDescription;->e:Lo/OJ$TaskDescription;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-static {v0, v1}, Lio/reactivex/Observable;->zip(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable\n            .\u2026TitleObservables, { it })"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$2;

    invoke-direct {v1, p2}, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$2;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/alA;

    .line 187
    sget-object v2, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$3;->b:Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$3;

    check-cast v2, Lo/alA;

    .line 188
    new-instance v3, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;

    invoke-direct {v3, p0, p2}, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;-><init>(Lo/OJ;Ljava/util/List;)V

    check-cast v3, Lo/alB;

    .line 179
    invoke-static {v0, v2, v3, v1}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;)Lio/reactivex/disposables/Disposable;

    .line 233
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/OI;

    .line 194
    invoke-virtual {p2, p3}, Lo/OI;->b(Lo/Am;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final d(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/social/multititle/NotificationModule;",
            ">;",
            "Ljava/util/List<",
            "Lo/OL;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 148
    check-cast p1, Ljava/lang/Iterable;

    .line 225
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/multititle/NotificationModule;

    .line 149
    instance-of v1, v0, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    if-eqz v1, :cond_1

    .line 150
    new-instance v1, Lo/OI;

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lo/OI;-><init>(ILcom/netflix/model/leafs/social/multititle/NotificationHeroModule;ZILo/amc;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_1
    instance-of v1, v0, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Lo/OC;

    const/4 v2, 0x0

    check-cast v0, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;->headlineText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.headlineText()"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lo/OC;-><init>(ILjava/lang/String;ILo/amc;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;->actions()Ljava/util/List;

    move-result-object v0

    const-string v1, "it.actions()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 226
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

    .line 158
    new-instance v1, Lo/OE;

    const/4 v7, 0x0

    const-string v2, "action"

    .line 159
    invoke-static {v8, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v1

    move v9, v5

    .line 158
    invoke-direct/range {v6 .. v11}, Lo/OE;-><init>(ILcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;ZILo/amc;)V

    .line 157
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    xor-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final b()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/util/List<",
            "Lo/OL;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lo/OJ;->c:Lo/Cloneable;

    return-object v0
.end method

.method public final d(Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Lo/Am;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "landingPage"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "serviceManager"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v2, v0, Lo/OJ;->c:Lo/Cloneable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 121
    new-instance v10, Lo/OG;

    const-string v11, ""

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->headlineText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v11

    :goto_0
    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->bodyText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v7, v4

    goto :goto_1

    :cond_1
    move-object v7, v11

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, v10

    .line 121
    invoke-direct/range {v4 .. v9}, Lo/OG;-><init>(ILjava/lang/String;Ljava/lang/String;ILo/amc;)V

    .line 120
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;->modules()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lo/OJ;->d(Ljava/util/List;Ljava/util/List;)V

    .line 130
    new-instance v4, Lo/Oz;

    const/4 v13, 0x0

    .line 131
    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;->buttonText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v5, v11

    check-cast v5, Ljava/lang/CharSequence;

    :goto_2
    move-object v14, v5

    .line 132
    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;->action()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v15, v5

    goto :goto_3

    :cond_3
    move-object v15, v11

    .line 133
    :goto_3
    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;

    move-result-object v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    check-cast v2, Lo/zR;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v12, v4

    .line 130
    invoke-direct/range {v12 .. v18}, Lo/Oz;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;ILo/amc;)V

    .line 129
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 219
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lo/OL;

    .line 138
    instance-of v6, v6, Lo/OI;

    if-eqz v6, :cond_5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 220
    :cond_6
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 222
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 223
    check-cast v5, Lo/OL;

    if-eqz v5, :cond_7

    .line 139
    check-cast v5, Lo/OI;

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.HeroTitle"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_8
    check-cast v2, Ljava/util/List;

    .line 141
    invoke-direct {v0, v2, v3, v1}, Lo/OJ;->c(Ljava/util/List;Ljava/util/List;Lo/Am;)V

    return-void
.end method

.method public final e(Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Lo/Am;Ljava/util/HashMap;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;",
            "Lo/Am;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "landingPage"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "serviceManager"

    invoke-static {v1, v3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;->modules()Ljava/util/List;

    move-result-object v3

    const-string v5, "landingPage.template().modulesList().modules()"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 205
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    if-eqz v7, :cond_0

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_1
    check-cast v5, Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    .line 40
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->moduleFiltersForActions()Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_16

    if-eqz v6, :cond_16

    const-string v3, "ratingInput"

    if-eqz v2, :cond_3

    const-string v6, "thumbs"

    .line 45
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    const-string v6, "notificationParams?.get(\u2026ATION_ACTION_RATING_INPUT"

    invoke-static {v2, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v8, -0x654ad461

    const/4 v14, 0x0

    if-eq v6, v8, :cond_6

    const v8, 0x16f2302d

    if-eq v6, v8, :cond_5

    const v3, 0x5d65b0d8

    if-eq v6, v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v3, "thumbsUp"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->moduleFiltersForActions()Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;->thumbsUpActionFilteredModules()Ljava/util/List;

    move-result-object v3

    goto :goto_4

    .line 54
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->moduleFiltersForActions()Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;->ratingInputActionFilteredModules()Ljava/util/List;

    move-result-object v3

    goto :goto_4

    :cond_6
    const-string v3, "thumbsDown"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->moduleFiltersForActions()Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;->thumbsDownActionFilteredModules()Ljava/util/List;

    move-result-object v3

    goto :goto_4

    :cond_7
    :goto_3
    move-object v3, v14

    :goto_4
    if-eqz v3, :cond_15

    .line 62
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    if-ne v6, v5, :cond_15

    .line 63
    iget-object v6, v0, Lo/OJ;->c:Lo/Cloneable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    invoke-virtual {v6, v8}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object v4

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 67
    invoke-virtual {v4}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;->modules()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_c

    check-cast v8, Ljava/lang/Iterable;

    .line 207
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netflix/model/leafs/social/multititle/NotificationModule;

    .line 69
    instance-of v9, v8, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    if-eqz v9, :cond_9

    new-instance v13, Lo/OS;

    const/4 v9, 0x0

    move-object v10, v8

    check-cast v10, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    const/4 v12, 0x1

    const/16 v16, 0x0

    move-object v8, v13

    move-object v11, v2

    move-object v5, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lo/OS;-><init>(ILcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;Ljava/lang/String;ILo/amc;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_6
    const/4 v10, 0x1

    goto/16 :goto_8

    .line 70
    :cond_9
    instance-of v5, v8, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    if-eqz v5, :cond_a

    move-object/from16 v20, v8

    check-cast v20, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    invoke-virtual/range {v20 .. v20}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->layout()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Lo/OI;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x5

    const/16 v23, 0x0

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v23}, Lo/OI;-><init>(ILcom/netflix/model/leafs/social/multititle/NotificationHeroModule;ZILo/amc;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 71
    :cond_a
    instance-of v5, v8, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    if-eqz v5, :cond_8

    check-cast v8, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    invoke-virtual {v8}, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;->layout()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 72
    new-instance v5, Lo/OC;

    invoke-virtual {v8}, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;->headlineText()Ljava/lang/String;

    move-result-object v9

    const-string v10, "it.headlineText()"

    invoke-static {v9, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-direct {v5, v7, v9, v10, v14}, Lo/OC;-><init>(ILjava/lang/String;ILo/amc;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v8}, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;->actions()Ljava/util/List;

    move-result-object v5

    const-string v8, "it.actions()"

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    .line 208
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x1

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

    .line 78
    new-instance v11, Lo/OE;

    const/16 v17, 0x0

    const-string v12, "action"

    .line 79
    invoke-static {v9, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-object/from16 v18, v9

    move/from16 v19, v8

    .line 78
    invoke-direct/range {v16 .. v21}, Lo/OE;-><init>(ILcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;ZILo/amc;)V

    .line 77
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    xor-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_c
    const-string v2, "cta_button"

    .line 91
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 93
    new-instance v2, Lo/Oz;

    const/4 v8, 0x0

    .line 94
    invoke-virtual {v4}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object v3

    const-string v5, ""

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;->buttonText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_9

    :cond_d
    move-object v3, v5

    check-cast v3, Ljava/lang/CharSequence;

    :goto_9
    move-object v9, v3

    .line 95
    invoke-virtual {v4}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;->action()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    move-object v10, v3

    goto :goto_a

    :cond_e
    move-object v10, v5

    .line 96
    :goto_a
    invoke-virtual {v4}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;

    move-result-object v14

    :cond_f
    check-cast v14, Lo/zR;

    invoke-static {v14}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v7, v2

    .line 93
    invoke-direct/range {v7 .. v13}, Lo/Oz;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;ILo/amc;)V

    .line 92
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_10
    move-object v2, v6

    check-cast v2, Ljava/lang/Iterable;

    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 212
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lo/OL;

    .line 102
    instance-of v5, v5, Lo/OI;

    if-eqz v5, :cond_11

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 213
    :cond_12
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 215
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 216
    check-cast v4, Lo/OL;

    if-eqz v4, :cond_13

    .line 103
    check-cast v4, Lo/OI;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.HeroTitle"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_14
    check-cast v2, Ljava/util/List;

    .line 105
    invoke-direct {v0, v2, v6, v1}, Lo/OJ;->c(Ljava/util/List;Ljava/util/List;Lo/Am;)V

    goto :goto_d

    .line 107
    :cond_15
    invoke-virtual/range {p0 .. p2}, Lo/OJ;->d(Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Lo/Am;)V

    goto :goto_d

    .line 110
    :cond_16
    invoke-virtual/range {p0 .. p2}, Lo/OJ;->d(Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Lo/Am;)V

    :goto_d
    return-void
.end method
