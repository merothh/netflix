.class Lo/Se$5;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Se;->d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Se;

.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lo/Se$5;->b:Lo/Se;

    iput-object p2, p0, Lo/Se$5;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lo/Se$5;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 169
    iget-object p1, p0, Lo/Se$5;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 170
    iget-object p1, p0, Lo/Se$5;->b:Lo/Se;

    iget-object p2, p0, Lo/Se$5;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/Se;->a(Lo/Se;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
