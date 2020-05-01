.class Lo/Ik$2;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ik;->e(Ljava/lang/String;Lo/Ik$Application;)Z
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/Ik;

.field final synthetic c:Lo/Ik$Application;


# direct methods
.method constructor <init>(Lo/Ik;Ljava/lang/String;Ljava/lang/String;Lo/Ik$Application;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lo/Ik$2;->b:Lo/Ik;

    iput-object p3, p0, Lo/Ik$2;->a:Ljava/lang/String;

    iput-object p4, p0, Lo/Ik$2;->c:Lo/Ik$Application;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lo/JM$StateListAnimator;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lo/Ik$2;->b:Lo/Ik;

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    iget-object v2, p0, Lo/Ik$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lo/Ik$2;->c:Lo/Ik$Application;

    invoke-virtual {v0, v1, p1, v2, v3}, Lo/Ik;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lo/Ik$Application;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "AccountHandler"

    const-string v1, "Error while requesting auto login token"

    .line 204
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    iget-object p1, p0, Lo/Ik$2;->b:Lo/Ik;

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    sget-object v1, Lo/aeK;->c:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    iget-object v1, p0, Lo/Ik$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lo/Ik$2;->c:Lo/Ik$Application;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lo/Ik;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lo/Ik$Application;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Ik$2;->c(Lo/JM$StateListAnimator;)V

    return-void
.end method
