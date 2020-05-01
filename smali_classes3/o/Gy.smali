.class public Lo/Gy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hR;


# instance fields
.field private a:I

.field private b:Lcom/netflix/mediaclient/StatusCode;

.field private c:I

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Throwable;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Runnable;

.field private j:Lo/hK;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)V
    .locals 9

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p4

    move-object v8, p3

    .line 38
    invoke-direct/range {v0 .. v8}, Lo/Gy;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 29
    iput v0, p0, Lo/Gy;->c:I

    .line 42
    iput-object p1, p0, Lo/Gy;->f:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lo/Gy;->b:Lcom/netflix/mediaclient/StatusCode;

    .line 44
    iput-object p3, p0, Lo/Gy;->e:Ljava/lang/Throwable;

    .line 45
    iput p4, p0, Lo/Gy;->c:I

    .line 46
    iput-object p5, p0, Lo/Gy;->d:Ljava/lang/Runnable;

    .line 47
    iput p6, p0, Lo/Gy;->a:I

    .line 48
    iput-object p7, p0, Lo/Gy;->g:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lo/Gy;->h:Ljava/lang/Runnable;

    .line 50
    invoke-direct {p0}, Lo/Gy;->c()V

    return-void
.end method

.method private c()V
    .locals 10

    .line 70
    iget-object v0, p0, Lo/Gy;->b:Lcom/netflix/mediaclient/StatusCode;

    if-nez v0, :cond_0

    const-string v0, "ErrorAgent"

    const-string v1, "Required to display error dialog without status code!"

    .line 71
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget v0, p0, Lo/Gy;->a:I

    iget-object v1, p0, Lo/Gy;->b:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0, v1}, Lo/Gy;->e(ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v4

    .line 79
    iget-object v0, p0, Lo/Gy;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/Gy;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lo/Gy;->h:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 83
    new-instance v1, Lo/Gy$2;

    invoke-direct {v1, p0}, Lo/Gy$2;-><init>(Lo/Gy;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 92
    new-instance v8, Lo/adM;

    iget-object v2, p0, Lo/Gy;->f:Landroid/content/Context;

    invoke-direct {v8, v2, v0}, Lo/adM;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 93
    new-instance v0, Lo/CalendarViewLegacyDelegate$Activity;

    const/4 v5, 0x0

    iget-object v2, p0, Lo/Gy;->f:Landroid/content/Context;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->fN:I

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, ""

    move-object v2, v0

    move-object v6, v1

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/Gy;->j:Lo/hK;

    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Lo/hK;

    const/4 v5, 0x0

    const-string v3, ""

    move-object v2, v0

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/Gy;->j:Lo/hK;

    :goto_0
    return-void
.end method

.method static synthetic e(Lo/Gy;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Gy;->f:Landroid/content/Context;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 126
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private e(ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lo/Gy;->f:Landroid/content/Context;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gI:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 114
    iget-object v0, p0, Lo/Gy;->f:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_1
    iget-object p2, p0, Lo/Gy;->f:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 119
    iget-object p1, p0, Lo/Gy;->f:Landroid/content/Context;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gI:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/Gy;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method public d()Lo/hK;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/Gy;->j:Lo/hK;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 55
    iget v0, p0, Lo/Gy;->c:I

    return v0
.end method
