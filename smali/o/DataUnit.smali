.class public final Lo/DataUnit;
.super Lo/AtomicFile;
.source ""


# instance fields
.field private final c:Ljava/lang/String;

.field private final e:Lcom/netflix/cl/model/AppView;

.field private f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lo/AtomicFile;-><init>()V

    .line 14
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentDebitCard:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lo/DataUnit;->e:Lcom/netflix/cl/model/AppView;

    const-string v0, "paymentDebitCard"

    .line 15
    iput-object v0, p0, Lo/DataUnit;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B()Lo/Base64;
    .locals 2

    .line 11
    invoke-virtual {p0}, Lo/DataUnit;->n()Lo/ContainerHelpers;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lo/ContainerHelpers;->c(Landroidx/fragment/app/Fragment;)Lo/DayOfMonthCursor;

    move-result-object v0

    check-cast v0, Lo/Base64;

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/DataUnit;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/DataUnit;->f:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/DataUnit;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/DataUnit;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lo/DataUnit;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/DataUnit;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/DataUnit;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/AtomicFile;->onDestroyView()V

    invoke-virtual {p0}, Lo/DataUnit;->b()V

    return-void
.end method
