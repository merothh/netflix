.class public Lcom/netflix/falkor/BranchMap;
.super Ljava/util/HashMap;
.source ""

# interfaces
.implements Lo/Browser;
.implements Lo/OpenableColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/agi;",
        ">",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "TT;>;",
        "Lo/Browser;",
        "Lo/OpenableColumns;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agi;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/ContactsContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/SearchRecentSuggestions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SearchRecentSuggestions<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/SearchRecentSuggestions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SearchRecentSuggestions<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/falkor/BranchMap;->e:Lo/SearchRecentSuggestions;

    return-void
.end method


# virtual methods
.method public ar_()Lo/ContactsContract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->c:Lo/ContactsContract;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lo/agi;
    .locals 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/BranchMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agi;

    if-nez v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/netflix/falkor/BranchMap;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 30
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/agi;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 1

    .line 37
    instance-of v0, p2, Ljava/lang/Exception;

    if-nez v0, :cond_1

    instance-of v0, p2, Lo/SettingsSlicesContract;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p2, p0, Lcom/netflix/falkor/BranchMap;->b:Ljava/util/Map;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 54
    iget-object p2, p0, Lcom/netflix/falkor/BranchMap;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->b:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/BranchMap;->b:Ljava/util/Map;

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/BranchMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 46
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 1

    .line 90
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/BranchMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agi;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->e:Lo/SearchRecentSuggestions;

    invoke-interface {v0}, Lo/SearchRecentSuggestions;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agi;

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/netflix/falkor/BranchMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public d(Lo/ContactsContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/netflix/falkor/BranchMap;->c:Lo/ContactsContract;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
