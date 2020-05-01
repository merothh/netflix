.class Lo/abu$Application$4;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu$Application;->loginToApp(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lo/abu$Application;


# direct methods
.method constructor <init>(Lo/abu$Application;Ljava/lang/String;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lo/abu$Application$4;->a:Lo/abu$Application;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 775
    iget-object v0, p0, Lo/abu$Application$4;->a:Lo/abu$Application;

    iget-object v0, v0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0, p1}, Lo/abu;->e(Lo/abu;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 772
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lo/abu$Application$4;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
