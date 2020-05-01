.class Lo/abu$11$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/abu$11;


# direct methods
.method constructor <init>(Lo/abu$11;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lo/abu$11$1;->b:Lo/abu$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Boolean;)V
    .locals 1

    .line 1008
    iget-object p1, p0, Lo/abu$11$1;->b:Lo/abu$11;

    iget-object p1, p1, Lo/abu$11;->a:Lo/abu;

    iget-object v0, p0, Lo/abu$11$1;->b:Lo/abu$11;

    iget-object v0, v0, Lo/abu$11;->a:Lo/abu;

    invoke-static {v0}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/abu;->d(Landroid/content/Intent;)V

    .line 1009
    iget-object p1, p0, Lo/abu$11$1;->b:Lo/abu$11;

    iget-object p1, p1, Lo/abu$11;->a:Lo/abu;

    invoke-virtual {p1}, Lo/abu;->finish()V

    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1005
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/abu$11$1;->b(Ljava/lang/Boolean;)V

    return-void
.end method
