.class public final Lo/Cy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Cu;


# instance fields
.field private final c:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->BBFC:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    iput-object v0, p0, Lo/Cy;->c:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

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

    const/16 v1, 0x55

    if-eq v0, v1, :cond_6

    const/16 v1, 0x621

    if-eq v0, v1, :cond_5

    const/16 v1, 0x624

    if-eq v0, v1, :cond_4

    const/16 v1, 0x627

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9f7

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "PG"

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget p2, Lo/Ct$ActionBar;->i:I

    goto :goto_2

    :cond_3
    const-string v0, "18"

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget p2, Lo/Ct$ActionBar;->f:I

    goto :goto_2

    :cond_4
    const-string v0, "15"

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget p2, Lo/Ct$ActionBar;->g:I

    goto :goto_2

    :cond_5
    const-string v0, "12"

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget p2, Lo/Ct$ActionBar;->h:I

    goto :goto_2

    :cond_6
    const-string v0, "U"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget p2, Lo/Ct$ActionBar;->k:I

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p2, -0x1

    :goto_2
    if-lez p2, :cond_8

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_8
    return-object p3
.end method

.method public d(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Lo/CD;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAdvisory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
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

    .line 34
    new-instance v1, Lo/CA;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v2, "LayoutInflater.from(context)"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lo/CA;-><init>(Landroid/view/LayoutInflater;)V

    .line 35
    invoke-interface {p2}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getSecondaryMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lo/CA;->c(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v1, v0}, Lo/CA;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    check-cast v1, Lo/CD;

    return-object v1
.end method
