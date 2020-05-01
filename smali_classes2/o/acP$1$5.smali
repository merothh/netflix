.class Lo/acP$1$5;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acP$1;->d(Lcom/netflix/mediaclient/service/user/UserAgent;)V
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
.field final synthetic b:Lo/acP$1;


# direct methods
.method constructor <init>(Lo/acP$1;Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lo/acP$1$5;->b:Lo/acP$1;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lo/JM$Activity;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lo/acP$1$5;->b:Lo/acP$1;

    iget-object v0, v0, Lo/acP$1;->b:Lo/acP;

    invoke-virtual {p1}, Lo/JM$Activity;->d()Z

    move-result v1

    invoke-virtual {p1}, Lo/JM$Activity;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/acP;->b(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 344
    check-cast p1, Lo/JM$Activity;

    invoke-virtual {p0, p1}, Lo/acP$1$5;->c(Lo/JM$Activity;)V

    return-void
.end method
