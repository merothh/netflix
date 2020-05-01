.class public final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

.field final synthetic e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;->e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    .line 211
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->e(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->getVisibility()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    .line 216
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_4

    .line 218
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->m()I

    move-result p1

    .line 220
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->d(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)I

    move-result p2

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->a(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)I

    move-result p3

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-le p3, p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->e(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    .line 220
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 222
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_1

    .line 223
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->a(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)I

    move-result p2

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->e(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_1

    .line 224
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->e(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_4
    :goto_1
    return-void
.end method
