.class public abstract enum Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
.super Ljava/lang/Enum;
.source "BrowseExperience.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/experience/IExperience;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/experience/BrowseExperience;",
        ">;",
        "Lcom/netflix/mediaclient/ui/experience/IExperience;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field protected static final IMAGE_LOADER_CONFIG_ENUM:Ljava/lang/String; = "IMAGE_LOADER_CONFIG_ENUM"

.field protected static final IMAGE_LOADER_CONFIG_NO_PLACEHOLDER_ENUM:Ljava/lang/String; = "IMAGE_LOADER_CONFIG_NO_PLACEHOLDER_ENUM"

.field public static final enum KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum KUBRICK_AB_TEST_HERO_IMAGES:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum KUBRICK_AB_TEST_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum KUBRICK_PRODUCTIZED:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field protected static final LOMO_FRAG_OFFSET_LEFT_DIMEN_INT:Ljava/lang/String; = "LOMO_FRAG_OFFSET_LEFT_DIMEN_INT"

.field protected static final SEARCH_EXPERIENCE_ENUM:Ljava/lang/String; = "SEARCH_EXPERIENCE_ENUM"

.field protected static final SHOULD_INCLUDE_CHARACTER_LEAVES_BOOL:Ljava/lang/String; = "SHOULD_INCLUDE_CHARACTER_LEAVES_BOOL"

.field protected static final SHOULD_LOAD_KUBRICK_LEAVES_IN_DETAILS_BOOL:Ljava/lang/String; = "SHOULD_LOAD_KUBRICK_LEAVES_IN_DETAILS_BOOL"

.field protected static final SHOULD_LOAD_KUBRICK_LEAVES_IN_LOLOMO_BOOL:Ljava/lang/String; = "SHOULD_LOAD_KUBRICK_LEAVES_IN_LOLOMO_BOOL"

.field protected static final SHOULD_SHOW_LARGE_PEAK_FOR_KIDS_TOP_TEN:Ljava/lang/String; = "SHOULD_SHOW_LARGE_PEAK_FOR_KIDS_TOP_TEN"

.field public static final enum STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field private static final TAG:Ljava/lang/String; = "BrowseExperience"

.field public static final enum TEST_LOLOMO_TITLE_ART_6725_CELL_2:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum TEST_LOLOMO_TITLE_ART_6725_CELL_3:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum TEST_LOLOMO_TITLE_ART_6725_CELL_4:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum TEST_LOLOMO_TITLE_ART_6725_CELL_5:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field protected static final USE_KIDS_GENRES_LOMO:Ljava/lang/String; = "USE_KIDS_GENRES_LOMO"

.field protected static final USE_LOLOMO_BOXART:Ljava/lang/String; = "USE_LOLOMO_BOXART"

.field private static final USE_PRODUCTION_KUBRICK:Z

.field private static currCoppola1TestCell:I

.field private static currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;


# instance fields
.field private final data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;

    const-string/jumbo v1, "STANDARD"

    new-instance v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;-><init>()V

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 222
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$4;

    const-string/jumbo v1, "DISPLAY_PAGE_REFRESH"

    new-instance v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$3;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$3;-><init>()V

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$4;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 277
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;

    const-string/jumbo v1, "KUBRICK_PRODUCTIZED"

    new-instance v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$5;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$5;-><init>()V

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_PRODUCTIZED:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 335
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$8;

    const-string/jumbo v1, "KIDS_TABLET_STANDARD"

    new-instance v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$7;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$7;-><init>()V

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$8;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 392
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$10;

    const-string/jumbo v1, "KUBRICK_AB_TEST_HERO_IMAGES"

    new-instance v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;-><init>()V

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$10;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_AB_TEST_HERO_IMAGES:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 441
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$12;

    const-string/jumbo v1, "KUBRICK_AB_TEST_HIGH_DENSITY"

    const/4 v2, 0x5

    new-instance v3, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$12;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_AB_TEST_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 492
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$14;

    const-string/jumbo v1, "TEST_LOLOMO_TITLE_ART_6725_CELL_2"

    const/4 v2, 0x6

    new-instance v3, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$13;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$13;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$14;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_2:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 549
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$16;

    const-string/jumbo v1, "TEST_LOLOMO_TITLE_ART_6725_CELL_3"

    const/4 v2, 0x7

    new-instance v3, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$15;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$15;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$16;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_3:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 606
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$18;

    const-string/jumbo v1, "TEST_LOLOMO_TITLE_ART_6725_CELL_4"

    const/16 v2, 0x8

    new-instance v3, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$17;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$17;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$18;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_4:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 663
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$20;

    const-string/jumbo v1, "TEST_LOLOMO_TITLE_ART_6725_CELL_5"

    const/16 v2, 0x9

    new-instance v3, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$19;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$19;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$20;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_5:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 76
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_PRODUCTIZED:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_AB_TEST_HERO_IMAGES:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_AB_TEST_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_2:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_3:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_4:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_5:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 740
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 752
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    .line 753
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    return-void
.end method

