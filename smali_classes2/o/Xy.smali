.class public abstract Lo/Xy;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/Xt;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Landroid/view/ViewGroup;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Xy;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lo/Xy;->e:Z

    return-void
.end method

.method public a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V
    .locals 9

    const-string v0, "moment"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choiceId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextSegmentId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lo/Xy;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lo/UW$Application;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lo/UW$Application;-><init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/ImpressionData;IZ)V

    .line 112
    invoke-virtual {p0, v0}, Lo/Xy;->e(Ljava/lang/Object;)V

    .line 123
    iput-object p4, p0, Lo/Xy;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V
    .locals 1

    .line 142
    new-instance v0, Lo/UW$PendingIntent;

    invoke-direct {v0, p1}, Lo/UW$PendingIntent;-><init>(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    invoke-virtual {p0, v0}, Lo/Xy;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Z)V
    .locals 9

    if-eqz p2, :cond_1

    .line 83
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->action()Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 84
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->videoId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 86
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "no video Id for next episode"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    new-instance v8, Lo/UW$TaskDescription;

    .line 90
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->trackId()Ljava/lang/Integer;

    move-result-object v4

    .line 93
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->requestId()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->bookmarkPosition()Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "it.bookmarkPosition()"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, v8

    move-object v1, p1

    move v6, p4

    .line 89
    invoke-direct/range {v0 .. v7}, Lo/UW$TaskDescription;-><init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 88
    invoke-virtual {p0, v8}, Lo/Xy;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;)V
    .locals 9

    const-string v0, "choiceId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextSegmentId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lo/Xy;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lo/UW$ActionBar;

    const/4 v8, 0x1

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lo/UW$ActionBar;-><init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;Z)V

    .line 62
    invoke-virtual {p0, v0}, Lo/Xy;->e(Ljava/lang/Object;)V

    .line 73
    iput-object p4, p0, Lo/Xy;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;)V
    .locals 9

    const-string v0, "moment"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choiceId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lo/Xy;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lo/UW$ActionBar;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lo/UW$ActionBar;-><init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {p0, v0}, Lo/Xy;->e(Ljava/lang/Object;)V

    .line 48
    iput-object p4, p0, Lo/Xy;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    .line 133
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/Xy;->b:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lo/Xy;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 138
    sget-object v0, Lo/UU$AssetManager;->d:Lo/UU$AssetManager;

    invoke-virtual {p0, v0}, Lo/Xy;->e(Ljava/lang/Object;)V

    return-void
.end method

.method protected final o()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/Xy;->e:Z

    return v0
.end method
