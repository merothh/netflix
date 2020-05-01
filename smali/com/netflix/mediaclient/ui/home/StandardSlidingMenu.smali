.class public Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation


# static fields
.field private static final HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field private static final TAG:Ljava/lang/String; = "StandardSlidingMenu"


# instance fields
.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

.field private final appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

.field private final canLoadNotifications:Z

.field private contentLayout:Landroid/widget/LinearLayout;

.field private final drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

.field private final genresErrorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private final genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field protected final genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

.field private final homeGenreRow:Landroid/view/View;

.field protected homeText:Landroid/widget/TextView;

.field private mBlockedByUmaAlert:Z

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field protected final notificationsDivider:Landroid/view/View;

.field private notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

.field protected final notificationsHeader:Landroid/view/View;

.field private notificationsStub:Landroid/view/ViewStub;

.field private final onAppRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final onGenreRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final onHomeClickListener:Landroid/view/View$OnClickListener;

.field private final onSwitchProfileClickListener:Landroid/view/View$OnClickListener;

.field private final profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field protected final profileName:Landroid/widget/TextView;

.field private final profilesGroup:Landroid/view/View;

.field private selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field protected final switchProfilesIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$DummyGenreList;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$DummyGenreList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;Z)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$1;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresErrorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$7;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onHomeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$8;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onSwitchProfileClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onGenreRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$15;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onAppRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->canLoadNotifications:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030104

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0361

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v2, 0x7f0f036b

    invoke-virtual {p2, v2}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresErrorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v0, 0x7f0f0366

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    const v0, 0x7f0f0362

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    const v2, 0x7f0f025a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f080244

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->canLoadNotifications:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v2, "Inflating notifications into layout"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f0365

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0f01c4

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$3;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->setNotificationsListStatusListener(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "StandardSlidingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notifications frag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->areNotificationsPresent()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setNotificationsVisible(Z)V

    :goto_0
    const v0, 0x7f0f035c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onSwitchProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    const v1, 0x7f0f035d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->switchProfilesIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    const v1, 0x7f0f035f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    const v1, 0x7f0f035e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0f036c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->createHomeRow()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v4}, Lcom/netflix/mediaclient/android/widget/StaticListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setSelectedGenre(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0f036e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setAppActions()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateBlockingState()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setAppActions()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->removeGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setNotificationsVisible(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->showGenreLoadingView()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->showGenreErrorView()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateGenres(Ljava/util/List;)V

    return-void
.end method

.method private applyGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V
    .locals 3

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->selectionIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static createActions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Service manager is null, no app section"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Service manager not ready, no app section"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Current profile is null, no app section"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showSettingsInMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$10;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    new-instance v4, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v5, 0x7f08020b

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showAccountInMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    new-instance v4, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v5, 0x7f08020a

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showAboutInMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$12;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    new-instance v4, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v5, 0x7f0800ff

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showContactUsInSlidingMenu()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v2, 0x7f08012a

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showSignOutInMenu()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$14;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v2, 0x7f080204

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "StandardSlidingMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "App section should exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "StandardSlidingMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Show Contact Us In SlidingMenu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showContactUsInSlidingMenu()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "StandardSlidingMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VOIP is null: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "StandardSlidingMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VOIP is enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    move v1, v2

    goto :goto_3
.end method

.method private createHomeRow()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f025a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeText:Landroid/widget/TextView;

    const v2, 0x7f080189

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0201de

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeText:Landroid/widget/TextView;

    const v3, 0x7f0f025b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method private createOfflineRowIfNeeded()V
    .locals 7

    const v6, 0x7f0e007a

    const v4, 0x7f0a0167

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showOfflineInMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0367

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0f036f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0369

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    const v0, 0x7f0f025a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f080166

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v1, 0x7f0f0368

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v4, 0x7f0200ab

    invoke-static {v2, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    move-object v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0201de

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private fetchGenresDataIfReady()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Fetching genres list..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$FetchGenresCallback;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$FetchGenresCallback;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchGenreLists(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private managerNotReady()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Manager is not ready - can\'t update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V
    .locals 3

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToNormal(Landroid/widget/TextView;)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->selectionIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setAppActions()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->createActions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onAppRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNotificationsVisible(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "notificationsStub is null - can\'t set visibility"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Showing notifications header"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Hiding notifications header"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showGenreErrorView()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    return-void
.end method

.method private showGenreLoadingView()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    return-void
.end method

.method private updateBlockingState()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViewGroupVisibility()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private updateGenres(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onGenreRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private updateProfileInfo()V
    .locals 7

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Profile is null - can\'t update profile info"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileName:Landroid/widget/TextView;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->forceLayoutDirectionIfNeeded(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    goto :goto_0
.end method

.method private updateProfileViewGroupVisibility()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Manager not ready - can\'t update profile view visibility yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->shouldShowChangeProfilesItem()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateProfileViews()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViewGroupVisibility()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileInfo()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateSwitchProfileButton()V

    return-void
.end method


# virtual methods
.method public canLoadNotifications()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->canLoadNotifications:Z

    return v0
.end method

.method public closeDrawers()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method public closeDrawersWithDelay()V
    .locals 4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v3, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$5;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$5;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public markNotificationsAsRead()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->markNotificationsAsRead()V

    return-void
.end method

.method public onActivityPause(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onActivityResume(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViews()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->createOfflineRowIfNeeded()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setAppActions()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViews()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateBlockingState()V

    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-void
.end method

.method public refresh()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->showGenreLoadingView()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->refresh()V

    :cond_0
    return-void
.end method

.method public reportNotificationsImpression(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->reportNotificationsImpression(Z)V

    :cond_0
    return-void
.end method

.method public setSelectedGenre(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Selected genre is null so selecting home lolomo"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-ne p1, v0, :cond_5

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-ne p1, v0, :cond_4

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Setting selected genre to home lolomo"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "StandardSlidingMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting selected genre: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V

    goto :goto_1
.end method

.method protected shouldShowChangeProfilesItem()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "No profiles found for user!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->applyGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->removeGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    goto :goto_0
.end method

.method protected updateSwitchProfileButton()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->refreshProfileSwitchingStatus()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isProfileSwitchingDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->switchProfilesIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const v0, 0x108001f

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    const v0, 0x7f0200e0

    goto :goto_3
.end method
