.class public Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "RatingDialogFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$OnNetflixRatingBarChangeListener;
.implements Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$MdxMiniPlayerDialog;


# static fields
.field private static final PARAM_AUTO_DISMISS:Ljava/lang/String; = "autoDismiss"

.field private static final PARAM_LAYOUT_ID:Ljava/lang/String; = "layoutId"

.field private static final PARAM_PARENT_X:Ljava/lang/String; = "parentX"

.field private static final PARAM_PARENT_Y:Ljava/lang/String; = "parentY"

.field private static final PARAM_VIDEO_ID:Ljava/lang/String; = "videoId"

.field private static final PARAM_VIDEO_TITLE:Ljava/lang/String; = "videoTitle"

.field private static final PARAM_VIDEO_TYPE:Ljava/lang/String; = "videoType"

.field private static final TAG:Ljava/lang/String; = "RatingDialogFrag"


# instance fields
.field private mAutoDismiss:Z

.field private mLayoutId:I

.field private mParentXLoc:I

.field private mParentYLoc:I

.field private mProvider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

.field private mRatingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

.field private mRatingGroup:Landroid/view/ViewGroup;

.field private mTitle:Landroid/widget/TextView;

.field private mVideoId:Ljava/lang/String;

.field private mVideoTitle:Ljava/lang/String;

.field private mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method private alignViewsToAnchor()V
    .locals 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mRatingGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 197
    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 198
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 200
    iget v2, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mParentXLoc:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 201
    iget v2, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mParentYLoc:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 205
    :cond_0
    return-void
.end method

.method private completeInitIfPossible()V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v0, "RatingDialogFrag"

    const-string/jumbo v1, "Can\'t complete init - service manager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mRatingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    if-nez v1, :cond_1

    .line 181
    const-string/jumbo v0, "RatingDialogFrag"

    const-string/jumbo v1, "Can\'t complete init - rating bar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_1
    const-string/jumbo v1, "RatingDialogFrag"

    const-string/jumbo v2, "Updating ratings bar with ratable"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 187
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    .line 186
    invoke-interface {v0, v1}, Lcom/netflix/falkor/ModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    .line 188
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mRatingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mProvider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->update(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Landroid/view/View;IZ)Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Playable ID can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq p1, v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "VideoType must be a show or a movie to set rating!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;-><init>()V

    .line 79
    invoke-virtual {v0, v5, v4}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->setStyle(II)V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->setArguments(Landroid/os/Bundle;)V

    .line 83
    const-string/jumbo v2, "videoId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v2, "videoType"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 85
    const-string/jumbo v2, "videoTitle"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v2, "layoutId"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string/jumbo v2, "autoDismiss"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    if-eqz p3, :cond_2

    .line 90
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 91
    invoke-virtual {p3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 92
    const-string/jumbo v3, "parentX"

    aget v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string/jumbo v3, "parentY"

    aget v2, v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    :cond_2
    return-object v0
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 107
    const-string/jumbo v0, "videoId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoId:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "videoType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 109
    const-string/jumbo v0, "videoTitle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoTitle:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "autoDismiss"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mAutoDismiss:Z

    .line 112
    const-string/jumbo v0, "layoutId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mLayoutId:I

    .line 113
    const-string/jumbo v0, "parentX"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mParentXLoc:I

    .line 114
    const-string/jumbo v0, "parentY"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mParentYLoc:I

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag$1;-><init>(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mProvider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    .line 143
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "RatingDialogFrag"

    const-string/jumbo v1, "onCreate - mVideoId: %s, mVideoType: %s, mVideoTitle: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoTitle:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string/jumbo v0, "RatingDialogFrag"

    const-string/jumbo v1, "onCreate - mLayoutId: %d, mParentXLoc: %d, mParentYLoc: %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mLayoutId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mParentXLoc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mParentYLoc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mLayoutId:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 152
    const v0, 0x7f0f0321

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mRatingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    .line 153
    const v0, 0x7f0f0320

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mTitle:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0f0322

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mRatingGroup:Landroid/view/ViewGroup;

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mRatingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setOnNetflixRatingBarChangeListener(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$OnNetflixRatingBarChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0801ce

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mVideoTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->alignViewsToAnchor()V

    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->completeInitIfPossible()V

    .line 164
    return-object v1
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 170
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->completeInitIfPossible()V

    .line 171
    return-void
.end method

.method public onRatingChanged(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;FZ)V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string/jumbo v0, "RatingDialogFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User changed rating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new rating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", auto dismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mAutoDismiss:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    if-nez p3, :cond_2

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->mAutoDismiss:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->dismissAllowingStateLoss()V

    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
