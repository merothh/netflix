.class Lo/ZE$3;
.super Lo/MultiAutoCompleteTextView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZE;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ZE;


# direct methods
.method constructor <init>(Lo/ZE;Lo/MultiAutoCompleteTextView$Application;Lcom/netflix/cl/model/AppView;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lo/ZE$3;->c:Lo/ZE;

    invoke-direct {p0, p2, p3}, Lo/MultiAutoCompleteTextView;-><init>(Lo/MultiAutoCompleteTextView$Application;Lcom/netflix/cl/model/AppView;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 237
    invoke-super {p0, p1, p2}, Lo/MultiAutoCompleteTextView;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V

    .line 239
    iget-object p1, p0, Lo/ZE$3;->c:Lo/ZE;

    invoke-static {p1}, Lo/ZE;->c(Lo/ZE;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/ZE$3;->c:Lo/ZE;

    invoke-static {p1}, Lo/ZE;->e(Lo/ZE;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/ZE$3;->c:Lo/ZE;

    invoke-static {p1}, Lo/ZE;->d(Lo/ZE;)I

    move-result p1

    add-int/lit8 p1, p1, -0xc

    if-le p2, p1, :cond_0

    .line 240
    iget-object p1, p0, Lo/ZE$3;->c:Lo/ZE;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/ZE;->e(Lo/ZE;Z)V

    :cond_0
    return-void
.end method
