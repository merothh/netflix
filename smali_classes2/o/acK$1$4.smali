.class Lo/acK$1$4;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acK$1;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lo/JM$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/acK$1;


# direct methods
.method constructor <init>(Lo/acK$1;Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lo/acK$1$4;->d:Lo/acK$1;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lo/JM$Activity;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lo/acK$1$4;->d:Lo/acK$1;

    iget-object v0, v0, Lo/acK$1;->b:Lo/acK;

    invoke-virtual {p1}, Lo/JM$Activity;->d()Z

    move-result v1

    invoke-virtual {p1}, Lo/JM$Activity;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/acK;->d(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Lo/JM$Activity;

    invoke-virtual {p0, p1}, Lo/acK$1$4;->b(Lo/JM$Activity;)V

    return-void
.end method
