.class final Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;
.super Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;
.source "BrowseExperience.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;-><init>(Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;)V

    .line 443
    const-string/jumbo v0, "SEARCH_EXPERIENCE_ENUM"

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->PHONE:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string/jumbo v0, "LOMO_FRAG_OFFSET_LEFT_DIMEN_INT"

    const v1, 0x7f0a01bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string/jumbo v0, "SHOULD_LOAD_KUBRICK_LEAVES_IN_LOLOMO_BOOL"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string/jumbo v0, "SHOULD_LOAD_KUBRICK_LEAVES_IN_DETAILS_BOOL"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v0, "SHOULD_INCLUDE_CHARACTER_LEAVES_BOOL"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string/jumbo v0, "IMAGE_LOADER_CONFIG_ENUM"

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v0, "IMAGE_LOADER_CONFIG_NO_PLACEHOLDER_ENUM"

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string/jumbo v0, "USE_LOLOMO_BOXART"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v0, "USE_KIDS_GENRES_LOMO"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    return-void
.end method
