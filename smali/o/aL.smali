.class public final Lo/aL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aL$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/aL$ActionBar;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aL$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aL$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/aL;->b:Lo/aL$ActionBar;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aL;->c:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic a(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lo/aL;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    return-void
.end method

.method private final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2}, Lo/aL;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    .line 188
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lo/aeb;->d(Landroid/app/Activity;)V

    .line 192
    instance-of p2, p1, Lo/OM;

    if-eqz p2, :cond_0

    .line 193
    check-cast p1, Lo/OM;

    invoke-virtual {p1}, Lo/OM;->n()V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lo/aL;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    return-void
.end method

.method public static final synthetic b(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Long;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lo/aL;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Long;Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 118
    iget-object v0, v6, Lo/aL;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "thumbs"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ratingInput"

    :goto_0
    move-object v9, v0

    const-string v0, "thumbsUp"

    .line 121
    invoke-static {v9, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "thumbsDown"

    invoke-static {v9, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 168
    :cond_1
    invoke-direct/range {p0 .. p2}, Lo/aL;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    goto/16 :goto_6

    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-eqz v8, :cond_5

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;->modules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/netflix/model/leafs/social/multititle/NotificationModule;

    instance-of v4, v4, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    check-cast v3, Lcom/netflix/model/leafs/social/multititle/NotificationModule;

    goto :goto_3

    :cond_5
    move-object v3, v1

    .line 127
    :goto_3
    instance-of v2, v3, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v3

    :goto_4
    check-cast v1, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    if-eqz v1, :cond_8

    .line 129
    invoke-static {v9, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    .line 136
    :goto_5
    sget-object v2, Lo/bw;->a:Lo/bw$ActionBar;

    move-object v3, v7

    check-cast v3, Lo/UnicodeScript;

    .line 198
    new-instance v4, Lo/aL$Activity;

    invoke-direct {v4, v3}, Lo/aL$Activity;-><init>(Lo/UnicodeScript;)V

    check-cast v4, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v4}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v4, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2, v3}, Lo/bw$ActionBar;->a(Lio/reactivex/Observable;)Lo/bs;

    move-result-object v2

    .line 137
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v4, Lcom/netflix/cl/model/event/session/action/SetThumbRating;

    invoke-static {v0}, Lo/ShellCallback;->d(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/netflix/cl/model/event/session/action/SetThumbRating;-><init>(Ljava/lang/Long;)V

    check-cast v4, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v3, v4}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v10

    .line 139
    new-instance v3, Lo/SaveInfo;

    .line 140
    invoke-virtual {v1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->titleId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->trackId()I

    move-result v4

    .line 139
    invoke-direct {v3, v1, v0, v4}, Lo/SaveInfo;-><init>(Ljava/lang/String;II)V

    check-cast v3, Lo/DateTransformation;

    .line 138
    invoke-interface {v2, v3}, Lo/bs;->b(Lo/DateTransformation;)Lio/reactivex/Observable;

    move-result-object v11

    .line 145
    new-instance v12, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;

    move-object v0, v12

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;-><init>(Ljava/lang/Long;Lo/aL;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    move-object v14, v12

    check-cast v14, Lo/alA;

    const/4 v13, 0x0

    .line 155
    new-instance v12, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;-><init>(Ljava/lang/Long;Lo/aL;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    check-cast v12, Lo/alA;

    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 144
    invoke-static/range {v11 .. v16}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_6

    .line 164
    :cond_8
    move-object v0, v6

    check-cast v0, Lo/aL;

    .line 165
    invoke-direct {v0, v7, v8}, Lo/aL;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    .line 166
    sget-object v0, Lo/akj;->a:Lo/akj;

    :goto_6
    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    const-string v1, "activity.serviceManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    .line 70
    new-instance v1, Lo/aL$TaskDescription;

    invoke-direct {v1, p0, p1, p2}, Lo/aL$TaskDescription;-><init>(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    check-cast v1, Lo/zU;

    const/4 p1, 0x0

    .line 67
    invoke-interface {v0, p2, p1, v1}, Lo/zG;->b(Ljava/lang/String;ZLo/zU;)Z

    return-void
.end method

.method public static final synthetic c(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lo/aL;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    return-void
.end method

.method private final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Long;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1

    .line 173
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/cl/model/Error;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 175
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gO:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 174
    invoke-static {p2, p3}, Lo/adk;->d(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p2

    .line 177
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 181
    instance-of p2, p1, Lo/OM;

    if-eqz p2, :cond_0

    .line 182
    check-cast p1, Lo/OM;

    invoke-virtual {p1}, Lo/OM;->n()V

    :cond_0
    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 112
    sget-object v0, Lo/OM;->b:Lo/OM$Application;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lo/aL;->c:Ljava/util/Map;

    instance-of v3, v2, Ljava/util/HashMap;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p2, v2}, Lo/OM$Application;->a(Landroid/content/Context;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic b()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/aL;->d()Lcom/netflix/cl/model/event/session/command/ViewProfilesCommand;

    move-result-object v0

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;"
        }
    .end annotation

    const-string p3, "activity"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_1

    .line 53
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 55
    move-object p3, p2

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 56
    invoke-direct {p0, p1, p2}, Lo/aL;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 60
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method public d()Lcom/netflix/cl/model/event/session/command/ViewProfilesCommand;
    .locals 1

    .line 64
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewProfilesCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewProfilesCommand;-><init>()V

    return-object v0
.end method
