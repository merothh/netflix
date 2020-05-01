.class final Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$Application;->b:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$Application;->b:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->m()Lo/InputConnectionWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$Application;->b:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->b(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/InputConnectionWrapper;->b(Ljava/lang/Long;)V

    .line 150
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$Application;->b:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->e(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)V

    return-void
.end method
