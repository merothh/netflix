.class Lo/Annotation$3;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic c:Lo/Annotation;


# direct methods
.method constructor <init>(Lo/Annotation;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/Annotation$3;->c:Lo/Annotation;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lo/Annotation$3;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lo/Annotation$3;->a:Z

    :cond_1
    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;->e(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 49
    iget-boolean p1, p0, Lo/Annotation$3;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lo/Annotation$3;->a:Z

    .line 51
    iget-object p1, p0, Lo/Annotation$3;->c:Lo/Annotation;

    invoke-virtual {p1}, Lo/Annotation;->a()V

    :cond_0
    return-void
.end method
