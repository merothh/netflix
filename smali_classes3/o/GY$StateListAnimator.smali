.class public final Lo/GY$StateListAnimator;
.super Lo/GY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

.field private final d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lo/GY;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/GY$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    iput-object p2, p0, Lo/GY$StateListAnimator;->b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    return-void
.end method


# virtual methods
.method public final b()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/GY$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    return-object v0
.end method

.method public final c()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/GY$StateListAnimator;->b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/GY$StateListAnimator;

    if-eqz v0, :cond_0

    check-cast p1, Lo/GY$StateListAnimator;

    iget-object v0, p0, Lo/GY$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    iget-object v1, p1, Lo/GY$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GY$StateListAnimator;->b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    iget-object p1, p1, Lo/GY$StateListAnimator;->b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo/GY$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/GY$StateListAnimator;->b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemFetched(item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/GY$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/GY$StateListAnimator;->b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
