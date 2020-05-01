.class public final Lo/GY$PendingIntent;
.super Lo/GY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntent"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lo/GY;-><init>(Lo/amc;)V

    iput p1, p0, Lo/GY$PendingIntent;->e:I

    iput-object p2, p0, Lo/GY$PendingIntent;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/GY$PendingIntent;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-void
.end method


# virtual methods
.method public final c()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/GY$PendingIntent;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 87
    iget v0, p0, Lo/GY$PendingIntent;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/GY$PendingIntent;

    if-eqz v0, :cond_0

    check-cast p1, Lo/GY$PendingIntent;

    iget v0, p0, Lo/GY$PendingIntent;->e:I

    iget v1, p1, Lo/GY$PendingIntent;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/GY$PendingIntent;->d:Ljava/lang/String;

    iget-object v1, p1, Lo/GY$PendingIntent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GY$PendingIntent;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object p1, p1, Lo/GY$PendingIntent;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

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

    iget v0, p0, Lo/GY$PendingIntent;->e:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/GY$PendingIntent;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/GY$PendingIntent;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play(itemPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/GY$PendingIntent;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/GY$PendingIntent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/GY$PendingIntent;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
