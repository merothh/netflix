.class public abstract Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "OfflineBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field protected static final FOOTER_ROW:I = 0x1

.field protected static final STANDARD_ROW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OfflineBaseAdapter"


# instance fields
.field protected final mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

.field protected final mRowClickListener:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;

.field protected mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mRowClickListener:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->refreshActivityOptionsMenu()V

    return-void
.end method

.method private refreshActivityOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected applyColorScheme(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;)V
    .locals 3

    const v2, 0x7f0e007a

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    :goto_1
    iget-object v2, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->info:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->showIndicator:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->showIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0e00fc

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f0e00c4

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_1
.end method

.method public abstract containsPlayableId(ILjava/lang/String;)Z
.end method

.method public deleteSelected()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->deleteSelected()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->getItemsCheckedCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "OfflineBaseAdapter"

    const-string/jumbo v1, "All the titles on this screen were removed - finishing the activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    :cond_0
    return-void
.end method

.method public generateDeleteDlgString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->generateDeleteDlgString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemsCheckedCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->getItemsCheckedCount()I

    move-result v0

    return v0
.end method

.method public abstract getPlayableId(I)Ljava/lang/String;
.end method

.method public getSelectedItemsDiskSpace()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->access$100(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getSpaceString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSpaceString(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
.end method

.method public isSelectionMode()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bb

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bc

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSelectionMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->setSelectable(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected setToolbarCancelIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->replaceUpButtonWithCancelIcon(Z)V

    const v0, 0x7f0e0061

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->replaceUpButtonWithCancelIcon(Z)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e00fc

    :goto_1
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0e0019

    goto :goto_1
.end method

.method protected setToolbarSmalltitle(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setSubtitleColor(I)V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setSubtitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setToolbarTitle(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setSubtitle(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitleColor(I)V

    :cond_0
    return-void
.end method

.method protected setupRowForSelection(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;ILjava/lang/String;Z)V
    .locals 6

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_5

    iget-object v5, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setScaleX(F)V

    iget-object v5, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setScaleY(F)V

    iget-object v5, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->progress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setScaleX(F)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->progress:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v5, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScaleY(F)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->checkmark:Landroid/support/v7/widget/AppCompatCheckBox;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_4
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->checkmark:Landroid/support/v7/widget/AppCompatCheckBox;

    if-eqz p4, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_5
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_8

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->showIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_6
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    :cond_0
    :goto_7
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setScaleX(F)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setScaleY(F)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_4

    :cond_6
    move v0, v4

    goto :goto_5

    :cond_7
    move v3, v4

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    :cond_9
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_8
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_7

    :cond_a
    move v3, v4

    goto :goto_8
.end method

.method public toggleChecked(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mSelectionController:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->toggleChecked(ILjava/lang/String;)V

    return-void
.end method

.method protected updateDownloadStatusString(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    if-nez p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadStatus:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getColoredStatusString(Landroid/content/Context;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public updatePlayableList()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
