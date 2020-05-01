.class public final Lo/CC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Cu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ratingDetails"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lo/CD;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryMessage"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lo/CE;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lo/CE;-><init>(Landroid/view/LayoutInflater;)V

    .line 29
    invoke-virtual {v0, p2}, Lo/CE;->d(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v0, p3}, Lo/CE;->a(Ljava/lang/CharSequence;)V

    .line 28
    check-cast v0, Lo/CD;

    return-object v0
.end method

.method public d(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Lo/CD;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAdvisory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lo/CE;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lo/CE;-><init>(Landroid/view/LayoutInflater;)V

    .line 22
    invoke-interface {p2}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "contentAdvisory.message"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/CE;->d(Ljava/lang/CharSequence;)V

    .line 23
    invoke-interface {p2}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getSecondaryMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/CE;->a(Ljava/lang/CharSequence;)V

    .line 21
    check-cast v0, Lo/CD;

    return-object v0
.end method
