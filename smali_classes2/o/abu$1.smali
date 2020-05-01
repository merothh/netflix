.class Lo/abu$1;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu;->c(Lcom/netflix/mediaclient/service/user/UserAgent;Lo/abu$Activity;)V
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
.field final synthetic a:Lo/abu$Activity;

.field final synthetic e:Lo/abu;


# direct methods
.method constructor <init>(Lo/abu;Ljava/lang/String;Lo/abu$Activity;)V
    .locals 0

    .line 1247
    iput-object p1, p0, Lo/abu$1;->e:Lo/abu;

    iput-object p3, p0, Lo/abu$1;->a:Lo/abu$Activity;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1250
    iget-object v0, p0, Lo/abu$1;->a:Lo/abu$Activity;

    if-eqz v0, :cond_0

    .line 1251
    invoke-interface {v0, p1}, Lo/abu$Activity;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1247
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lo/abu$1;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
