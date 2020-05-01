.class public final Lo/SwitchPreference;
.super Lo/VolumePreference;
.source ""

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VolumePreference;",
        "Ljava/util/List<",
        "Lo/RecommendationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 313
    invoke-direct {p0, v0}, Lo/VolumePreference;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lo/RecommendationInfo;)I
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(I)Lo/RecommendationInfo;
    .locals 1

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RecommendationInfo;

    return-object p1
.end method

.method public b(Lo/RecommendationInfo;)I
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(Lo/RecommendationInfo;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 340
    instance-of v0, p1, Lo/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    check-cast p1, Lo/SwitchPreference;

    iget-object p1, p1, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 341
    :cond_0
    instance-of v0, p1, Lo/CustomPrinterIconCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    check-cast p1, Lo/CustomPrinterIconCallback;

    invoke-virtual {p1}, Lo/CustomPrinterIconCallback;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lo/SwitchPreference;->a(I)Lo/RecommendationInfo;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 346
    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/SwitchPreference;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
