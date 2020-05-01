.class Lo/Jw$10;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)V
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
.field final synthetic b:Lo/Jw;

.field final synthetic c:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method constructor <init>(Lo/Jw;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lo/Jw$10;->b:Lo/Jw;

    iput-object p3, p0, Lo/Jw$10;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1048
    iget-object v0, p0, Lo/Jw$10;->b:Lo/Jw;

    iget-object v1, p0, Lo/Jw$10;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1, v1}, Lo/Jw;->b(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1045
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lo/Jw$10;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
