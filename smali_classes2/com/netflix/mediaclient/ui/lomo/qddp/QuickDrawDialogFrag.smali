.class public final Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;
.super Lo/LF;
.source ""

# interfaces
.implements Lo/TU;


# instance fields
.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/View;

.field private d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private f:Ljava/util/HashMap;

.field public playerLiteController:Lo/LN;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/LF;-><init>()V

    return-void
.end method

.method private final a(Lo/agg;)V
    .locals 20

    .line 308
    new-instance v7, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    .line 309
    invoke-interface/range {p1 .. p1}, Lo/agg;->br()Lo/Ay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/Ay;->isInteractiveContent()Z

    move-result v0

    move/from16 v18, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v18, 0x0

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1fdf

    const/16 v17, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v19, v7

    move/from16 v7, v18

    .line 308
    invoke-direct/range {v0 .. v17}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 313
    move-object/from16 v1, p1

    check-cast v1, Lo/AK;

    .line 314
    invoke-interface/range {p1 .. p1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-object/from16 v4, v19

    .line 311
    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object p0
.end method

.method private final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V
    .locals 2

    .line 294
    check-cast p2, Lo/AR;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v1, "QuickDrawClickListener"

    invoke-static {p1, p2, v0, v1}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->dismiss()V

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V

    return-void
.end method

.method private final c(Lo/agg;)V
    .locals 2

    .line 299
    sget-object v0, Lo/LL;->d:Lo/LL;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v0, v1}, Lo/LL;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->playerLiteController:Lo/LN;

    const-string v1, "playerLiteController"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lo/LN;->a(Lo/agg;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->playerLiteController:Lo/LN;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {v0, p1, v1}, Lo/LN;->e(Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    goto :goto_0

    .line 303
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->a(Lo/agg;)V

    :goto_0
    return-void
.end method

.method private final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V
    .locals 5

    .line 112
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    .line 114
    new-instance v1, Lo/Oc;

    .line 116
    new-instance v2, Lo/Oh;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->pM:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/ListView;

    const-string v4, "quick_draw_add_to_queue"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/CompoundButton;

    invoke-direct {v2, v3}, Lo/Oh;-><init>(Landroid/widget/CompoundButton;)V

    check-cast v2, Lo/Od;

    .line 117
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 118
    sget-object v3, Lcom/netflix/cl/model/AppView;->movieDetailsOverlay:Lcom/netflix/cl/model/AppView;

    .line 114
    invoke-direct {v1, p1, v2, v0, v3}, Lo/Oc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Od;Lio/reactivex/Observable;Lcom/netflix/cl/model/AppView;)V

    .line 122
    invoke-interface {p2}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "video.id"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-interface {p2}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    const-string v2, "video.type"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 125
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    .line 121
    :cond_0
    invoke-virtual {v1, p1, v0, v2, v4}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 128
    invoke-interface {p2}, Lo/agg;->au()Z

    move-result p1

    invoke-virtual {v1, p1}, Lo/Oc;->d(Z)V

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c(Lo/agg;)V

    return-void
.end method

.method private final d(Lo/HorizontalScrollView;)V
    .locals 4

    .line 202
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 337
    invoke-static {v0}, Lo/FilterWriter;->y(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {p1}, Lo/HorizontalScrollView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/high16 v0, -0x40000000    # -2.0f

    .line 346
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 347
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Lookup.get<Context>().resources"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 339
    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 343
    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 349
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$SharedElementCallback;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$SharedElementCallback;-><init>(Lo/HorizontalScrollView;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V
    .locals 6

    .line 211
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$FragmentManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$FragmentManager;-><init>()V

    check-cast v0, Lo/WebChromeClient$Application;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->e(Lo/WebChromeClient$Application;)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "rootView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 219
    :cond_0
    invoke-interface {p2}, Lo/agg;->isAvailableForDownload()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-interface {p2}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    .line 221
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pU:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;

    invoke-direct {v2, p0, p2, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Application;

    invoke-direct {v2, p0, p2, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Application;-><init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    const-string v2, "quick_draw_play_now"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 238
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->aU:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "box_art_play_icon"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->aR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    const-string v3, "box_art"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lo/GridView;->setImportantForAccessibility(I)V

    .line 240
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->aR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/amj;->c:Lo/amj;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(R.string.accesibility_play_video)"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p2}, Lo/agg;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    array-length v2, v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 241
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->aR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$PendingIntent;

    invoke-direct {v2, p0, p2, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pX:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$PictureInPictureParams;->e:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$PictureInPictureParams;

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 246
    :cond_2
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pX:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Fragment;

    invoke-direct {v2, p0, p2, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Fragment;-><init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :goto_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Dialog;

    invoke-direct {v2, p0, p2, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Dialog;-><init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pT:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$LoaderManager;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$LoaderManager;-><init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final e(Lo/agg;)V
    .locals 7

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "rootView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 133
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->aR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    .line 134
    new-instance v2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 135
    invoke-interface {p1}, Lo/agg;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    const/4 v3, 0x1

    .line 136
    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->h(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    .line 137
    sget-object v4, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v2, v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 139
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->aR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    const-string v2, "box_art"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/agg;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qa:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    const-string v2, "quick_draw_title"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/agg;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 141
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pW:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    const-string v2, "quick_draw_synopsis"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/agg;->ar()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 143
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;)V

    .line 151
    const-class v2, Lo/l;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/l;

    check-cast v1, Lcom/netflix/model/leafs/advisory/RatingDetails;

    invoke-interface {v2, v1, v3}, Lo/l;->d(Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "quick_draw_aux_info"

    const/4 v4, 0x0

    const-string v5, "quick_draw_rating_icon"

    if-eqz v1, :cond_1

    .line 154
    sget v6, Lcom/netflix/mediaclient/ui/R$Fragment;->pZ:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/GridView;

    invoke-static {v6, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lo/GridView;->setVisibility(I)V

    .line 155
    sget v6, Lcom/netflix/mediaclient/ui/R$Fragment;->pZ:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/GridView;

    invoke-virtual {v6, v1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/agg;->F()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pN:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/agg;->D()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lo/GridView;->setVisibility(I)V

    .line 160
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pN:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/amj;->c:Lo/amj;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 161
    invoke-interface {p1}, Lo/agg;->D()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface {p1}, Lo/agg;->F()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 160
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%s    %s    "

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    const-string v2, "quick_draw_season_num_or_run_time"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v2, v5, :cond_2

    invoke-interface {p1}, Lo/agg;->aq()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    .line 169
    :cond_2
    invoke-interface {p1}, Lo/agg;->an()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 168
    :goto_1
    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-interface {p1}, Lo/agg;->isAvailableForDownload()Z

    move-result v1

    const-string v2, "quick_draw_download_button"

    if-eqz v1, :cond_4

    .line 172
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pU:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 173
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pU:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 174
    invoke-interface {p1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v3, :cond_3

    .line 176
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->pU:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->fg:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ImageSwitcher;

    const-string v1, "quick_draw_download_button.download_button_message"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->li:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 178
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_5

    .line 179
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->pU:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 180
    new-instance v3, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$TaskDescription;

    invoke-direct {v3, v0, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$TaskDescription;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;)V

    check-cast v3, Lo/As;

    .line 179
    invoke-virtual {v2, v3, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_2

    .line 188
    :cond_4
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->pU:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 191
    :cond_5
    :goto_2
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->pV:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/HorizontalScrollView;

    const-string v1, "quick_draw_play_now"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d(Lo/HorizontalScrollView;)V

    .line 192
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->pS:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/HorizontalScrollView;

    const-string v0, "quick_draw_more_info"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d(Lo/HorizontalScrollView;)V

    return-void
.end method

.method private final f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->o:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const-string v2, "detailsPageOverlay"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v1, -0x230

    const-string v2, "QuickDraw"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    :goto_0
    return-object v0
.end method

.method private final g()Z
    .locals 1

    .line 333
    sget-object v0, Lo/fk;->a:Lo/fk$TaskDescription;

    invoke-virtual {v0}, Lo/fk$TaskDescription;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/dP;->e:Lo/dP$StateListAnimator;

    invoke-virtual {v0}, Lo/dP$StateListAnimator;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->f:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final d(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c:Landroid/view/View;

    const-string v1, "rootView"

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->aR:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    const-string v2, "rootView.box_art"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/GridView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pT:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    const-string v1, "rootView.quick_draw_back_button"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/GridLayout;->setVisibility(I)V

    .line 323
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aU:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "box_art_play_icon"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public e()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->playerLiteController:Lo/LN;

    if-nez v0, :cond_0

    const-string v1, "playerLiteController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/LN;->e()V

    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 2

    const-string v0, "video"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 93
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 102
    move-object p3, p0

    check-cast p3, Lo/WebChromeClient;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showFullScreenDialog(Lo/WebChromeClient;)Z

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V

    .line 104
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->e(Lo/agg;)V

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V

    .line 106
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->playerLiteController:Lo/LN;

    const-string p3, "playerLiteController"

    if-nez p1, :cond_1

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Lo/LN;->a(Lo/agg;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->playerLiteController:Lo/LN;

    if-nez p1, :cond_2

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2}, Lo/LN;->e(Lo/agg;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 2

    const-string v0, "playable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerExtras"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->playerLiteController:Lo/LN;

    if-nez v0, :cond_0

    const-string v1, "playerLiteController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/LN;->e(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public m()Z
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->playerLiteController:Lo/LN;

    if-nez v0, :cond_0

    const-string v1, "playerLiteController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/LN;->b()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Lo/LF;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->playerLiteController:Lo/LN;

    if-nez v0, :cond_0

    const-string v1, "playerLiteController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lo/LN;->c(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->dismiss()V

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->fw:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c:Landroid/view/View;

    .line 78
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c:Landroid/view/View;

    const-string p2, "rootView"

    if-nez p1, :cond_1

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->pR:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "rootView.findViewById(R.\u2026ick_draw_base_view_group)"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b:Landroid/view/ViewGroup;

    .line 79
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    const-string p3, "baseViewGroup"

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    new-instance p3, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Activity;

    invoke-direct {p3, p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$Activity;-><init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->c:Landroid/view/View;

    if-nez p1, :cond_3

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    return-object p1

    .line 77
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    .line 276
    invoke-super {p0}, Lo/LF;->onDestroy()V

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->playerLiteController:Lo/LN;

    if-nez v0, :cond_0

    const-string v1, "playerLiteController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/LN;->d()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/LF;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->a()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 267
    invoke-super {p0}, Lo/LF;->onPause()V

    .line 268
    sget-object v0, Lo/LL;->d:Lo/LL;

    invoke-virtual {v0}, Lo/LL;->a()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 262
    invoke-super {p0}, Lo/LF;->onResume()V

    .line 263
    sget-object v0, Lo/LL;->d:Lo/LL;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v0, v1}, Lo/LL;->c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method
