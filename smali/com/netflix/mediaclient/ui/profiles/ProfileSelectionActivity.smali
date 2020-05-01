.class public Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "ProfileSelectionActivity.java"


# static fields
.field public static final ALPHA_ANIMATION_DURATION_MS:I = 0x190

.field private static final ALPHA_CONTENT_FADE:F = 0.2f

.field private static final EXTRA_APP_WAS_RESTARTED:Ljava/lang/String; = "app_was_restarted"

.field private static final EXTRA_DESTINATION:Ljava/lang/String; = "extra_destination"

.field private static final EXTRA_KIDS_DOOR_NAME:Ljava/lang/String; = "extra_kids_door_name"

.field private static final EXTRA_START_KIDS_BOOL:Ljava/lang/String; = "extra_start_kids_bool"

.field private static final EXTRA_STOP_KIDS_BOOL:Ljava/lang/String; = "extra_stop_kids_bool"

.field private static final HANG_ON_KIDS_LOADING_SCREEN:Z = false

.field private static final KEY_IS_LOADING:Ljava/lang/String; = "is_loading"

.field private static final KEY_IS_PROFILE_EDIT_MODE:Ljava/lang/String; = "is_profile_edit_mode"

.field private static final KEY_IS_SHOWING_KIDS_LOADING_SCREEN:Ljava/lang/String; = "is_showing_kids_loading_screen"

.field private static final TAG:Ljava/lang/String; = "ProfileSelectionActivity"

.field private static final maxNumGridColumns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

.field private canShowKidsLoadingScreen:Z

.field private columnWidth:I

.field private content:Landroid/view/View;

.field private final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

.field private isLoading:Z

.field private isProfileEditMode:Z

.field private isShowingKidsLoadingScreen:Z

.field private kidsLoadingScreen:Landroid/view/View;

.field private leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private mAppWasRestarted:Z

.field private mDestination:Ljava/lang/String;

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private numCols:I

.field private final onAvatarClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private shouldStartKids:Z

.field private topTextHeader:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->maxNumGridColumns:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 78
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->maxNumGridColumns:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 85
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->maxNumGridColumns:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 628
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$4;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 635
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$5;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->onAvatarClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adjustGridViewMargins()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->setupGridViewColumns()V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Z)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleManagerReady(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->refreshEditProfileModeViews()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    return-object v0
.end method

.method private adjustGridViewMargins()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 336
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    .line 337
    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->columnWidth:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->numCols:I

    mul-int/2addr v1, v2

    .line 338
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 340
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    const-string/jumbo v3, "ProfileSelectionActivity"

    const-string/jumbo v4, "screen: %d, grid: %d, padding: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 346
    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isLocaleLTR(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v2, v6, v6, v6}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setPadding(IIII)V

    .line 352
    :goto_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->showPromoViewIfNeeded(I)V

    .line 353
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v6, v6, v2, v6}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static createStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 132
    return-object v0
.end method

