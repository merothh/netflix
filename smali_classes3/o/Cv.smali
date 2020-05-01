.class public final Lo/Cv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Cu;


# instance fields
.field private final c:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->KMRB:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    iput-object v0, p0, Lo/Cv;->c:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x170068

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_7

    :pswitch_0
    const-string v0, "1036"

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :pswitch_1
    const-string v0, "1035"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :pswitch_2
    const-string v0, "1034"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :pswitch_3
    const-string v0, "1033"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    sget p2, Lo/Ct$ActionBar;->n:I

    goto/16 :goto_8

    :pswitch_4
    const-string v0, "1032"

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :pswitch_5
    const-string v0, "1031"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :pswitch_6
    const-string v0, "1030"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :pswitch_7
    const-string v0, "1029"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_1
    sget p2, Lo/Ct$ActionBar;->o:I

    goto/16 :goto_8

    :pswitch_8
    const-string v0, "1028"

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :pswitch_9
    const-string v0, "1027"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :pswitch_a
    const-string v0, "1026"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :pswitch_b
    const-string v0, "1025"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_2
    sget p2, Lo/Ct$ActionBar;->m:I

    goto/16 :goto_8

    :pswitch_c
    const-string v0, "1024"

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_3

    :pswitch_d
    const-string v0, "1023"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_3

    :pswitch_e
    const-string v0, "1022"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_3

    :pswitch_f
    const-string v0, "1021"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_3
    sget p2, Lo/Ct$ActionBar;->q:I

    goto/16 :goto_8

    :pswitch_10
    const-string v0, "1020"

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_4

    :pswitch_11
    const-string v0, "1019"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_4

    :pswitch_12
    const-string v0, "1018"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_4

    :pswitch_13
    const-string v0, "1017"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_4
    sget p2, Lo/Ct$ActionBar;->s:I

    goto :goto_8

    :pswitch_14
    const-string v0, "1016"

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_5

    :pswitch_15
    const-string v0, "1015"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_5

    :pswitch_16
    const-string v0, "1014"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_5

    :pswitch_17
    const-string v0, "1013"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_5
    sget p2, Lo/Ct$ActionBar;->t:I

    goto :goto_8

    :pswitch_18
    const-string v0, "1012"

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_6

    :pswitch_19
    const-string v0, "1011"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_6

    :pswitch_1a
    const-string v0, "1010"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_6

    :cond_0
    const-string v0, "1009"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_6
    sget p2, Lo/Ct$ActionBar;->l:I

    goto :goto_8

    :cond_1
    :goto_7
    const/4 p2, -0x1

    :goto_8
    if-lez p2, :cond_2

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_9

    :cond_2
    const/4 p1, 0x0

    :goto_9
    return-object p1

    :pswitch_data_0
    .packed-switch 0x17007e
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17009d
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1700bc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ratingDetails"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p2}, Lcom/netflix/model/leafs/advisory/RatingDetails;->getRatingLevel()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x662

    if-eq v0, v1, :cond_7

    const/16 v1, 0x6d9

    if-eq v0, v1, :cond_5

    const/16 v1, 0x71c

    if-eq v0, v1, :cond_3

    const v1, 0xbe33

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "124"

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p3, :cond_2

    sget p2, Lo/Ct$ActionBar;->A:I

    goto :goto_1

    :cond_2
    sget p2, Lo/Ct$ActionBar;->v:I

    goto :goto_1

    :cond_3
    const-string v0, "95"

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p3, :cond_4

    sget p2, Lo/Ct$ActionBar;->u:I

    goto :goto_1

    :cond_4
    sget p2, Lo/Ct$ActionBar;->r:I

    goto :goto_1

    :cond_5
    const-string v0, "70"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p3, :cond_6

    sget p2, Lo/Ct$ActionBar;->x:I

    goto :goto_1

    :cond_6
    sget p2, Lo/Ct$ActionBar;->p:I

    goto :goto_1

    :cond_7
    const-string v0, "35"

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p3, :cond_8

    sget p2, Lo/Ct$ActionBar;->w:I

    goto :goto_1

    :cond_8
    sget p2, Lo/Ct$ActionBar;->y:I

    goto :goto_1

    :cond_9
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-lez p2, :cond_a

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public d(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Lo/CD;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAdvisory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v3, p2

    check-cast v3, Lcom/netflix/model/leafs/advisory/RatingDetails;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lo/Cu$TaskDescription;->b(Lo/Cu;Landroid/content/Context;Lcom/netflix/model/leafs/advisory/RatingDetails;ZILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 46
    invoke-interface {p2}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getIcons()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Iterable;

    .line 62
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/advisory/ContentAdvisoryIcon;

    const-string v3, "it"

    .line 47
    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/netflix/model/leafs/advisory/ContentAdvisoryIcon;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.id"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lo/Cv;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 48
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Lkotlin/Pair;

    invoke-interface {v2}, Lcom/netflix/model/leafs/advisory/ContentAdvisoryIcon;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    new-instance p2, Lo/CH;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v2, "LayoutInflater.from(context)"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p2, p1}, Lo/CH;-><init>(Landroid/view/LayoutInflater;)V

    .line 55
    invoke-virtual {p2, v0}, Lo/CH;->b(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p2, v1}, Lo/CH;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 44
    :goto_1
    check-cast p2, Lo/CD;

    return-object p2
.end method
