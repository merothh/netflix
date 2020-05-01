.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application$4;
.super Lo/aef;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application;->d(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application;Landroid/content/Context;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application$4;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application$4;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/aef;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/akj;)V
    .locals 1

    const-string p1, "LolomoRecyclerViewAdapter"

    const-string v0, "Sending request for the rest of the lolomo"

    .line 706
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application$4;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application$4;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 703
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application$4;->d(Lo/akj;)V

    return-void
.end method
