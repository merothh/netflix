.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d(Landroid/content/Context;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

.field final synthetic c:I

.field final synthetic d:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Ljava/lang/String;Landroid/content/Context;JI)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->a:Landroid/content/Context;

    iput-wide p4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->d:J

    iput p6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->c:I

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .line 562
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 563
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->b(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Z)Z

    .line 565
    invoke-static {}, Lo/aeB;->a()Z

    .line 567
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->d:J

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->b(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const-string p1, "LolomoRecyclerViewAdapter"

    const-string p2, "Request IDs do not match - skipping prefetch callback"

    .line 568
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 572
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lolomo prefetch status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 575
    instance-of v0, p2, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    if-eqz v0, :cond_1

    .line 576
    check-cast p2, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->m()Z

    move-result v1

    :cond_1
    if-eqz p1, :cond_2

    .line 580
    invoke-interface {p1, v1}, Lo/AH;->setFromCache(Z)V

    .line 582
    :cond_2
    iget p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->c:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    .line 583
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;)V

    .line 585
    :cond_3
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;->a:Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Landroid/content/Context;Lo/AH;)V

    :cond_4
    return-void
.end method
