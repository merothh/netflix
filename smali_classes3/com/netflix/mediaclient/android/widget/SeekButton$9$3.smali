.class public final Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RadioButton$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/RadioButton$3;


# direct methods
.method public constructor <init>(Lo/RadioButton$3;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/akj;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    sget-object p1, Lo/RadioButton;->d:Lo/RadioButton$Application;

    check-cast p1, Lo/MessagePdu;

    .line 245
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    iget-object p1, p1, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-virtual {p1}, Lo/RadioButton;->e()Lo/RadioButton$ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    iget-object v0, v0, Lo/RadioButton$3;->b:Lo/RadioButton;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    iget-object v1, v1, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-static {v1}, Lo/RadioButton;->i(Lo/RadioButton;)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    iget-object v2, v2, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-static {v2}, Lo/RadioButton;->e(Lo/RadioButton;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lo/RadioButton$ActionBar;->b(Lo/RadioButton;II)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    iget-object p1, p1, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-virtual {p1}, Lo/RadioButton;->e()Lo/RadioButton$ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    iget-object v0, v0, Lo/RadioButton$3;->b:Lo/RadioButton;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    iget-object v1, v1, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-static {v1}, Lo/RadioButton;->i(Lo/RadioButton;)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    iget-object v2, v2, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-static {v2}, Lo/RadioButton;->e(Lo/RadioButton;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lo/RadioButton$ActionBar;->d(Lo/RadioButton;II)V

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b:Lo/RadioButton$3;

    iget-object p1, p1, Lo/RadioButton$3;->b:Lo/RadioButton;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lo/RadioButton;->b(Lo/RadioButton;Lo/alB;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;->b(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
