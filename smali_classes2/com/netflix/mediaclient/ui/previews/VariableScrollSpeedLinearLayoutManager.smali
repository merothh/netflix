.class public final Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# instance fields
.field private final a:F

.field private final c:Landroid/content/Context;

.field private final d:Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;FIZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->c:Landroid/content/Context;

    iput p2, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->a:F

    .line 17
    new-instance p1, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->c:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;-><init>(Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->d:Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;FIZILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;-><init>(Landroid/content/Context;FIZ)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;)F
    .locals 0

    .line 10
    iget p0, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->a:F

    return p0
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;I)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->d:Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;->a(I)V

    .line 30
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->d:Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2;)V

    return-void
.end method
