.class Lo/abu$Application$6;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu$Application;->playbackTokenActivate(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic c:Lo/abu$Application;


# direct methods
.method constructor <init>(Lo/abu$Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lo/abu$Application$6;->c:Lo/abu$Application;

    iput-object p3, p0, Lo/abu$Application$6;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 879
    iget-object v0, p0, Lo/abu$Application$6;->c:Lo/abu$Application;

    iget-object v1, p0, Lo/abu$Application$6;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lo/abu$Application;->c(Lo/abu$Application;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 876
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lo/abu$Application$6;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
