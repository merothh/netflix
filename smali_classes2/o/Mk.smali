.class public Lo/Mk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Cm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;ZLcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;Lo/SuggestionsAdapter;Lo/cO;Z)Lo/la;
    .locals 1

    .line 28
    new-instance v0, Lo/MM;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/MM;-><init>(Landroid/content/Context;ZLcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;Lo/SuggestionsAdapter;)V

    .line 29
    new-instance p1, Lo/ML;

    invoke-direct {p1, v0, p5, p6}, Lo/ML;-><init>(Lo/la;Lo/cO;Z)V

    return-object p1
.end method

.method public c(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 47
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hA:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lX:I

    :goto_0
    return p1
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    .line 34
    sget p5, Lcom/netflix/mediaclient/ui/R$AssistContent;->gv:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 37
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const/4 p2, 0x2

    aput-object p4, v0, p2

    .line 34
    invoke-virtual {p1, p5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p6, :cond_0

    .line 40
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p4, p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method
