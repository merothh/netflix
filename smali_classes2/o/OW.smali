.class public abstract Lo/OW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/OX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OW$Activity;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lo/OW;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/OW;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/api/res/AssetType;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ">;"
        }
    .end annotation

    .line 349
    sget-object p2, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {p2, p0}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p0

    .line 350
    invoke-static {}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b()Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/OW;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final b(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;)Lo/Ot;
    .locals 14

    .line 86
    new-instance p1, Lo/Ot;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uF:I

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/BaseAdapter;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sg:I

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/DropDownListView;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tt:I

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tM:I

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kC:I

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lD:I

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lo/BaseAdapter;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rJ:I

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v13}, Lo/Ot;-><init>(Lo/BaseAdapter;Lo/BaseAdapter;Lo/DropDownListView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Lo/BaseAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public static b(Lo/Ot;I)V
    .locals 2

    .line 171
    invoke-virtual {p0}, Lo/Ot;->c()Lo/BaseAdapter;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 172
    invoke-virtual {p0}, Lo/Ot;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lo/Ot;->a()Lo/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lo/Ot;->a()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lo/Ot;->j()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lo/Ot;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lo/Ot;->f()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p0}, Lo/Ot;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lo/Ot;->o()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lo/Ot;->o()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    :cond_3
    invoke-virtual {p0}, Lo/Ot;->n()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 186
    invoke-virtual {p0}, Lo/Ot;->n()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    :cond_4
    invoke-virtual {p0}, Lo/Ot;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 189
    invoke-virtual {p0}, Lo/Ot;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_5
    invoke-virtual {p0}, Lo/Ot;->k()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 192
    invoke-virtual {p0}, Lo/Ot;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_6
    invoke-virtual {p0}, Lo/Ot;->e()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 195
    invoke-virtual {p0}, Lo/Ot;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    invoke-virtual {p0}, Lo/Ot;->h()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 197
    invoke-virtual {p0}, Lo/Ot;->h()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method private static c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)Ljava/lang/String;
    .locals 2

    .line 326
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/FriendProfile;->imageUrl()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/FriendProfile;->bigImageUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 11

    move-object v6, p1

    .line 275
    invoke-static {}, Lo/aeB;->a()Z

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 277
    new-instance v1, Lo/OnGenericMotionListener$TaskDescription;

    invoke-direct {v1}, Lo/OnGenericMotionListener$TaskDescription;-><init>()V

    move-object/from16 v2, p6

    .line 278
    invoke-virtual {v1, v2}, Lo/OnGenericMotionListener$TaskDescription;->a(Landroid/graphics/Bitmap;)Lo/OnGenericMotionListener$TaskDescription;

    move-result-object v1

    const-string v2, "notification"

    .line 282
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/NotificationManager;

    .line 285
    invoke-static {v7, p1}, Lcom/netflix/mediaclient/util/NotificationUtils;->e(Landroid/app/NotificationManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    new-instance v3, Lo/OnGenericMotionListener$Activity;

    invoke-direct {v3, p1, v2}, Lo/OnGenericMotionListener$Activity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v8, v3

    goto :goto_0

    .line 289
    :cond_0
    new-instance v2, Lo/OnGenericMotionListener$Activity;

    invoke-direct {v2, p1}, Lo/OnGenericMotionListener$Activity;-><init>(Landroid/content/Context;)V

    move-object v8, v2

    .line 292
    :goto_0
    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    invoke-virtual {v8, v2}, Lo/OnGenericMotionListener$Activity;->c(I)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Lo/OnGenericMotionListener$Activity;->c(Landroid/graphics/Bitmap;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    .line 293
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/FriendProfile;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/OnGenericMotionListener$Activity;->a(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/OnGenericMotionListener$Activity;->d(Lo/OnGenericMotionListener$Application;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    .line 294
    invoke-virtual {v2, v0}, Lo/OnGenericMotionListener$Activity;->b(I)Lo/OnGenericMotionListener$Activity;

    const-string v0, "iris_notifications"

    .line 296
    invoke-virtual {v8, v0}, Lo/OnGenericMotionListener$Activity;->b(Ljava/lang/String;)Lo/OnGenericMotionListener$Activity;

    const/4 v0, 0x1

    .line 297
    invoke-virtual {v8, v0}, Lo/OnGenericMotionListener$Activity;->i(Z)Lo/OnGenericMotionListener$Activity;

    .line 298
    invoke-virtual {v8, v0}, Lo/OnGenericMotionListener$Activity;->c(Z)Lo/OnGenericMotionListener$Activity;

    move-object v9, p0

    move-object v10, p2

    .line 301
    invoke-virtual {p0, v8, v1, p2, p1}, Lo/OW;->a(Lo/OnGenericMotionListener$Activity;Lo/OnGenericMotionListener$TaskDescription;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    .line 302
    invoke-virtual/range {v0 .. v5}, Lo/OW;->c(Lo/OnGenericMotionListener$Activity;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/content/Context;)V

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, p4

    .line 306
    invoke-static {v0, p4}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->addMessageDataToIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 307
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "swiped_notification_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 311
    invoke-virtual {v8, v0}, Lo/OnGenericMotionListener$Activity;->a(Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;

    const/16 v0, 0x3e8

    .line 320
    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 321
    invoke-virtual {v8}, Lo/OnGenericMotionListener$Activity;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 322
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/OW;->a:Ljava/lang/String;

    return-void
.end method

.method private synthetic c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Ljava/util/List;)V
    .locals 8

    const/4 v0, 0x0

    .line 246
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    const/4 v1, 0x1

    .line 247
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    .line 254
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 255
    invoke-virtual {p5}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 249
    invoke-direct/range {v1 .. v7}, Lo/OW;->c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    .line 260
    :cond_0
    invoke-virtual {p5}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p5}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 257
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 258
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p2

    invoke-virtual {p2}, Lo/CompatibilityInfo;->close()V

    .line 260
    :cond_2
    invoke-virtual {p5}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 261
    invoke-virtual {p5}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p2

    invoke-virtual {p2}, Lo/CompatibilityInfo;->close()V

    .line 263
    :cond_3
    throw p1
.end method

.method private static synthetic c(Ljava/lang/Throwable;)V
    .locals 2

    .line 265
    sget-object v0, Lo/OW;->e:Ljava/lang/String;

    const-string v1, "error loading notification images"

    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic c(Lo/OW;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/OW;->c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lo/OnGenericMotionListener$Activity;Lo/OnGenericMotionListener$TaskDescription;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Landroid/content/Context;)V
.end method

.method public b(Lo/Ot;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Landroid/content/Context;)V
    .locals 5

    .line 105
    invoke-virtual {p1}, Lo/Ot;->l()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p1}, Lo/Ot;->l()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_1
    invoke-virtual {p1}, Lo/Ot;->a()Lo/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p1}, Lo/Ot;->a()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 112
    invoke-virtual {p1}, Lo/Ot;->a()Lo/BaseAdapter;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/FriendProfile;->bigImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lo/Ot;->a()Lo/BaseAdapter;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/FriendProfile;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    invoke-virtual {p1}, Lo/Ot;->e()Lo/BaseAdapter;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->setVisibility(I)V

    .line 118
    invoke-virtual {p1}, Lo/Ot;->c()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 119
    invoke-virtual {p1}, Lo/Ot;->c()Lo/BaseAdapter;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->imageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lo/Ot;->c()Lo/BaseAdapter;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->header()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p1}, Lo/Ot;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p1}, Lo/Ot;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/FriendProfile;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_3
    invoke-virtual {p1}, Lo/Ot;->h()Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x800003

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    invoke-virtual {p1}, Lo/Ot;->j()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 132
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {p1}, Lo/Ot;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    invoke-virtual {p1}, Lo/Ot;->j()Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "\"%s\""

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 133
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lo/Ot;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lo/Ot;->f()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 142
    invoke-virtual {p1}, Lo/Ot;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-virtual {p1}, Lo/Ot;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->timestamp()J

    move-result-wide v3

    invoke-static {p3, v3, v4}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_7
    invoke-virtual {p1}, Lo/Ot;->g()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 148
    invoke-virtual {p1}, Lo/Ot;->g()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_8
    invoke-virtual {p1}, Lo/Ot;->k()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 151
    invoke-virtual {p1}, Lo/Ot;->k()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_9
    invoke-virtual {p1}, Lo/Ot;->o()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 156
    invoke-virtual {p1}, Lo/Ot;->o()Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    :cond_a
    invoke-virtual {p1}, Lo/Ot;->n()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 159
    invoke-virtual {p1}, Lo/Ot;->n()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method protected c(Lo/OnGenericMotionListener$Activity;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/content/Context;)V
    .locals 1

    .line 365
    sget-object p2, Lo/OW;->e:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SocialNotification::addNotificationActions "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {p4}, Lo/Oq;->e(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)Landroid/content/Intent;

    move-result-object p2

    .line 369
    invoke-static {p2}, Lcom/netflix/mediaclient/util/NotificationUtils;->d(Landroid/content/Intent;)V

    .line 370
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x3

    const/high16 p5, 0x8000000

    invoke-static {p3, p4, p2, p5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 371
    invoke-virtual {p1, p2}, Lo/OnGenericMotionListener$Activity;->e(Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;

    return-void
.end method

.method public e(Lo/Ot;)Landroid/view/View;
    .locals 0

    .line 76
    invoke-virtual {p1}, Lo/Ot;->c()Lo/BaseAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/content/Context;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 223
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v0

    .line 226
    sget-object v1, Lo/OW;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    sget-object p1, Lo/OW;->e:Ljava/lang/String;

    const-string p2, "Notification with such id was already shown - skipping..."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "notification_id_deleted_from_statusbar"

    const-string v2, "-1"

    .line 234
    invoke-static {p4, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object p1, Lo/OW;->e:Ljava/lang/String;

    const-string p2, "Notification with such id was swiped out by user - skipping..."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 241
    :cond_1
    invoke-static {p1}, Lo/OW;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/api/res/AssetType;->b:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-static {p4, v0, v1}, Lo/OW;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Single;

    move-result-object v0

    .line 242
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->imageUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-static {p4, v1, v2}, Lo/OW;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lo/OW$Activity;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/OW$Activity;-><init>(Lo/OW$3;)V

    .line 240
    invoke-static {v0, v1, v2}, Lio/reactivex/Single;->zip(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object v0

    .line 243
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v7, Lo/OT;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lo/OT;-><init>(Lo/OW;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    sget-object p1, Lo/OV;->e:Lo/OV;

    .line 244
    invoke-virtual {v0, v7, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
