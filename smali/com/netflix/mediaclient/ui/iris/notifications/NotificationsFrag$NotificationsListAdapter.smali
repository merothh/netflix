.class Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$1;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V

    return-void
.end method

.method private updateAvailableButtons(Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v0

    if-nez v0, :cond_1

    .line 370
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Got null notifications list data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    .line 374
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v5

    .line 379
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->getAddToMyListButton(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 381
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {v5}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getBaseTrackId()I

    move-result v5

    const/4 v6, 0x1

    .line 382
    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v1

    .line 384
    invoke-virtual {v0, v3, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 385
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getInQueueValue()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    .line 389
    :cond_2
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->getPlayMovieButton(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;)Landroid/view/View;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->shouldShowPlayButtonFromNotifications()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    if-eqz v0, :cond_3

    .line 393
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v1, p2, p5}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1100(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    :cond_3
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getImageTarget()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2, p5}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getTextTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p5}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$100(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->computeRowCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/netflix/model/leafs/social/IrisNotificationSummary;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$300(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    .line 305
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->getItem(I)Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 310
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 315
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->getItem(I)Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    move-result-object v2

    .line 316
    if-nez v2, :cond_1

    move-object v0, v5

    .line 317
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsStaticFactory;->getNotificationByType(Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;)Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

    move-result-object v1

    .line 319
    if-nez p2, :cond_7

    .line 320
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getRowLayoutResourceId()I

    move-result v4

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 321
    invoke-static {v4, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->getViewHolder(Landroid/view/View;Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;)Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 324
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$500(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$300(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 327
    const v0, 0x7f0800f8

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->showSingleLineText(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;I)V

    .line 328
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    :cond_0
    :goto_2
    return-object v4

    .line 316
    :cond_1
    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getType()Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$500(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 331
    const v0, 0x7f0800f6

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->showSingleLineText(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;I)V

    .line 332
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$600(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V

    goto :goto_2

    .line 335
    :cond_3
    if-nez v1, :cond_5

    .line 336
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    invoke-static {}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got null notification for type: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getType()Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_4
    const v0, 0x7f080245

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->showSingleLineText(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;I)V

    .line 340
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 341
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->initView(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Landroid/content/Context;)V

    move-object v0, p0

    move v5, p1

    .line 345
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->updateAvailableButtons(Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;Landroid/view/View;I)V

    .line 347
    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v0

    if-nez v0, :cond_6

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$800(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_6
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$900(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1000(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)V

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$902(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z

    goto/16 :goto_2

    :cond_7
    move-object v4, p2

    goto/16 :goto_1
.end method
