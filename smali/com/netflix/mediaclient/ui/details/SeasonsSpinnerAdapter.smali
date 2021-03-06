.class public Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeasonsSpinnerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeasonsSpinnerAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private dropDownBackgroundColor:I

.field private dropDownTextColor:I

.field private itemBackgroundResource:I

.field private final seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;"
        }
    .end annotation
.end field

.field private viewCreator:Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->seasons:Ljava/util/List;

    iput v1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->dropDownTextColor:I

    iput v1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->dropDownBackgroundColor:I

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->viewCreator:Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;

    return-void
.end method

.method private logException(I)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SPY-8698, null season found, show id = %s , position = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeasonsSpinnerAdapter"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setIdForTest(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0f0016

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setId(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->seasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->viewCreator:Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;->createItemView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setIdForTest(Landroid/view/ViewGroup;)V

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->dropDownBackgroundColor:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->dropDownBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->dropDownTextColor:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->dropDownTextColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getSeasonLongSeqLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SeasonsSpinnerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position requested ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is outside of count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->seasons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSeasonNumberForPosition(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getSeasonNumber()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->viewCreator:Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;->createItemView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getSeasonNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getSeasonLongSeqLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    instance-of v1, p3, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    if-eqz v1, :cond_1

    const v1, 0x7f0e00ed

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00c3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->logException(I)V

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->itemBackgroundResource:I

    goto :goto_2

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public setDropDownBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->dropDownBackgroundColor:I

    return-void
.end method

.method public setDropDownTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->dropDownTextColor:I

    return-void
.end method

.method public setItemBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->itemBackgroundResource:I

    return-void
.end method

.method public tryGetEpisodeIndexBySeasonNumber(I)I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-ne v0, p1, :cond_0

    const-string/jumbo v1, "SeasonsSpinnerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found season index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getNumOfEpisodes()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public tryGetSeasonIndexBySeasonNumber(I)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getSeasonNumber()I

    move-result v2

    if-ne p1, v2, :cond_0

    const-string/jumbo v1, "SeasonsSpinnerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found season index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public updateSeasonData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->seasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->seasons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->notifyDataSetChanged()V

    return-void
.end method
