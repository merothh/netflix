.class public Lo/kZ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/zS;

.field private b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

.field private c:Z

.field private d:I

.field private e:Lo/cz;


# direct methods
.method public constructor <init>(Lo/zS;Lo/cz;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lo/kZ;->d:I

    .line 26
    iput-boolean v0, p0, Lo/kZ;->c:Z

    .line 29
    iput-object p1, p0, Lo/kZ;->a:Lo/zS;

    .line 30
    iput-object p2, p0, Lo/kZ;->e:Lo/cz;

    return-void
.end method

.method private a(Lo/mb;[Ljava/lang/String;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    invoke-virtual {p1}, Lo/mb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->b(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->g()V

    .line 98
    invoke-virtual {p1}, Lo/mb;->a()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->h()V

    .line 102
    invoke-direct {p0}, Lo/kZ;->c()V

    :cond_0
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lo/kZ;->c:Z

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->e(Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;)V

    .line 89
    iget-object p1, p0, Lo/kZ;->a:Lo/zS;

    iget-object v0, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    invoke-interface {p1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 107
    iget-object v0, p0, Lo/kZ;->a:Lo/zS;

    iget-object v1, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    invoke-interface {v0, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lo/kZ;->c:Z

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/kZ;->e:Lo/cz;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lo/cz;->af()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v0

    invoke-static {v0}, Lo/kP;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;)V
    .locals 7

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;->c:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;

    invoke-direct {p0, v0}, Lo/kZ;->b(Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;)V

    .line 36
    new-instance v0, Lo/kY;

    invoke-direct {p0}, Lo/kZ;->d()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lo/kZ;->d:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lo/kZ;->d:I

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lo/kY;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;)V

    iput-object v0, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lo/kZ;->c:Z

    return-void
.end method

.method public b(Lo/mb;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/kZ;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Lo/kZ$1;->e:[I

    iget-object v1, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->f()Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->f()Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "MdxIntentLogger"

    const-string v1, "stateChanged - unknown intent type - type: %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lo/lb;->c:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lo/kZ;->a(Lo/mb;[Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    sget-object v0, Lo/kY;->c:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lo/kZ;->a(Lo/mb;[Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;)V
    .locals 4

    .line 41
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;->a:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;

    invoke-direct {p0, v0}, Lo/kZ;->b(Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;)V

    .line 43
    new-instance v0, Lo/lb;

    invoke-direct {p0}, Lo/kZ;->d()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lo/kZ;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/kZ;->d:I

    invoke-direct {v0, v1, v2, p1, p2}, Lo/lb;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;)V

    iput-object v0, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    .line 44
    sget-object p2, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->g:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->g()V

    .line 46
    iget-object p1, p0, Lo/kZ;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->h()V

    .line 47
    invoke-direct {p0}, Lo/kZ;->c()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lo/kZ;->c:Z

    :goto_0
    return-void
.end method
