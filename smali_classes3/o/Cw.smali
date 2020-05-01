.class public final Lo/Cw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Cu;


# instance fields
.field private final a:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->BRAZIL:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    iput-object v0, p0, Lo/Cw;->a:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string p3, "context"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "ratingDetails"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p2}, Lcom/netflix/model/leafs/advisory/RatingDetails;->getRatingValue()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Locale.US"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x61f

    if-eq v0, v1, :cond_6

    const/16 v1, 0x621

    if-eq v0, v1, :cond_5

    const/16 v1, 0x623

    if-eq v0, v1, :cond_4

    const/16 v1, 0x625

    if-eq v0, v1, :cond_3

    const/16 v1, 0x627

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "18"

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lo/Ct$ActionBar;->b:I

    goto :goto_2

    :cond_3
    const-string v0, "16"

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lo/Ct$ActionBar;->a:I

    goto :goto_2

    :cond_4
    const-string v0, "14"

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lo/Ct$ActionBar;->d:I

    goto :goto_2

    :cond_5
    const-string v0, "12"

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lo/Ct$ActionBar;->e:I

    goto :goto_2

    :cond_6
    const-string v0, "10"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lo/Ct$ActionBar;->c:I

    goto :goto_2

    :cond_7
    const-string v0, "L"

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lo/Ct$ActionBar;->j:I

    goto :goto_2

    :cond_8
    :goto_1
    const/4 p2, -0x1

    :goto_2
    if-lez p2, :cond_9

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_9
    return-object p3
.end method

.method public d(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Lo/CD;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAdvisory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v3, p2

    check-cast v3, Lcom/netflix/model/leafs/advisory/RatingDetails;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lo/Cu$TaskDescription;->b(Lo/Cu;Landroid/content/Context;Lcom/netflix/model/leafs/advisory/RatingDetails;ZILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Lo/CB;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v2, "LayoutInflater.from(context)"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {v1, p1}, Lo/CB;-><init>(Landroid/view/LayoutInflater;)V

    .line 38
    invoke-interface {p2}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getSecondaryMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/CB;->c(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Lo/CB;->e(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    check-cast v1, Lo/CD;

    return-object v1
.end method
