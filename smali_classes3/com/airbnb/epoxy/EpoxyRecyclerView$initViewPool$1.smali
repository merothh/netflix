.class final Lcom/airbnb/epoxy/EpoxyRecyclerView$initViewPool$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/epoxy/EpoxyRecyclerView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/airbnb/epoxy/EpoxyRecyclerView;


# direct methods
.method constructor <init>(Lcom/airbnb/epoxy/EpoxyRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$initViewPool$1;->d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$initViewPool$1;->d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView$initViewPool$1;->c()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    return-object v0
.end method
