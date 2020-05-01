.class Lo/Se$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HwBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Se;->d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic b:Z

.field final synthetic d:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic e:Lo/Se;


# direct methods
.method constructor <init>(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;ZLcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lo/Se$2;->e:Lo/Se;

    iput-object p2, p0, Lo/Se$2;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean p3, p0, Lo/Se$2;->b:Z

    iput-object p4, p0, Lo/Se$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/HwBlob;)V
    .locals 0

    return-void
.end method

.method public e(Lo/HwBlob;)V
    .locals 3

    .line 153
    iget-object p1, p0, Lo/Se$2;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 154
    iget-boolean p1, p0, Lo/Se$2;->b:Z

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lo/Se$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->bl:I

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
