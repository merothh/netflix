.class public final Lo/aaA$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaA;->e(Lo/Bs;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/aaA;

.field final synthetic c:Lo/Bs;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/aaA;Lo/Bs;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/aaA$TaskDescription;->a:Lo/aaA;

    iput-object p2, p0, Lo/aaA$TaskDescription;->c:Lo/Bs;

    iput-object p3, p0, Lo/aaA$TaskDescription;->d:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 350
    iget-object p1, p0, Lo/aaA$TaskDescription;->a:Lo/aaA;

    invoke-static {p1}, Lo/aaA;->b(Lo/aaA;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/aaA$TaskDescription;->a:Lo/aaA;

    invoke-static {p1}, Lo/aaA;->c(Lo/aaA;)I

    move-result p1

    if-nez p1, :cond_1

    .line 351
    :cond_0
    iget-object p1, p0, Lo/aaA$TaskDescription;->a:Lo/aaA;

    invoke-static {p1}, Lo/aaA;->a(Lo/aaA;)Lcom/airbnb/epoxy/EpoxyRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    invoke-static {p1, p2}, Lo/aaA;->d(Lo/aaA;I)V

    .line 352
    iget-object p1, p0, Lo/aaA$TaskDescription;->a:Lo/aaA;

    invoke-static {p1}, Lo/aaA;->b(Lo/aaA;)I

    move-result p2

    int-to-double p2, p2

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e()D

    move-result-wide p4

    mul-double p2, p2, p4

    const/high16 p4, 0x3f000000    # 0.5f

    float-to-double p4, p4

    add-double/2addr p2, p4

    double-to-int p2, p2

    invoke-static {p1, p2}, Lo/aaA;->b(Lo/aaA;I)V

    .line 354
    :cond_1
    iget-object p1, p0, Lo/aaA$TaskDescription;->a:Lo/aaA;

    invoke-static {p1}, Lo/aaA;->d(Lo/aaA;)Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    move-result-object p1

    iget-object p2, p0, Lo/aaA$TaskDescription;->c:Lo/Bs;

    iget-object p3, p0, Lo/aaA$TaskDescription;->d:Ljava/lang/String;

    iget-object p4, p0, Lo/aaA$TaskDescription;->a:Lo/aaA;

    invoke-static {p4}, Lo/aaA;->b(Lo/aaA;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p5, p0, Lo/aaA$TaskDescription;->a:Lo/aaA;

    invoke-static {p5}, Lo/aaA;->c(Lo/aaA;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->setData(Lo/Bs;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
