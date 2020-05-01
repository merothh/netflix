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

    .prologue
    .line 78
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$DummyGenreList;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$DummyGenreList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    .line 109
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$1;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 519
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresErrorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 527
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$7;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onHomeClickListener:Landroid/view/View$OnClickListener;

    .line 537
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$8;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onSwitchProfileClickListener:Landroid/view/View$OnClickListener;

    .line 544
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onGenreRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 824
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$15;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onAppRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 133
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 134
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 135
    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->canLoadNotifications:Z

    .line 137
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030104

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 138
    const v0, 0x7f0f0361

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v2, 0x7f0f036b

    .line 141
    invoke-virtual {p2, v2}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresErrorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 144
    const v0, 0x7f0f0366

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    .line 145
    const v0, 0x7f0f0362

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    const v2, 0x7f0f025a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    const v2, 0x7f080244

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->canLoadNotifications:Z

    if-eqz v0, :cond_2

    .line 154
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v2, "Inflating notifications into layout"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const v0, 0x7f0f0365

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 159
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0f01c4

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$3;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->setNotificationsListStatusListener(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;)V

    .line 166
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
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

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->areNotificationsPresent()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setNotificationsVisible(Z)V

    .line 175
    :goto_0
    const v0, 0x7f0f035c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onSwitchProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    const v1, 0x7f0f035d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->switchProfilesIcon:Landroid/widget/ImageView;

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    const v1, 0x7f0f035f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileName:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    const v1, 0x7f0f035e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0f036c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setFocusable(Z)V

    .line 186
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->createHomeRow()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v4}, Lcom/netflix/mediaclient/android/widget/StaticListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 189
    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setSelectedGenre(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0f036e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setFocusable(Z)V

    .line 194
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setAppActions()V

    .line 195
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 197
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateBlockingState()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setAppActions()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->removeGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setNotificationsVisible(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->showGenreLoadingView()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->showGenreErrorView()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateGenres(Ljava/util/List;)V

    return-void
.end method

.method private applyGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    .line 487
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->selectionIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
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

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 706
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 709
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 710
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Service manager is null, no app section"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 821
    :goto_0
    return-object v0

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Service manager not ready, no app section"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 716
    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-nez v0, :cond_2

    .line 720
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Current profile is null, no app section"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 721
    goto :goto_0

    .line 724
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showSettingsInMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$10;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 731
    new-instance v4, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v5, 0x7f08020b

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showAccountInMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 735
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 769
    new-instance v4, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v5, 0x7f08020a

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showAboutInMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$12;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 779
    new-instance v4, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v5, 0x7f0800ff

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
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

    .line 784
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 797
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v2, 0x7f08012a

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showSignOutInMenu()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 808
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$14;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 814
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v2, 0x7f080204

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 818
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

    .line 821
    goto/16 :goto_0

    .line 799
    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 800
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

    .line 801
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

    .line 802
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

    .line 801
    goto :goto_2

    :cond_b
    move v1, v2

    .line 802
    goto :goto_3
.end method

.method private createHomeRow()Landroid/view/View;
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 250
    const v0, 0x7f0f025a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeText:Landroid/widget/TextView;

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeText:Landroid/widget/TextView;

    const v2, 0x7f080189

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    const v0, 0x7f0201de

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeText:Landroid/widget/TextView;

    const v3, 0x7f0f025b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    return-object v1
.end method

.method private createOfflineRowIfNeeded()V
    .locals 7

    .prologue
    const v6, 0x7f0e007a

    const v4, 0x7f0a0167

    const/4 v5, 0x0

    .line 259
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

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0367

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 261
    const v0, 0x7f0f036f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    const v1, 0x7f0f0369

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    :cond_0
    const v0, 0x7f0f025a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 271
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f080166

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    :cond_1
    const v1, 0x7f0f0368

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 278
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v4, 0x7f0200ab

    invoke-static {v2, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 279
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 282
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 283
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    invoke-static {v2, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    move-object v0, v2

    .line 286
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    const v0, 0x7f0201de

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 289
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_3
    return-void
.end method

.method private fetchGenresDataIfReady()V
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Fetching genres list..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
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

    .prologue
    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Manager is not ready - can\'t update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V
    .locals 3

    .prologue
    .line 492
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToNormal(Landroid/widget/TextView;)V

    .line 493
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->selectionIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    return-void
.end method

.method private setAppActions()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->createActions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/List;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 239
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onAppRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setVisibility(I)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNotificationsVisible(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 216
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "notificationsStub is null - can\'t set visibility"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    if-eqz p1, :cond_1

    .line 220
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Showing notifications header"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Hiding notifications header"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showGenreErrorView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 413
    return-void
.end method

.method private showGenreLoadingView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 416
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 418
    return-void
.end method

.method private updateBlockingState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    .line 206
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

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setVisibility(I)V

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViewGroupVisibility()V

    .line 212
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 206
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

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 476
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 480
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onGenreRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 483
    return-void
.end method

.method private updateProfileInfo()V
    .locals 7

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v4

    .line 452
    if-nez v4, :cond_1

    .line 453
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Profile is null - can\'t update profile info"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileName:Landroid/widget/TextView;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->forceLayoutDirectionIfNeeded(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 459
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v6, 0x1

    .line 458
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    goto :goto_0
.end method

.method private updateProfileViewGroupVisibility()V
    .locals 2

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Manager not ready - can\'t update profile view visibility yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 433
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

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViewGroupVisibility()V

    .line 422
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileInfo()V

    .line 423
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateSwitchProfileButton()V

    .line 424
    return-void
.end method


# virtual methods
.method public canLoadNotifications()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->canLoadNotifications:Z

    return v0
.end method

.method public closeDrawers()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 517
    return-void
.end method

.method public closeDrawersWithDelay()V
    .locals 4

    .prologue
    .line 507
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v3, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$5;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$5;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 513
    return-void

    .line 507
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public markNotificationsAsRead()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->markNotificationsAsRead()V

    .line 383
    return-void
.end method

.method public onActivityPause(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 335
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    return-void
.end method

.method public onActivityResume(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViews()V

    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 331
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 303
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->createOfflineRowIfNeeded()V

    .line 310
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setAppActions()V

    .line 311
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    .line 312
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViews()V

    .line 313
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateBlockingState()V

    .line 314
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 321
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 322
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->showGenreLoadingView()V

    .line 341
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->refresh()V

    .line 346
    :cond_0
    return-void
.end method

.method public reportNotificationsImpression(Z)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->reportNotificationsImpression(Z)V

    .line 391
    :cond_0
    return-void
.end method

.method public setSelectedGenre(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V
    .locals 3

    .prologue
    .line 350
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    if-nez p1, :cond_3

    .line 352
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Selected genre is null so selecting home lolomo"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-ne p1, v0, :cond_5

    .line 361
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V

    .line 368
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->notifyDataSetChanged()V

    .line 371
    :cond_2
    return-void

    .line 353
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-ne p1, v0, :cond_4

    .line 354
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Setting selected genre to home lolomo"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
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

    .line 364
    :cond_5
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 365
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

    .prologue
    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    .line 438
    if-nez v0, :cond_0

    .line 439
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "No profiles found for user!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V
    .locals 0

    .prologue
    .line 498
    if-eqz p2, :cond_0

    .line 499
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->applyGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->removeGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    goto :goto_0
.end method

.method protected updateSwitchProfileButton()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 463
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->refreshProfileSwitchingStatus()V

    .line 468
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

    .line 469
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 470
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->switchProfilesIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const v0, 0x108001f

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 468
    goto :goto_1

    :cond_3
    move v2, v1

    .line 469
    goto :goto_2

    .line 470
    :cond_4
    const v0, 0x7f0200e0

    goto :goto_3
.end method
