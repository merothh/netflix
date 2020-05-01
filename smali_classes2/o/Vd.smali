.class public abstract Lo/Vd;
.super Lo/Vf;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Vd$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/Vd$TaskDescription;


# instance fields
.field private b:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Vd$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Vd$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Vd;->c:Lo/Vd$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Vd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Vd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lo/Vf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lo/Vd;->b:I

    .line 23
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/Vd;->e:Ljava/util/List;

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

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Vd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xz;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;",
            "Lo/ErrorCodes;",
            "Lo/Xz;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            "Lcom/netflix/model/leafs/originals/interactive/BaseLayout;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "imageLoaderRepository"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moment"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseLayout"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lo/Vd;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 41
    invoke-virtual {p0, p2}, Lo/Vd;->c(Lo/ErrorCodes;)V

    .line 42
    check-cast p3, Lo/Xt;

    invoke-virtual {p0, p3}, Lo/Vd;->d(Lo/Xt;)V

    .line 43
    invoke-virtual {p0, p4}, Lo/Vd;->e(Lcom/netflix/model/leafs/originals/interactive/Moment;)V

    .line 44
    invoke-virtual {p0, p5}, Lo/Vd;->b(Lcom/netflix/model/leafs/originals/interactive/BaseLayout;)V

    .line 45
    iput-object p6, p0, Lo/Vd;->e:Ljava/util/List;

    .line 46
    iput p7, p0, Lo/Vd;->b:I

    .line 47
    check-cast p5, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    check-cast p5, Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    invoke-virtual {p0, p5}, Lo/Vd;->b(Lcom/netflix/model/leafs/originals/interactive/BaseLayout;)V

    .line 48
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/Moment;->config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->queueSelectedChoice()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lo/Vd;->j:Z

    return-void
.end method

.method protected final a(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lo/Vd;->j:Z

    return-void
.end method

.method protected abstract b(F)V
.end method

.method protected final c(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lo/Vd;->i:Z

    return-void
.end method

.method protected final d(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lo/Vd;->g:Z

    return-void
.end method

.method protected abstract e(F)V
.end method

.method protected final j()I
    .locals 1

    .line 22
    iget v0, p0, Lo/Vd;->b:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/Vd;->e:Ljava/util/List;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/Vd;->g:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/Vd;->j:Z

    return v0
.end method

.method protected final o()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/Vd;->i:Z

    return v0
.end method
