.class public Lo/Tx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Cn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 25
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->d:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 15
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mZ:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ql:I

    :goto_0
    return p1
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 20
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kc:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 30
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->c:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
