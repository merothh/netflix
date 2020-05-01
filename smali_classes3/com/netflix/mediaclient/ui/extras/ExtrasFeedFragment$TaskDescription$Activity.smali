.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;->c(Lo/Spliterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/BiConsumer;

.field final synthetic c:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;


# direct methods
.method constructor <init>(Lo/BiConsumer;Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription$Activity;->b:Lo/BiConsumer;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription$Activity;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription$Activity;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription$Activity;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription$Activity;->b:Lo/BiConsumer;

    check-cast v1, Lo/GX;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->a(Lo/GX;)V

    return-void
.end method
