.class Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;
.super Lo/aef;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/home/HomeActivity$4;->run(Lo/Am;)V
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
.field final synthetic a:Lo/Am;

.field final synthetic d:Lcom/netflix/mediaclient/ui/home/HomeActivity$4;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$4;Lo/Am;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity$4;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;->a:Lo/Am;

    invoke-direct {p0}, Lo/aef;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/akj;)V
    .locals 1

    const-string p1, "HomeActivity"

    const-string v0, "from from homeLolomoLoadEnded: userDialogFetchImpl"

    .line 478
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity$4;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;->a:Lo/Am;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c(Lo/Am;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 475
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;->a(Lo/akj;)V

    return-void
.end method
