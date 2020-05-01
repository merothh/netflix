.class public final Lo/LogPrinter;
.super Lo/Log;
.source ""


# instance fields
.field private e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/Log;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/LogPrinter;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/LogPrinter;->e:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/LogPrinter;->e:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/LogPrinter;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lo/LogPrinter;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 15
    invoke-virtual {p0}, Lo/LogPrinter;->s()Lo/MathUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/MathUtils;->v()Lo/MutableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lo/MutableBoolean;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lo/LogPrinter;->s()Lo/MathUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/MathUtils;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/LogPrinter;->x()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public o()Lo/MathUtils;
    .locals 2

    .line 9
    invoke-virtual {p0}, Lo/LogPrinter;->t()Lo/MonthDisplayHelper;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lo/MonthDisplayHelper;->c(Landroidx/fragment/app/Fragment;)Lo/LongArray;

    move-result-object v0

    check-cast v0, Lo/MathUtils;

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/Log;->onDestroyView()V

    invoke-virtual {p0}, Lo/LogPrinter;->b()V

    return-void
.end method
