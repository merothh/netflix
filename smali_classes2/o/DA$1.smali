.class final Lo/DA$1;
.super Lo/aef;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DA;->e(Lo/Am;Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/Am;Ljava/util/List;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lo/DA$1;->a:Lo/Am;

    iput-object p2, p0, Lo/DA$1;->b:Ljava/util/List;

    invoke-direct {p0}, Lo/aef;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/akj;)V
    .locals 1

    const-string p1, "DPPrefetchHelper"

    const-string v0, "from homeLolomoLoadEnded: issuing dp Prefetch"

    .line 72
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, p0, Lo/DA$1;->a:Lo/Am;

    iget-object v0, p0, Lo/DA$1;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lo/DA;->a(Lo/Am;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lo/DA$1;->a(Lo/akj;)V

    return-void
.end method
