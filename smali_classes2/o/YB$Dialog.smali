.class public final Lo/YB$Dialog;
.super Lo/YB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dialog"
.end annotation


# instance fields
.field private final c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

.field private final d:I


# direct methods
.method public constructor <init>(ILcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lo/YB;-><init>(Lo/amc;)V

    iput p1, p0, Lo/YB$Dialog;->d:I

    iput-object p2, p0, Lo/YB$Dialog;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    return-void
.end method


# virtual methods
.method public final e()Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/YB$Dialog;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/YB$Dialog;

    if-eqz v0, :cond_0

    check-cast p1, Lo/YB$Dialog;

    iget v0, p0, Lo/YB$Dialog;->d:I

    iget v1, p1, Lo/YB$Dialog;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/YB$Dialog;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    iget-object p1, p1, Lo/YB$Dialog;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

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
    .locals 2

    iget v0, p0, Lo/YB$Dialog;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/YB$Dialog;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackErrorOccurred(itemPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/YB$Dialog;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/YB$Dialog;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
