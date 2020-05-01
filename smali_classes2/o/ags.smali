.class public final Lo/ags;
.super Lo/agh;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ags$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/ags$Application;


# instance fields
.field private c:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/agu;",
            "Lcom/netflix/model/leafs/SearchSectionSummaryImpl;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private d:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/agu;",
            "Lcom/netflix/model/leafs/SearchSectionSummaryImpl;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private e:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/agu;",
            "Lcom/netflix/model/leafs/SearchSectionSummaryImpl;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ags$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ags$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/ags;->a:Lo/ags$Application;

    return-void
.end method

.method public constructor <init>(Lo/TableLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1}, Lo/agh;-><init>(Lo/TableLayout;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lo/agi;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4df05c1b

    if-eq v0, v1, :cond_1

    const v1, -0x470486bc

    if-eq v0, v1, :cond_0

    const v1, -0x36059a58    # -2051253.0f

    if-ne v0, v1, :cond_2

    const-string v0, "search"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/ags;->c:Lcom/netflix/falkor/BranchMap;

    check-cast p1, Lo/agi;

    goto :goto_0

    :cond_0
    const-string v0, "searchForEntity"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/ags;->e:Lcom/netflix/falkor/BranchMap;

    check-cast p1, Lo/agi;

    goto :goto_0

    :cond_1
    const-string v0, "preQuery"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/ags;->d:Lcom/netflix/falkor/BranchMap;

    check-cast p1, Lo/agi;

    :goto_0
    return-object p1

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4df05c1b

    if-eq v0, v1, :cond_4

    const v1, -0x470486bc

    if-eq v0, v1, :cond_2

    const v1, -0x36059a58    # -2051253.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "search"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-nez p1, :cond_6

    if-eqz p2, :cond_1

    .line 162
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lo/ags;->c:Lcom/netflix/falkor/BranchMap;

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.falkor.BranchMap<com.netflix.falkor.BranchMap<com.netflix.falkor.BranchMap<com.netflix.model.branches.SummarizedList<com.netflix.model.branches.NAPASearchPageItemMap, com.netflix.model.leafs.SearchSectionSummaryImpl>>>>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v0, "searchForEntity"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-nez p1, :cond_6

    if-eqz p2, :cond_3

    .line 166
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lo/ags;->e:Lcom/netflix/falkor/BranchMap;

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.falkor.BranchMap<com.netflix.falkor.BranchMap<com.netflix.falkor.BranchMap<com.netflix.falkor.BranchMap<com.netflix.model.branches.SummarizedList<com.netflix.model.branches.NAPASearchPageItemMap, com.netflix.model.leafs.SearchSectionSummaryImpl>>>>>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v0, "preQuery"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    .line 164
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lo/ags;->d:Lcom/netflix/falkor/BranchMap;

    goto :goto_0

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.falkor.BranchMap<com.netflix.falkor.BranchMap<com.netflix.model.branches.SummarizedList<com.netflix.model.branches.NAPASearchPageItemMap, com.netflix.model.leafs.SearchSectionSummaryImpl>>>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lo/ags;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4df05c1b

    if-eq v0, v1, :cond_2

    const v1, -0x470486bc

    if-eq v0, v1, :cond_1

    const v1, -0x36059a58    # -2051253.0f

    if-ne v0, v1, :cond_3

    const-string v0, "search"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/netflix/falkor/BranchMap;

    .line 131
    sget-object v0, Lo/agB;->f:Lo/SearchRecentSuggestions;

    .line 130
    invoke-direct {p1, v0}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    .line 132
    iput-object p1, p0, Lo/ags;->c:Lcom/netflix/falkor/BranchMap;

    check-cast p1, Lo/agi;

    goto :goto_0

    :cond_1
    const-string v0, "searchForEntity"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/netflix/falkor/BranchMap;

    .line 137
    sget-object v0, Lo/agB;->g:Lo/SearchRecentSuggestions;

    .line 136
    invoke-direct {p1, v0}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    .line 138
    iput-object p1, p0, Lo/ags;->e:Lcom/netflix/falkor/BranchMap;

    check-cast p1, Lo/agi;

    goto :goto_0

    :cond_2
    const-string v0, "preQuery"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/netflix/falkor/BranchMap;

    .line 134
    sget-object v0, Lo/agB;->j:Lo/SearchRecentSuggestions;

    .line 133
    invoke-direct {p1, v0}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    .line 135
    iput-object p1, p0, Lo/ags;->d:Lcom/netflix/falkor/BranchMap;

    check-cast p1, Lo/agi;

    :goto_0
    return-object p1

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4df05c1b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x470486bc

    if-eq v0, v1, :cond_1

    const v1, -0x36059a58    # -2051253.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "search"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast v2, Lcom/netflix/falkor/BranchMap;

    iput-object v2, p0, Lo/ags;->c:Lcom/netflix/falkor/BranchMap;

    goto :goto_0

    :cond_1
    const-string v0, "searchForEntity"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast v2, Lcom/netflix/falkor/BranchMap;

    iput-object v2, p0, Lo/ags;->e:Lcom/netflix/falkor/BranchMap;

    goto :goto_0

    :cond_2
    const-string v0, "preQuery"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast v2, Lcom/netflix/falkor/BranchMap;

    iput-object v2, p0, Lo/ags;->d:Lcom/netflix/falkor/BranchMap;

    :cond_3
    :goto_0
    return-void
.end method
