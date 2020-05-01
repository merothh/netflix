.class public Lo/UC;
.super Lo/Uz;
.source ""


# direct methods
.method constructor <init>(Lo/hK;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lo/Uz;-><init>(Lo/hK;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lo/UC;
    .locals 3

    const-string v0, "nf_play_error"

    const-string v1, "Blacklisted device, offline not supported"

    .line 24
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mr:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance v0, Lo/hK;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 29
    new-instance p0, Lo/UC;

    invoke-direct {p0, v0}, Lo/UC;-><init>(Lo/hK;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Runnable;
    .locals 1

    .line 16
    invoke-super {p0}, Lo/Uz;->a()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lo/hK;
    .locals 1

    .line 16
    invoke-super {p0}, Lo/Uz;->d()Lo/hK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()I
    .locals 1

    .line 16
    invoke-super {p0}, Lo/Uz;->e()I

    move-result v0

    return v0
.end method
