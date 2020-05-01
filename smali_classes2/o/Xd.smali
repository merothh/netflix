.class public final Lo/Xd;
.super Lo/Xl;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Lo/ExpandableListAdapter;

.field private d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

.field private e:I

.field private final f:Lo/aka;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->dW:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026kipcredits, parent, true)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Xd;->b:Landroid/view/View;

    .line 17
    iget-object p1, p0, Lo/Xd;->b:Landroid/view/View;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "rootUI.findViewById(R.id.skip_credits_button)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ExpandableListAdapter;

    iput-object p1, p0, Lo/Xd;->c:Lo/ExpandableListAdapter;

    .line 18
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->b:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    iput-object p1, p0, Lo/Xd;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    .line 21
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSkipCreditsUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSkipCreditsUIView$containerId$2;-><init>(Lo/Xd;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Xd;->f:Lo/aka;

    .line 24
    invoke-virtual {p0}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object p1

    new-instance v0, Lo/Xd$3;

    invoke-direct {v0, p0}, Lo/Xd$3;-><init>(Lo/Xd;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/ExpandableListAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic c(Lo/Xd;)Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/Xd;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    return-object p0
.end method

.method public static final synthetic d(Lo/Xd;)I
    .locals 0

    .line 15
    iget p0, p0, Lo/Xd;->e:I

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/Xd;->f:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ExpandableListAdapter;->setText(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ExpandableListAdapter;->d(Z)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ExpandableListAdapter;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ExpandableListAdapter;->a(Z)V

    .line 75
    new-instance p1, Lo/UW$Fragment;

    iget-object v0, p0, Lo/Xd;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    invoke-direct {p1, v0}, Lo/UW$Fragment;-><init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;)V

    invoke-virtual {p0, p1}, Lo/Xd;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lo/Xd;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 87
    iput p1, p0, Lo/Xd;->e:I

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ExpandableListAdapter;->d(Z)V

    .line 70
    sget-object p1, Lo/UW$FragmentManager;->a:Lo/UW$FragmentManager;

    invoke-virtual {p0, p1}, Lo/Xd;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 52
    sget-object v0, Lo/UU$ServiceConnection;->b:Lo/UU$ServiceConnection;

    invoke-virtual {p0, v0}, Lo/Xd;->e(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ExpandableListAdapter;->a(Z)V

    return-void
.end method

.method public f()Lo/ExpandableListAdapter;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/Xd;->c:Lo/ExpandableListAdapter;

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ExpandableListAdapter;->setVisibility(I)V

    return-void
.end method
