.class public Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;
.super Ljava/lang/Object;
.source "ActivityPageOfflineAgentListener.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;


# static fields
.field public static final BANG_ICON:Ljava/lang/String; = "\ud83d\udca5"

.field private static final TAG:Ljava/lang/String; = "ActivityPageOfflineAgentListener"


# instance fields
.field private bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

.field private buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

.field private final content:Landroid/view/ViewGroup;

.field private final launchMyDownloads:Landroid/view/View$OnClickListener;

.field private final showMessages:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$1;-><init>(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->launchMyDownloads:Landroid/view/View$OnClickListener;

    .line 94
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->showMessages:Z

    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->dismissBuffetBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->resetSnackbarSession(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;Lcom/netflix/android/widgetry/buffet/BuffetBar;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    return-object p1
.end method

.method private dismissBuffetBar()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->dismiss()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 141
    :cond_0
    return-void
.end method

.method private getDecoratedText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 209
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\ud83d\udca5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200ee

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    .line 215
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 216
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 217
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    :cond_0
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\ud83d\udca5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 222
    const-string/jumbo v3, "\ud83d\udca5"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v4, 0x11

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 224
    :cond_1
    return-object v0
.end method

.method private handlePlayRightsRenewDone(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 416
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    goto :goto_0

    .line 415
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_1
.end method

.method private resetSnackbarSession(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 204
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->resetSnackBarDownloadCompleteCount(Landroid/content/Context;)V

    .line 205
    return-void
.end method

.method private showSnackbar(Ljava/lang/String;I)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 147
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    if-nez v2, :cond_3

    .line 150
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isMdxPlayerShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const-string/jumbo v0, "ActivityPageOfflineAgentListener"

    const-string/jumbo v2, "No buffetBar while MDX mini player display"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 198
    :goto_0
    return-object v0

    .line 155
    :cond_0
    const v2, 0x7f0f0134

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 156
    instance-of v3, v2, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v3, :cond_2

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 160
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->getDecoratedText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 162
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    if-nez v4, :cond_1

    .line 164
    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->make(Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 168
    invoke-virtual {v2, v3}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setBackgroundColor(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 172
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;-><init>(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setCallback(Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->launchMyDownloads:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    goto :goto_0

    .line 190
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SPY-10658 : No suitable parent found to attach buffetBar, current activity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string/jumbo v2, "ActivityPageOfflineAgentListener"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    .line 198
    goto :goto_0

    .line 195
    :cond_3
    const-string/jumbo v2, "ActivityPageOfflineAgentListener"

    const-string/jumbo v3, "No buffetBar to display as activity is finishing (or in PlayerActivity). Current activity is %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private updateSnackbar()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public isListenerDestroyed()Z
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 406
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->resetSnackBarDownloadCompleteCount(Landroid/content/Context;)V

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    const-string/jumbo v2, "download_btn"

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 353
    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->clearPreQueued()V

    .line 355
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 356
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 357
    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_1

    .line 360
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    goto :goto_0
.end method

.method public onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string/jumbo v0, "ActivityPageOfflineAgentListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateRequestResponse playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 238
    if-eqz v0, :cond_3

    .line 239
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 244
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    .line 246
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isWarning()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 249
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_1

    .line 252
    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    goto :goto_0
.end method

.method public onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->incrementSnackBarDownloadCompleteCount(Landroid/content/Context;)V

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 285
    if-eqz v0, :cond_2

    .line 286
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 291
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    goto :goto_0
.end method

.method public onDownloadResumedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 305
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    goto :goto_0
.end method

.method public onDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 316
    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->showBangIconErrorInUi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 324
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 325
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    goto :goto_0

    .line 319
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, v1, :cond_1

    .line 320
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->PAUSED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 370
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$3;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 385
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(Z)V

    goto :goto_0

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createNoStorageDialog(Landroid/content/Context;Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 379
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createDownloadFailedDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onLicenseRefreshDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 393
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->handlePlayRightsRenewDone(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 394
    return-void
.end method

.method public onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 336
    if-eqz v0, :cond_1

    .line 337
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 339
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    goto :goto_0
.end method

.method public onOfflinePlayableProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 264
    if-eqz v0, :cond_1

    .line 265
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v1, v2, :cond_2

    .line 266
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 273
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    goto :goto_0

    .line 268
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->DOWNLOADING:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    goto :goto_1
.end method

.method public onPlayWindowRenewDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 399
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->handlePlayRightsRenewDone(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 400
    return-void
.end method

.method public refreshDownloadButton(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 423
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->refreshDownloadButton(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0
.end method

.method public updateSnackbar(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 105
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowSnackBar()Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->showMessages:Z

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_0

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->isUserSwiped(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    if-eqz v0, :cond_0

    .line 122
    :cond_2
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v4, v2, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getSnackbarStatus(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Z)Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->text:Ljava/lang/String;

    iget v0, v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->errors:I

    if-lez v0, :cond_4

    const v0, 0x7f0e0064

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->showSnackbar(Ljava/lang/String;I)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "nf-icon.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setActionTypeface(Landroid/graphics/Typeface;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 127
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_5

    const v0, 0x7f080300

    :goto_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->launchMyDownloads:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->show(Z)V

    goto :goto_0

    .line 122
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 124
    :cond_4
    const v0, 0x7f0e0063

    goto :goto_2

    .line 127
    :cond_5
    const v0, 0x7f080301

    goto :goto_3

    .line 131
    :cond_6
    const-string/jumbo v0, "ActivityPageOfflineAgentListener"

    const-string/jumbo v1, "no message, dismiss snack-bar"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->dismissBuffetBar()V

    goto/16 :goto_0
.end method