.method public static get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .prologue
    .line 812
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object v0
.end method

.method public static getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;
    .locals 2

    .prologue
    .line 863
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "IMAGE_LOADER_CONFIG_ENUM"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    return-object v0
.end method

.method public static getImageLoaderConfigNoPlaceholder()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;
    .locals 2

    .prologue
    .line 867
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "IMAGE_LOADER_CONFIG_NO_PLACEHOLDER_ENUM"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    return-object v0
.end method

.method public static getLomoFragOffsetLeftDimenId()I
    .locals 2

    .prologue
    .line 859
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "LOMO_FRAG_OFFSET_LEFT_DIMEN_INT"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 2

    .prologue
    .line 855
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SEARCH_EXPERIENCE_ENUM"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object v0
.end method

.method public static isDisplayPageRefresh()Z
    .locals 2

    .prologue
    .line 825
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKubrick()Z
    .locals 2

    .prologue
    .line 816
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_PRODUCTIZED:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_AB_TEST_HERO_IMAGES:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_AB_TEST_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 761
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->get(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    move-result-object v3

    .line 762
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 764
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 794
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    const-string/jumbo v3, "BrowseExperience"

    const-string/jumbo v4, "Experience updated to: %s, profile name: %s, is kids profile: %s, USE_PRODUCTION_KUBRICK: %s"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v0, v5, v2

    if-nez p1, :cond_5

    const-string/jumbo v0, "null profile"

    .line 797
    :goto_2
    aput-object v0, v5, v1

    const/4 v1, 0x2

    if-nez p1, :cond_6

    const-string/jumbo v0, "null profile"

    .line 798
    :goto_3
    aput-object v0, v5, v1

    const/4 v0, 0x3

    .line 799
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    .line 795
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    const-string/jumbo v0, "BrowseExperience"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting Crittercism username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->setUsername(Ljava/lang/String;)V

    .line 807
    return-void

    :cond_2
    move v0, v2

    .line 762
    goto :goto_0

    .line 767
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$21;->$SwitchMap$com$netflix$mediaclient$ui$experience$PersistentExperience:[I

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 789
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    :goto_4
    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto :goto_1

    .line 769
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_AB_TEST_HERO_IMAGES:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto :goto_1

    .line 772
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KUBRICK_AB_TEST_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto/16 :goto_1

    .line 775
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_2:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto/16 :goto_1

    .line 778
    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_5:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto/16 :goto_1

    .line 781
    :pswitch_4
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_3:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto/16 :goto_1

    .line 784
    :pswitch_5
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->TEST_LOLOMO_TITLE_ART_6725_CELL_4:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto/16 :goto_1

    .line 789
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto :goto_4

    .line 797
    :cond_5
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 798
    :cond_6
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static shouldForcePortraitInMemento(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 879
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inAnyMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 879
    :goto_0
    return v0

    .line 880
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldLoadExtraCharacterLeaves()Z
    .locals 2

    .prologue
    .line 844
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SHOULD_INCLUDE_CHARACTER_LEAVES_BOOL"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static shouldLoadKubrickLeavesInDetails()Z
    .locals 2

    .prologue
    .line 836
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SHOULD_LOAD_KUBRICK_LEAVES_IN_DETAILS_BOOL"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static shouldLoadKubrickLeavesInLolomo()Z
    .locals 2

    .prologue
    .line 840
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SHOULD_LOAD_KUBRICK_LEAVES_IN_LOLOMO_BOOL"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static shouldShowLargePeakForKidsTopTen()Z
    .locals 2

    .prologue
    .line 848
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SHOULD_SHOW_LARGE_PEAK_FOR_KIDS_TOP_TEN"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SHOULD_SHOW_LARGE_PEAK_FOR_KIDS_TOP_TEN"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 851
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowMemento(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 884
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 885
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 884
    :goto_0
    return v0

    .line 885
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showKidsExperience()Z
    .locals 2

    .prologue
    .line 829
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useKidsGenresLoMo()Z
    .locals 2

    .prologue
    .line 875
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "USE_KIDS_GENRES_LOMO"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static useLolomoBoxArt()Z
    .locals 2

    .prologue
    .line 871
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "USE_LOLOMO_BOXART"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object v0
.end method
