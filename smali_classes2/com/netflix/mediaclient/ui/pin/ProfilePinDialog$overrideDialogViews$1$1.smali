.class public final Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Tm$Application;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/BC;",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Tm$Application;


# direct methods
.method public constructor <init>(Lo/Tm$Application;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->b:Lo/Tm$Application;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/BC;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 4

    const-string v0, "profile"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->b:Lo/Tm$Application;

    iget-object v0, v0, Lo/Tm$Application;->c:Lo/Tm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Tm;->c(Lo/Tm;Z)V

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->b:Lo/Tm$Application;

    iget-object v0, v0, Lo/Tm$Application;->c:Lo/Tm;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lo/Tm;->b(Lo/Tm;Z)V

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->b:Lo/Tm$Application;

    iget-object v0, v0, Lo/Tm$Application;->c:Lo/Tm;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->b:Lo/Tm$Application;

    iget-object v2, v2, Lo/Tm$Application;->c:Lo/Tm;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nW:I

    invoke-virtual {v2, v3}, Lo/Tm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/Tm;->e(Lo/Tm;ZLjava/lang/String;)V

    .line 85
    new-instance v0, Lo/Ik;

    invoke-direct {v0, p2}, Lo/Ik;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profiles/lock/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1$1;-><init>(Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;)V

    check-cast p2, Lo/Ik$Application;

    invoke-virtual {v0, p1, p2}, Lo/Ik;->e(Ljava/lang/String;Lo/Ik$Application;)Z

    move-result p1

    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lo/BC;

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->e(Lo/BC;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
