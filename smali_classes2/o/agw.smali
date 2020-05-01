.class public Lo/agw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Browser;


# instance fields
.field private a:Lo/TableLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/netflix/model/leafs/PostPlayExperienceImpl;

.field private d:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/falkor/BranchMap<",
            "Lo/OneTimeUseBuilder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/TableLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/agw;->a:Lo/TableLayout;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lo/agi;
    .locals 3

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x407f834

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x4dc8fd53    # 4.21505632E8f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "playbackVideos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "experienceData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_3

    .line 37
    iget-object p1, p0, Lo/agw;->d:Lcom/netflix/falkor/BranchMap;

    return-object p1

    .line 39
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_4
    iget-object p1, p0, Lo/agw;->b:Lcom/netflix/model/leafs/PostPlayExperienceImpl;

    return-object p1
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 3

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x407f834

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x4dc8fd53    # 4.21505632E8f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "playbackVideos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "experienceData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Don\'t know how to set key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PostPlayExperienceMap"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 81
    :cond_3
    instance-of p1, p2, Lcom/netflix/falkor/BranchMap;

    if-eqz p1, :cond_4

    check-cast p2, Lcom/netflix/falkor/BranchMap;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iput-object p2, p0, Lo/agw;->d:Lcom/netflix/falkor/BranchMap;

    goto :goto_3

    .line 79
    :cond_5
    check-cast p2, Lcom/netflix/model/leafs/PostPlayExperienceImpl;

    iput-object p2, p0, Lo/agw;->b:Lcom/netflix/model/leafs/PostPlayExperienceImpl;

    :goto_3
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 4

    .line 46
    invoke-virtual {p0, p1}, Lo/agw;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x407f834

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x4dc8fd53    # 4.21505632E8f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "playbackVideos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "experienceData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-ne v0, v3, :cond_4

    .line 53
    new-instance p1, Lcom/netflix/falkor/BranchMap;

    new-instance v0, Lo/agw$1;

    invoke-direct {v0, p0}, Lo/agw$1;-><init>(Lo/agw;)V

    invoke-direct {p1, v0}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lo/agw;->d:Lcom/netflix/falkor/BranchMap;

    return-object p1

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_5
    new-instance p1, Lcom/netflix/model/leafs/PostPlayExperienceImpl;

    iget-object v0, p0, Lo/agw;->a:Lo/TableLayout;

    invoke-direct {p1, v0}, Lcom/netflix/model/leafs/PostPlayExperienceImpl;-><init>(Lo/TableLayout;)V

    iput-object p1, p0, Lo/agw;->b:Lcom/netflix/model/leafs/PostPlayExperienceImpl;

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Lo/agw;->c(Ljava/lang/String;Lo/agi;)V

    return-void
.end method
