.class public final Lo/Pj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Pj$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/Pj$Application;


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Lo/OZ;

.field private final c:Landroid/view/View;

.field private final d:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Pe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Pj$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Pj$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Pj;->e:Lo/Pj$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lo/UnicodeScript;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->df:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(pare\u2026fications, parent, false)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Pj;->c:Landroid/view/View;

    .line 18
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<NotificationsUIEventV2>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Pj;->d:Lio/reactivex/subjects/PublishSubject;

    .line 22
    new-instance v0, Lo/OZ;

    iget-object v1, p0, Lo/Pj;->d:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {v0, p2, v1}, Lo/OZ;-><init>(Lo/UnicodeScript;Lio/reactivex/subjects/PublishSubject;)V

    iput-object v0, p0, Lo/Pj;->b:Lo/OZ;

    .line 27
    iget-object p2, p0, Lo/Pj;->c:Landroid/view/View;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "contentView.findViewById(R.id.notifications_list)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/Pj;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    iget-object p2, p0, Lo/Pj;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 31
    iget-object p1, p0, Lo/Pj;->b:Lo/OZ;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Pe;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/Pj;->d:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/Pj;->c:Landroid/view/View;

    return-object v0
.end method

.method public final d(Lo/Pk;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v0, p1, Lo/Pk$ActionBar;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lo/Pj;->b:Lo/OZ;

    check-cast p1, Lo/Pk$ActionBar;

    invoke-virtual {p1}, Lo/Pk$ActionBar;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/OZ;->e(Ljava/util/List;)V

    .line 40
    iget-object p1, p0, Lo/Pj;->b:Lo/OZ;

    invoke-virtual {p1}, Lo/OZ;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
