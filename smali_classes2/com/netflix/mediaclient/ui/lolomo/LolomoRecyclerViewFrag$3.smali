.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$3;
.super Lo/WebChromeClient$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$3;->e:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-direct {p0}, Lo/WebChromeClient$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/WebChromeClient;)V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$3;->e:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    if-ne p1, v0, :cond_0

    .line 924
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$3;->e:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    :cond_0
    return-void
.end method
