.class Lo/UnsatisfiedLinkError$4;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnsatisfiedLinkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/UnsatisfiedLinkError;


# direct methods
.method constructor <init>(Lo/UnsatisfiedLinkError;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lo/UnsatisfiedLinkError$4;->a:Lo/UnsatisfiedLinkError;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 133
    iget-object p2, p0, Lo/UnsatisfiedLinkError$4;->a:Lo/UnsatisfiedLinkError;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 133
    invoke-virtual {p2, p3, p1}, Lo/UnsatisfiedLinkError;->d(II)V

    return-void
.end method
