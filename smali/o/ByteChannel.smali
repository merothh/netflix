.class public Lo/ByteChannel;
.super Lo/Writer;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lo/Writer;-><init>()V

    return-void
.end method

.method private static e(Lo/CharsetDecoder;)Z
    .locals 1

    .line 123
    invoke-virtual {p0}, Lo/CharsetDecoder;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/ByteChannel;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lo/CharsetDecoder;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/ByteChannel;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lo/CharsetDecoder;->getTargetTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo/ByteChannel;->c(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 292
    check-cast p1, Lo/CharsetDecoder;

    .line 293
    invoke-virtual {p1, p2}, Lo/CharsetDecoder;->addTarget(Landroid/view/View;)Lo/CharsetDecoder;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 147
    check-cast p1, Lo/CharsetDecoder;

    .line 148
    new-instance v0, Lo/ByteChannel$5;

    invoke-direct {v0, p0, p2, p3}, Lo/ByteChannel$5;-><init>(Lo/ByteChannel;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 218
    move-object v0, p1

    check-cast v0, Lo/CharsetDecoder;

    .line 219
    new-instance v9, Lo/ByteChannel$4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lo/ByteChannel$4;-><init>(Lo/ByteChannel;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lo/CharsetDecoder;->addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 254
    check-cast p1, Lo/BasicPermission;

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Lo/BasicPermission;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    invoke-virtual {p1}, Lo/BasicPermission;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {p0, p1, p2, p3}, Lo/ByteChannel;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    instance-of p1, p1, Lo/CharsetDecoder;

    return p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 60
    :cond_0
    new-instance v0, Lo/BasicPermission;

    invoke-direct {v0}, Lo/BasicPermission;-><init>()V

    .line 61
    check-cast p1, Lo/CharsetDecoder;

    invoke-virtual {v0, p1}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    return-object v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 183
    check-cast p1, Lo/CharsetDecoder;

    .line 184
    check-cast p2, Lo/CharsetDecoder;

    .line 185
    check-cast p3, Lo/CharsetDecoder;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 187
    new-instance v0, Lo/BasicPermission;

    invoke-direct {v0}, Lo/BasicPermission;-><init>()V

    .line 188
    invoke-virtual {v0, p1}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p2}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    move-result-object p1

    const/4 p2, 0x1

    .line 190
    invoke-virtual {p1, p2}, Lo/BasicPermission;->a(I)Lo/BasicPermission;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 197
    new-instance p2, Lo/BasicPermission;

    invoke-direct {p2}, Lo/BasicPermission;-><init>()V

    if-eqz p1, :cond_3

    .line 199
    invoke-virtual {p2, p1}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    .line 201
    :cond_3
    invoke-virtual {p2, p3}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    return-object p2

    :cond_4
    return-object p1
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 84
    check-cast p1, Lo/CharsetDecoder;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 86
    invoke-virtual {p0, p2, v0}, Lo/ByteChannel;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 88
    new-instance p2, Lo/ByteChannel$3;

    invoke-direct {p2, p0, v0}, Lo/ByteChannel$3;-><init>(Lo/ByteChannel;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lo/CharsetDecoder;->setEpicenterCallback(Lo/CharsetDecoder$Application;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 99
    check-cast p1, Lo/CharsetDecoder;

    if-nez p1, :cond_0

    return-void

    .line 103
    :cond_0
    instance-of v0, p1, Lo/BasicPermission;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    check-cast p1, Lo/BasicPermission;

    .line 105
    invoke-virtual {p1}, Lo/BasicPermission;->d()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 107
    invoke-virtual {p1, v1}, Lo/BasicPermission;->e(I)Lo/CharsetDecoder;

    move-result-object v2

    .line 108
    invoke-virtual {p0, v2, p2}, Lo/ByteChannel;->c(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p1}, Lo/ByteChannel;->e(Lo/CharsetDecoder;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p1}, Lo/CharsetDecoder;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lo/ByteChannel;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 116
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lo/CharsetDecoder;->addTarget(Landroid/view/View;)Lo/CharsetDecoder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 131
    new-instance v0, Lo/BasicPermission;

    invoke-direct {v0}, Lo/BasicPermission;-><init>()V

    if-eqz p1, :cond_0

    .line 133
    check-cast p1, Lo/CharsetDecoder;

    invoke-virtual {v0, p1}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    :cond_0
    if-eqz p2, :cond_1

    .line 136
    check-cast p2, Lo/CharsetDecoder;

    invoke-virtual {v0, p2}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    :cond_1
    if-eqz p3, :cond_2

    .line 139
    check-cast p3, Lo/CharsetDecoder;

    invoke-virtual {v0, p3}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    :cond_2
    return-object v0
.end method

.method public d(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 300
    check-cast p1, Lo/CharsetDecoder;

    .line 301
    invoke-virtual {p1, p2}, Lo/CharsetDecoder;->removeTarget(Landroid/view/View;)Lo/CharsetDecoder;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 265
    check-cast p1, Lo/CharsetDecoder;

    .line 266
    instance-of v0, p1, Lo/BasicPermission;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    check-cast p1, Lo/BasicPermission;

    .line 268
    invoke-virtual {p1}, Lo/BasicPermission;->d()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 270
    invoke-virtual {p1, v1}, Lo/BasicPermission;->e(I)Lo/CharsetDecoder;

    move-result-object v2

    .line 271
    invoke-virtual {p0, v2, p2, p3}, Lo/ByteChannel;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-static {p1}, Lo/ByteChannel;->e(Lo/CharsetDecoder;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    invoke-virtual {p1}, Lo/CharsetDecoder;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 276
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 280
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lo/CharsetDecoder;->addTarget(Landroid/view/View;)Lo/CharsetDecoder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_3

    .line 283
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->removeTarget(Landroid/view/View;)Lo/CharsetDecoder;

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 50
    check-cast p1, Lo/CharsetDecoder;

    invoke-virtual {p1}, Lo/CharsetDecoder;->clone()Lo/CharsetDecoder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public e(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p2, Lo/CharsetDecoder;

    invoke-static {p1, p2}, Lo/Watchable;->d(Landroid/view/ViewGroup;Lo/CharsetDecoder;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 308
    check-cast p1, Lo/CharsetDecoder;

    .line 309
    new-instance v0, Lo/ByteChannel$1;

    invoke-direct {v0, p0, p2}, Lo/ByteChannel$1;-><init>(Lo/ByteChannel;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->setEpicenterCallback(Lo/CharsetDecoder$Application;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 68
    check-cast p1, Lo/BasicPermission;

    .line 69
    invoke-virtual {p1}, Lo/BasicPermission;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 73
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 74
    invoke-static {v0, v3}, Lo/ByteChannel;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, p1, p3}, Lo/ByteChannel;->c(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method
