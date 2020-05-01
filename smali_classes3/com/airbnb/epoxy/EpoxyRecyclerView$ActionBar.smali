.class final Lcom/airbnb/epoxy/EpoxyRecyclerView$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/epoxy/EpoxyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/airbnb/epoxy/EpoxyRecyclerView;


# direct methods
.method constructor <init>(Lcom/airbnb/epoxy/EpoxyRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ActionBar;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ActionBar;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    invoke-static {v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->b(Lcom/airbnb/epoxy/EpoxyRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ActionBar;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->a(Lcom/airbnb/epoxy/EpoxyRecyclerView;Z)V

    .line 93
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ActionBar;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    invoke-static {v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d(Lcom/airbnb/epoxy/EpoxyRecyclerView;)V

    :cond_0
    return-void
.end method
