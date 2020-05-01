.class Lcom/netflix/partner/PService$2;
.super Lo/ail$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/partner/PService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/partner/PService;


# direct methods
.method constructor <init>(Lcom/netflix/partner/PService;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-direct {p0}, Lo/ail$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->d(Lcom/netflix/partner/PService;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/Surface;Ljava/lang/String;ZLo/aiu;)V
    .locals 0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "nf_partner_pservice"

    const-string p3, "openSession: playableId: %s"

    .line 128
    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public b()Z
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    const-string v1, "nf_partner_pservice"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->E()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "isUserSignedIn: serviceManager not ready - using brute force check"

    .line 74
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-virtual {v0}, Lcom/netflix/partner/PService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/partner/PService;->d(Lcom/netflix/partner/PService;Landroid/content/Context;)Z

    move-result v0

    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 85
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "isUserSignedIn: %s"

    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method

.method public c(Ljava/lang/String;IILo/aiq;)V
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "nf_partner_pservice"

    const-string v2, "getRecommendations: got query: %s, toView: %s, toExpanded: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez p4, :cond_0

    const-string v0, "partner callback null "

    .line 153
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->e(Lcom/netflix/partner/PService;)Lo/aiH;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v1}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/aiH;->a(Ljava/lang/String;Lo/Am;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->b(Lcom/netflix/partner/PService;)Lo/aiB;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->b(Lcom/netflix/partner/PService;)Lo/aiB;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-virtual {v0}, Lcom/netflix/partner/PService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lo/aiB;->d(Landroid/content/Context;Lo/Am;Ljava/lang/String;IILo/aiq;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "nf_partner_pservice"

    const-string v3, "searchInApp: got query: %s"

    .line 91
    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "no connection"

    .line 93
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "searchInApp: serviceManager not ready"

    .line 97
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    new-instance v2, Lcom/netflix/partner/PService$TaskDescription;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/netflix/partner/PService$TaskDescription;-><init>(Lcom/netflix/partner/PService;Ljava/lang/String;ILo/aiq;)V

    invoke-static {v0, v2}, Lcom/netflix/partner/PService;->a(Lcom/netflix/partner/PService;Lcom/netflix/partner/PService$TaskDescription;)Lcom/netflix/partner/PService$TaskDescription;

    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->e(Lcom/netflix/partner/PService;)Lo/aiH;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v1}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/aiH;->a(Ljava/lang/String;Lo/Am;)V

    return-void
.end method

.method public d(Ljava/lang/String;ILo/aiq;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_partner_pservice"

    const-string v2, "search: got query: %s"

    .line 133
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 136
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "search: serviceManager not ready"

    .line 137
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    new-instance v1, Lcom/netflix/partner/PService$TaskDescription;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/netflix/partner/PService$TaskDescription;-><init>(Lcom/netflix/partner/PService;Ljava/lang/String;ILo/aiq;)V

    invoke-static {v0, v1}, Lcom/netflix/partner/PService;->a(Lcom/netflix/partner/PService;Lcom/netflix/partner/PService$TaskDescription;)Lcom/netflix/partner/PService$TaskDescription;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->e(Lcom/netflix/partner/PService;)Lo/aiH;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->e(Lcom/netflix/partner/PService;)Lo/aiH;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-virtual {v0}, Lcom/netflix/partner/PService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lo/aiH;->b(Landroid/content/Context;Lo/Am;Ljava/lang/String;ILo/aiq;)V

    :cond_1
    return-void
.end method

.method public e(ILjava/lang/String;Lo/aiq;)V
    .locals 8

    .line 108
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    const-string v1, "nf_partner_pservice"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v2, "cardEvent: inputJson: %s, %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->a(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PServiceCardEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-static {v0}, Lcom/netflix/partner/PService;->a(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PServiceCardEventHandler;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    invoke-virtual {v0}, Lcom/netflix/partner/PService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    .line 119
    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->E()Z

    move-result v5

    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    .line 120
    invoke-static {v0}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;Lo/Am;)Z

    move-result v6

    move v3, p1

    move-object v4, p2

    move-object v7, p3

    .line 116
    invoke-virtual/range {v1 .. v7}, Lcom/netflix/partner/PServiceCardEventHandler;->e(Landroid/content/Context;ILjava/lang/String;ZZLo/aiq;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "cardEvent: serviceManager not ready"

    .line 109
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/netflix/partner/PService$2;->a:Lcom/netflix/partner/PService;

    new-instance v1, Lcom/netflix/partner/PService$TaskDescription;

    invoke-direct {v1, v0, p2, p1, p3}, Lcom/netflix/partner/PService$TaskDescription;-><init>(Lcom/netflix/partner/PService;Ljava/lang/String;ILo/aiq;)V

    invoke-static {v0, v1}, Lcom/netflix/partner/PService;->d(Lcom/netflix/partner/PService;Lcom/netflix/partner/PService$TaskDescription;)Lcom/netflix/partner/PService$TaskDescription;

    return-void
.end method
