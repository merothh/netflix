.class public final Lo/CustomPrinterIconCallback;
.super Lo/PrintJob;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/PrintJob;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lo/RecommendationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "children"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 519
    invoke-direct {p0, v0}, Lo/PrintJob;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lo/RecommendationInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Lo/RecommendationInfo;)Z
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lo/RecommendationInfo;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RecommendationInfo;

    return-object p1
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 565
    instance-of v0, p1, Lo/CustomPrinterIconCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    check-cast p1, Lo/CustomPrinterIconCallback;

    iget-object p1, p1, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 566
    :cond_0
    instance-of v0, p1, Lo/SeekBarVolumizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    check-cast p1, Lo/SeekBarVolumizer;

    invoke-virtual {p1}, Lo/SeekBarVolumizer;->d()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 571
    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public p_()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/CustomPrinterIconCallback;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
