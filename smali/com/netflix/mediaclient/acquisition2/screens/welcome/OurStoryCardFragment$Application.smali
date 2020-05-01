.class final Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Application;->d:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iamgeview height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Application;->d:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->a()Lo/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/BaseAdapter;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ourstorypost"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cardview height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Application;->d:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Application;->d:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->i()V

    return-void
.end method
