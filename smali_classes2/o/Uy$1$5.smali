.class Lo/Uy$1$5;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Uy$1;->d(Lcom/netflix/mediaclient/service/user/UserAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lo/JM$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Uy$1;


# direct methods
.method constructor <init>(Lo/Uy$1;Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lo/Uy$1$5;->a:Lo/Uy$1;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lo/JM$StateListAnimator;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lo/Uy$1$5;->a:Lo/Uy$1;

    iget-object v0, v0, Lo/Uy$1;->a:Lo/adM;

    iget-object v1, p0, Lo/Uy$1$5;->a:Lo/Uy$1;

    iget-object v1, v1, Lo/Uy$1;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/Ik;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/adM;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Uy$1$5;->b(Lo/JM$StateListAnimator;)V

    return-void
.end method
