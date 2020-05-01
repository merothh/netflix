.class public final Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY$ActionBar;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/Am;",
        "Lo/BC;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic e:Lo/YY$ActionBar;


# direct methods
.method public constructor <init>(Lo/YY$ActionBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;->e:Lo/YY$ActionBar;

    iput p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;->a:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/Am;Lo/BC;)V
    .locals 2

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profile"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    iget v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 555
    sget-object v0, Lo/YY;->i:Lo/YY$Application;

    check-cast v0, Lo/MessagePdu;

    .line 556
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;->e:Lo/YY$ActionBar;

    iget-object v0, v0, Lo/YY$ActionBar;->c:Lo/YY;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lo/YY;->e(Lo/YY;ZZ)V

    .line 558
    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p2

    .line 559
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;->e:Lo/YY$ActionBar;

    iget-object v0, v0, Lo/YY$ActionBar;->c:Lo/YY;

    invoke-static {v0}, Lo/YY;->n(Lo/YY;)Lo/YY$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/zU;

    .line 557
    invoke-virtual {p1, p2, v0}, Lo/Am;->c(Ljava/lang/String;Lo/zU;)V

    .line 561
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;->e:Lo/YY$ActionBar;

    iget-object p1, p1, Lo/YY$ActionBar;->c:Lo/YY;

    invoke-static {p1, v1}, Lo/YY;->a(Lo/YY;Z)V

    .line 562
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;->e:Lo/YY$ActionBar;

    iget-object p1, p1, Lo/YY$ActionBar;->c:Lo/YY;

    invoke-static {p1, v1}, Lo/YY;->e(Lo/YY;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne v0, p1, :cond_1

    .line 564
    sget-object p1, Lo/YY;->i:Lo/YY$Application;

    check-cast p1, Lo/MessagePdu;

    .line 565
    sget-object p1, Lo/YV;->b:Lo/YV;

    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p2

    const-string v0, "profile.profileGuid"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lo/YV;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lo/Am;

    check-cast p2, Lo/BC;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;->b(Lo/Am;Lo/BC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
