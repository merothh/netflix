.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;
.super Landroid/widget/BaseAdapter;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:I

.field private final b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field final synthetic c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

.field private final d:Z

.field private e:I

.field private g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;ZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1069
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    .line 1070
    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->d:Z

    .line 1071
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 1072
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1076
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->a:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1081
    sget v0, Lo/Zt$LoaderManager;->m:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->e:I

    goto :goto_0

    .line 1078
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->c()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->e:I

    :goto_0
    return-void
.end method

.method private d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;I)Landroid/view/View;
    .locals 2

    .line 1194
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 1196
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->e:I

    invoke-direct {v0, p2, v1, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;-><init>(Landroid/content/Context;ILcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 1197
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->d(Lcom/netflix/mediaclient/ui/search/SearchResultView;)V

    .line 1199
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->d:Z

    if-eqz p1, :cond_0

    .line 1200
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setIgnoreClicks()V

    :cond_0
    return-object v0
.end method

.method private d()Lo/Bz;
    .locals 3

    .line 1117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1121
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->a:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return-object v1

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object v0

    invoke-interface {v0}, Lo/Bs;->getVideosListTrackable()Lo/Bz;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object v0

    invoke-interface {v0}, Lo/Bs;->getSuggestionsListTrackable()Lo/Bz;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/netflix/mediaclient/ui/search/SearchResultView;)V
    .locals 3

    .line 1207
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->a:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1209
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->e(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 0

    .line 1086
    iput p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->a:I

    return-void
.end method

.method public getCount()I
    .locals 3

    .line 1093
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->a:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object v0

    invoke-interface {v0}, Lo/Bs;->getNumResultsVideoEntities()I

    move-result v1

    goto :goto_0

    .line 1101
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object v0

    invoke-interface {v0}, Lo/Bs;->getNumResultsSuggestions()I

    move-result v1

    .line 1108
    :goto_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Lo/Bs;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1139
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->d()Lo/Bz;

    move-result-object p3

    .line 1142
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/By;

    .line 1144
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    instance-of v0, v2, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v1, v2

    check-cast v1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, p1, v4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/Bs;->getResultsVideos(I)Lo/Bx;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v0, v2, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c(Lo/By;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    move-object v4, v3

    :goto_0
    if-eqz p2, :cond_1

    .line 1152
    instance-of v1, p2, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    if-nez v1, :cond_2

    .line 1153
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;I)Landroid/view/View;

    move-result-object p2

    .line 1157
    :cond_2
    sget-object v0, Lo/hf;->a:Lo/hf$StateListAnimator;

    invoke-virtual {v0}, Lo/hf$StateListAnimator;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    if-eq v0, v1, :cond_3

    .line 1160
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;I)V

    move-object v7, v0

    goto :goto_1

    :cond_3
    move-object v7, v3

    .line 1181
    :goto_1
    move-object v1, p2

    check-cast v1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    .line 1185
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v5

    .line 1186
    invoke-interface {p3}, Lo/Bz;->getReferenceId()Ljava/lang/String;

    move-result-object v6

    move-object v3, v4

    move-object v4, p1

    .line 1181
    invoke-virtual/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e(Lo/By;Lo/Bx;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/SingleObserver;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1219
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->i(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1220
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->i(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1222
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    return-void
.end method
