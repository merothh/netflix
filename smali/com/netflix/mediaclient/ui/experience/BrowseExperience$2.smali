.class final enum Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;
.super Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
.source "BrowseExperience.java"


# instance fields
.field private final VALID_DETAIL_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;)V

    .line 205
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;->VALID_DETAIL_TYPES:Ljava/util/Set;

    return-void
.end method

.method private isFlagEnabled(II)Z
    .locals 1

    .prologue
    .line 150
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createLolomoAdapter(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;ZLjava/lang/String;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;
    .locals 1

    .prologue
    .line 94
    if-eqz p2, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;

    invoke-direct {v0, p1, p3}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    goto :goto_0
.end method

.method public createRowAdapterProvider(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)V

    return-object v0
.end method

.method public createSlidingMenuAdapter(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;Z)V

    return-object v0
.end method

.method public getDetailsClassTypeForVideo(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/netflix/mediaclient/ui/details/DetailsActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;->VALID_DETAIL_TYPES:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    if-eqz v0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;

    .line 213
    :goto_0
    return-object v0

    .line 211
    :cond_0
    const-class v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLomoRowTitleVisibility(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)I
    .locals 2

    .prologue
    .line 99
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-eq v0, v1, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getPrefetchLolomoImageUrlList(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 197
    :cond_1
    :goto_0
    return-object v0

    .line 158
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    const/4 v1, 0x0

    .line 161
    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$21;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 193
    const-class v2, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;->getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :pswitch_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/CWTestUtil;->getCWViewClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;->getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :pswitch_1
    const-class v2, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;->getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :pswitch_2
    const-class v2, Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsCharacterView;

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;->getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :pswitch_3
    instance-of v1, p2, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    if-eqz v1, :cond_1

    .line 175
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v2

    if-nez v2, :cond_4

    .line 178
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const-string/jumbo v1, "BrowseExperience"

    const-string/jumbo v2, "getPrefetchLolomoImageUrlList: Billboard summary is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardLogo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 107
    const/4 v0, 0x0

    .line 108
    const-class v1, Lcom/netflix/mediaclient/ui/lomo/CwView;

    if-eq p3, v1, :cond_0

    const-class v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;

    if-ne p3, v1, :cond_2

    .line 109
    :cond_0
    instance-of v1, p2, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    if-eqz v1, :cond_1

    .line 110
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->createModifiedStillUrl()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_1
    :goto_0
    return-object v0

    .line 112
    :cond_2
    const-class v1, Lcom/netflix/mediaclient/ui/lomo/CwTestView;

    if-eq p3, v1, :cond_3

    const-class v1, Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsCharacterView;

    if-ne p3, v1, :cond_4

    .line 113
    :cond_3
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_4
    const-class v1, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;

    if-ne p3, v1, :cond_5

    .line 115
    instance-of v1, p2, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 116
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getCleanBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_5
    const-class v1, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    if-ne p3, v1, :cond_6

    .line 122
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_6
    const-class v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;

    if-ne p3, v1, :cond_8

    .line 124
    instance-of v1, p2, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    if-eqz v1, :cond_1

    .line 125
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    .line 126
    invoke-direct {p0, p4, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;->isFlagEnabled(II)Z

    move-result v0

    .line 127
    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->createModifiedBigStillUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->createModifiedStillUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_8
    const-class v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    if-ne p3, v1, :cond_a

    .line 130
    invoke-direct {p0, p4, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;->isFlagEnabled(II)Z

    move-result v0

    .line 131
    if-eqz v0, :cond_9

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getHorzDispSmallUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_a
    const-class v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    if-ne p3, v1, :cond_b

    .line 133
    instance-of v1, p2, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    if-eqz v1, :cond_1

    .line 134
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getKubrickStoryImgUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_b
    const-class v1, Lcom/netflix/mediaclient/android/widget/VideoView;

    if-ne p3, v1, :cond_1

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;->isFlagEnabled(II)Z

    move-result v0

    .line 138
    if-eqz v0, :cond_c

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_c
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
