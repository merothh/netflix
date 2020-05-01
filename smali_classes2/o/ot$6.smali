.class Lo/ot$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ot;


# direct methods
.method constructor <init>(Lo/ot;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lo/ot$6;->a:Lo/ot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 434
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lo/ph;->e(Lo/sE;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object p2, p0, Lo/ot$6;->a:Lo/ot;

    invoke-static {p2, p1}, Lo/ot;->e(Lo/ot;Lo/sE;)V

    goto :goto_1

    .line 435
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/ot$6;->a:Lo/ot;

    invoke-static {p1}, Lo/ot;->c(Lo/ot;)V

    :goto_1
    return-void
.end method
