.class public final Lo/Vn;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private final a:Lo/aka;

.field private final b:Lo/aka;

.field private final c:Lo/aka;

.field private final d:Lo/aka;

.field private final e:Lo/aka;

.field private final f:Lo/aka;

.field private final g:Lo/aka;

.field private final h:Lo/aka;

.field private final i:Lo/aka;

.field private final j:Lo/aka;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Vn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Vn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$debugOverlay$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$debugOverlay$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->d:Lo/aka;

    .line 24
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$hitArea$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$hitArea$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->c:Lo/aka;

    .line 31
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$choiceImage$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$choiceImage$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->e:Lo/aka;

    .line 35
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$underline$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$underline$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->a:Lo/aka;

    .line 41
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$imageContainer$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$imageContainer$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->b:Lo/aka;

    .line 45
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$foregroundImage$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$foregroundImage$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->j:Lo/aka;

    .line 49
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$icon$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$icon$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->g:Lo/aka;

    .line 53
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$textView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$textView$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->i:Lo/aka;

    .line 57
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$backgroundImage$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$backgroundImage$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->h:Lo/aka;

    .line 61
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$backgroundImageSelected$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$backgroundImageSelected$2;-><init>(Lo/Vn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vn;->f:Lo/aka;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 12
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Vn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lo/Vn;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final b()Lo/ImageSwitcher;
    .locals 1

    iget-object v0, p0, Lo/Vn;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final c()Lo/GridView;
    .locals 1

    iget-object v0, p0, Lo/Vn;->e:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/Vn;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/Vn;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final f()Lo/GridView;
    .locals 1

    iget-object v0, p0, Lo/Vn;->j:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public final g()Lo/Vp;
    .locals 1

    iget-object v0, p0, Lo/Vn;->g:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Vp;

    return-object v0
.end method

.method public final h()Lo/GridView;
    .locals 1

    iget-object v0, p0, Lo/Vn;->h:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public final i()Lo/GridView;
    .locals 1

    iget-object v0, p0, Lo/Vn;->f:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public final j()Lo/ImageSwitcher;
    .locals 1

    iget-object v0, p0, Lo/Vn;->i:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method
