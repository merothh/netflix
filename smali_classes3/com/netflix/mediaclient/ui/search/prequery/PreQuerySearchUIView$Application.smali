.class public final Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$Application;
.super Lo/ThreadLocal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;I)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$Application;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    invoke-direct {p0, p2, p3}, Lo/ThreadLocal;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parent"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "state"

    invoke-static {p4, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->t()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
