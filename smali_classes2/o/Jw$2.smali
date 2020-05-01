.class Lo/Jw$2;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;Ljava/lang/String;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lo/Jw$2;->e:Lo/Jw;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1035
    iget-object v0, p0, Lo/Jw$2;->e:Lo/Jw;

    invoke-static {v0, p1}, Lo/Jw;->a(Lo/Jw;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1032
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lo/Jw$2;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