.method public static createStartIntentForAppRestart(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 116
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "app_was_restarted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    return-object v0
.end method

.method public static createStartIntentSingleTop(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 126
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntentForAppRestart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 127
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    return-object v0
.end method

.method public static createSwitchFromDeepLinking(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_destination"

    .line 142
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static createSwitchFromKidsIntent(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 146
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_stop_kids_bool"

    const/4 v2, 0x1

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_kids_door_name"

    .line 148
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method public static createSwitchToKidsIntent(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 152
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_start_kids_bool"

    const/4 v2, 0x1

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_kids_door_name"

    .line 154
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method private findViewAndAnimate(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 535
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    .line 536
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    .line 537
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 539
    return-void

    .line 535
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private handleManagerReady(Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v4

    .line 261
    if-nez v4, :cond_1

    .line 262
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "No profiles found for user!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No profiles found for user!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/Throwable;)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->canShowKidsLoadingScreen:Z

    .line 269
    const-string/jumbo v0, "ProfileSelectionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleManagerReady(), isLoading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    .line 271
    const-string/jumbo v6, "ProfileSelectionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 274
    :cond_2
    iput-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    .line 276
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-direct {v0, p0, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->setupGridViewColumns()V

    .line 280
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->showContentView()V

    .line 282
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    if-eqz v0, :cond_4

    .line 283
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v4, "We\'re in loading state - showing loading view"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->canShowKidsLoadingScreen:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isShowingKidsLoadingScreen:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->showLoadingViews(ZZ)V

    .line 293
    :cond_4
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v4, "shouldAutoSelectProfile: %s, shouldStartKids: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 294
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->shouldStartKids:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    .line 293
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->shouldStartKids:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v9, v3

    move v3, v2

    move-object v2, v9

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    .line 299
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 301
    add-int/lit8 v2, v3, 0x1

    :goto_4
    move v3, v2

    move-object v2, v0

    .line 303
    goto :goto_3

    :cond_5
    move v0, v2

    .line 287
    goto :goto_2

    .line 305
    :cond_6
    if-ne v3, v1, :cond_7

    .line 306
    const-string/jumbo v0, "ProfileSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found one Kids profile - switching to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startChangeProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    goto/16 :goto_0

    .line 310
    :cond_7
    const-string/jumbo v0, "ProfileSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Num Kids profiles found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    move v2, v3

    goto :goto_4
.end method

.method private logKidsEntryExit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_start_kids_bool"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 747
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_stop_kids_bool"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 748
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra_kids_door_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 753
    :cond_1
    return-void
.end method

.method private refreshEditProfileModeViews()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 511
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 513
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 519
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->topTextHeader:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    move v0, v1

    .line 522
    :goto_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 523
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 524
    if-nez v3, :cond_4

    .line 525
    const-string/jumbo v2, "ProfileSelectionActivity"

    const-string/jumbo v3, "Something wierd happened: null grid child view!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 511
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    goto :goto_0

    .line 519
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 526
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 527
    const v2, 0x7f0f031b

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v2, :cond_5

    move v2, v1

    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    const v2, 0x7f0f0096

    invoke-direct {p0, v3, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewAndAnimate(Landroid/view/View;I)V

    goto :goto_3

    .line 527
    :cond_5
    const/16 v2, 0x8

    goto :goto_4

    .line 531
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->invalidateOptionsMenu()V

    .line 532
    return-void
.end method

.method private reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 763
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 764
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 765
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 766
    return-void
.end method

.method private setupGridViewColumns()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    .line 316
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 317
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 318
    sget-object v2, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->maxNumGridColumns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->getCount()I

    move-result v0

    .line 322
    if-le v0, v4, :cond_0

    add-int/lit8 v0, v0, -0x2

    .line 323
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->numCols:I

    .line 325
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    const-string/jumbo v2, "ProfileSelectionActivity"

    const-string/jumbo v3, "max cols: %d, limited cols: %d, num cols: %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->numCols:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->numCols:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setNumColumns(I)V

    .line 330
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adjustGridViewMargins()V

    .line 331
    return-void
.end method

.method private showContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 377
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Showing content view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 391
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 393
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 395
    :cond_1
    return-void

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private showLoadingViews(ZZ)V
    .locals 5

    .prologue
    const v2, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    .line 398
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Showing loading view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setEnabled(Z)V

    .line 403
    if-eqz p1, :cond_1

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 409
    :goto_0
    if-eqz p2, :cond_0

    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 411
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 413
    :cond_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showPromoViewIfNeeded(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 362
    const v0, 0x7f0f031a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 364
    const-string/jumbo v1, "user_profile_was_selected"

    invoke-static {p0, v1, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 366
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 367
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->columnWidth:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 372
    add-int v2, p1, v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0166

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private updateAppWasRestartedFlag(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 779
    if-eqz p1, :cond_0

    .line 780
    const-string/jumbo v0, "app_was_restarted"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mAppWasRestarted:Z

    .line 781
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    const-string/jumbo v0, "ProfileSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got new value for \'app was restorted\' flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mAppWasRestarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    return-void
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    return-object v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 226
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->PROFILE_GATE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 227
    return-void
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 625
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 605
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v1, :cond_0

    .line 606
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    .line 607
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->refreshEditProfileModeViews()V

    .line 608
    const/4 v0, 0x1

    .line 610
    :cond_0
    return v0
.end method

.method protected handleNetworkErrorDialog()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 463
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "relaunch onhandleProfileSelectionResult failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 465
    const-string/jumbo v0, "handleNetwotkErrorDialog()"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 471
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "finish onhandleProfileSelectionResult failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finishAllActivities(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected handleProfileActivated()V
    .locals 5

    .prologue
    .line 424
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 425
    const-string/jumbo v2, "ProfileSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Restarting app, time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleProfileActivated() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 428
    return-void
.end method

.method protected handleProfileReadyToSelect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "handleProfileReadyToSelect()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    .line 419
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleManagerReady(Z)V

    .line 420
    return-void
.end method

.method protected handleProfileSelectionResult(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 433
    invoke-static {p1}, Lcom/netflix/mediaclient/StatusCode;->getStatusCodeByValue(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 434
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 435
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Profile selection was successful.  Parent class should finish this activity in a moment..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 440
    const-string/jumbo v0, "user_profile_was_selected"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 455
    :goto_0
    return-void

    .line 448
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 449
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {v1, p2, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 450
    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setDisplayMessage(Z)V

    .line 452
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-static {p0, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 453
    invoke-direct {p0, v1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    goto :goto_0
.end method

.method protected handleProfilesListUpdated()V
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    .line 666
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const-string/jumbo v0, "ProfileSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleProfilesListUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->notifyDataSetChanged()V

    .line 670
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 671
    return-void
.end method

.method protected hasUpAction()Z
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    if-nez p1, :cond_0

    .line 187
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->PROFILE_GATE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->columnWidth:I

    .line 192
    const v0, 0x7f0300e6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->setContentView(I)V

    .line 193
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v1, 0x7f0f0316

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 195
    const v0, 0x7f0f0317

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    .line 196
    const v0, 0x7f0f0318

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->topTextHeader:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0f0319

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->onAvatarClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 205
    const v0, 0x7f0f0193

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    .line 206
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_destination"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mDestination:Ljava/lang/String;

    .line 208
    if-nez p1, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->logKidsEntryExit()V

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_start_kids_bool"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->shouldStartKids:Z

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->updateAppWasRestartedFlag(Landroid/content/Intent;)V

    .line 221
    return-void

    .line 213
    :cond_1
    const-string/jumbo v0, "is_loading"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    .line 214
    const-string/jumbo v0, "is_profile_edit_mode"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    .line 215
    const-string/jumbo v0, "is_showing_kids_loading_screen"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isShowingKidsLoadingScreen:Z

    .line 216
    const-string/jumbo v0, "ProfileSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recovered state, isLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isShowingKidsLoadingScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isShowingKidsLoadingScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->refreshEditProfileModeViews()V

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 491
    const v0, 0x7f0f000d

    const v1, 0x7f0802a2

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 492
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 493
    const v1, 0x7f02011d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 494
    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$3;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string/jumbo v0, "ProfileSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saving loading state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string/jumbo v0, "is_loading"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string/jumbo v1, "is_showing_kids_loading_screen"

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string/jumbo v0, "is_profile_edit_mode"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performUpAction()V
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_0

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    .line 599
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->refreshEditProfileModeViews()V

    .line 601
    :cond_0
    return-void
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startChangeProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    :cond_0
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Manager is not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 547
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 588
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    const-string/jumbo v0, "ProfileSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selecting profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    .line 557
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->isKidsProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 558
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 563
    :cond_3
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mAppWasRestarted:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mDestination:Ljava/lang/String;

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 564
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 565
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Selected profile is the same as the current one - skipping profile change..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 569
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 571
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finish()V

    goto :goto_0

    .line 575
    :cond_4
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 576
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Network is NOT connected, prevent action and report to user!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    .line 579
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 580
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    goto/16 :goto_0

    .line 584
    :cond_5
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    .line 585
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->canShowKidsLoadingScreen:Z

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->showLoadingViews(ZZ)V

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->selectProfile(Ljava/lang/String;)V

    .line 587
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mAppWasRestarted:Z

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 585
    goto :goto_1
.end method
