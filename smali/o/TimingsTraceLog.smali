.class public final Lo/TimingsTraceLog;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TimingsTraceLog$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/TimingsTraceLog$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SuperNotCalledException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SuperNotCalledException;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/TimingsTraceLog;->c:Ljava/util/List;

    iput-boolean p2, p0, Lo/TimingsTraceLog;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lo/TimingsTraceLog$Application;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lo/TimingsTraceLog$Application;->d()Lo/GridView;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    iget-object v2, p0, Lo/TimingsTraceLog;->c:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SuperNotCalledException;

    invoke-virtual {v2}, Lo/SuperNotCalledException;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 27
    invoke-virtual {p1}, Lo/TimingsTraceLog$Application;->d()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "holder.imageView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 28
    invoke-virtual {p1}, Lo/TimingsTraceLog$Application;->d()Lo/GridView;

    move-result-object v2

    invoke-virtual {v2}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ac:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 31
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    iget-boolean v2, p0, Lo/TimingsTraceLog;->a:Z

    if-eqz v2, :cond_0

    neg-float v0, v1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    move v0, v1

    goto :goto_0

    .line 33
    :cond_1
    iget-boolean p2, p0, Lo/TimingsTraceLog;->a:Z

    if-eqz p2, :cond_2

    neg-float v0, v0

    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lo/TimingsTraceLog$Application;->d()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/GridView;->setTranslationY(F)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lo/TimingsTraceLog$Application;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 20
    new-instance v0, Lo/TimingsTraceLog$Application;

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->ct:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "layoutInflater.inflate(R\u2026ion_title, parent, false)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lo/TimingsTraceLog$Application;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lo/TimingsTraceLog;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 12
    check-cast p1, Lo/TimingsTraceLog$Application;

    invoke-virtual {p0, p1, p2}, Lo/TimingsTraceLog;->a(Lo/TimingsTraceLog$Application;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lo/TimingsTraceLog;->c(Landroid/view/ViewGroup;I)Lo/TimingsTraceLog$Application;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
