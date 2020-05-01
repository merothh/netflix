.class public final Lo/Vo;
.super Lo/Ve;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Vo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Vo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lo/Ve;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 16
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Vo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final b(J)V
    .locals 1

    .line 43
    new-instance v0, Lo/Vo$TaskDescription;

    invoke-direct {v0, p0, p1, p2}, Lo/Vo$TaskDescription;-><init>(Lo/Vo;J)V

    .line 57
    invoke-virtual {p0}, Lo/Vo;->c()Lo/Vv;

    move-result-object p1

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lo/Vv;->b(ZLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Lcom/netflix/model/leafs/originals/interactive/UiDefinition;)V
    .locals 1

    const-string v0, "imageLoaderRepository"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moment"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseLayout"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super/range {p0 .. p6}, Lo/Ve;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Lcom/netflix/model/leafs/originals/interactive/UiDefinition;)V

    .line 34
    check-cast p5, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    .line 35
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/Moment;->text()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "it"

    .line 36
    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p5}, Lo/Vo;->a(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;)V

    .line 38
    :cond_0
    sget-object p2, Lo/Vq;->b:Lo/Vq;

    invoke-virtual {p2, p1, p4}, Lo/Vq;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lo/Vo;->b(J)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    .line 61
    invoke-super {p0}, Lo/Ve;->g()V

    const/16 v0, 0x8

    .line 62
    invoke-virtual {p0, v0}, Lo/Vo;->setVisibility(I)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method
