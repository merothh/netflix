.class public Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;
.super Ljava/lang/Object;
.source "KubrickLolomoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KubrickLolomoUtils"

.field private static final duplicateRowTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->TOP_TEN:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->SOCIAL_FRIEND:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->SOCIAL_GROUP:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->SOCIAL_POPULAR:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->duplicateRowTypes:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDuplicateRows(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">(",
            "Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter",
            "<*>;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getCount()I

    move-result v0

    if-ge v0, p2, :cond_2

    const-string/jumbo v0, "KubrickLolomoUtils"

    const-string/jumbo v1, "Manipulating lomo data to inject Kubrick duplicate rows"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-lez p2, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->shouldDuplicateLomo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KubrickLolomoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding duplicate lomo for row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoHeroDuplicate;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoHeroDuplicate;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoDuplicate;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoDuplicate;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v1

    :cond_2
    return-object p1
.end method

.method public static createHolder(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;
    .locals 7

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;

    const v1, 0x7f0f01c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method public static isDuplicateRow(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Z
    .locals 1

    instance-of v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoDuplicate;

    return v0
.end method

.method public static shouldDuplicateLomo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->duplicateRowTypes:Ljava/util/EnumSet;

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shouldFetchByLomoType(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v2, v3, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "For Kubrick Kids POPULAR_TITLES row, doing fetchVideos via lomo type"

    invoke-static {p0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v3, v4, :cond_3

    :goto_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "For Kubrick INSTANT_QUEUE row, doing fetchVideos via lomo type"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;I)V
    .locals 5

    const/16 v0, 0x8

    const/4 v2, 0x0

    if-nez p2, :cond_2

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KubrickLolomoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRowViews, spacerVisibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getVisibilityAsString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->access$000(Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->contentGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->contentGroup:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingTop(Landroid/view/View;I)V

    return-void

    :cond_2
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoHeroDuplicate;

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoDuplicate;

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
