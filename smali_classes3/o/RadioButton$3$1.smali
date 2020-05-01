.class final Lo/RadioButton$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RadioButton$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/RadioButton$3;


# direct methods
.method constructor <init>(Lo/RadioButton$3;)V
    .locals 0

    iput-object p1, p0, Lo/RadioButton$3$1;->a:Lo/RadioButton$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lo/RadioButton$3$1;->c(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final c(Lo/akj;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lo/RadioButton$3$1;->a:Lo/RadioButton$3;

    iget-object p1, p1, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-static {p1}, Lo/RadioButton;->e(Lo/RadioButton;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lo/RadioButton;->e(Lo/RadioButton;I)V

    .line 228
    sget-object p1, Lo/RadioButton;->d:Lo/RadioButton$Application;

    check-cast p1, Lo/MessagePdu;

    .line 229
    iget-object p1, p0, Lo/RadioButton$3$1;->a:Lo/RadioButton$3;

    iget-object p1, p1, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-virtual {p1}, Lo/RadioButton;->e()Lo/RadioButton$ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/RadioButton$3$1;->a:Lo/RadioButton$3;

    iget-object v0, v0, Lo/RadioButton$3;->b:Lo/RadioButton;

    iget-object v2, p0, Lo/RadioButton$3$1;->a:Lo/RadioButton$3;

    iget-object v2, v2, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-static {v2}, Lo/RadioButton;->i(Lo/RadioButton;)I

    move-result v2

    iget-object v3, p0, Lo/RadioButton$3$1;->a:Lo/RadioButton$3;

    iget-object v3, v3, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-static {v3}, Lo/RadioButton;->e(Lo/RadioButton;)I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lo/RadioButton$ActionBar;->b(Lo/RadioButton;II)V

    .line 230
    :cond_0
    iget-object p1, p0, Lo/RadioButton$3$1;->a:Lo/RadioButton$3;

    iget-object p1, p1, Lo/RadioButton$3;->b:Lo/RadioButton;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v0}, Lo/RadioButton;->b(Lo/RadioButton;Lo/alB;ILjava/lang/Object;)V

    return-void
.end method
