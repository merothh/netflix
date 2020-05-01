.class public final Lo/Tm$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Tm;->d(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lo/Tm;


# direct methods
.method constructor <init>(Lo/Tm;)V
    .locals 0

    iput-object p1, p0, Lo/Tm$Application;->c:Lo/Tm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lo/Tm$Application;->c:Lo/Tm;

    invoke-static {p1}, Lo/Tm;->e(Lo/Tm;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lo/Tm$Application;->c:Lo/Tm;

    invoke-static {p1}, Lo/Tm;->a(Lo/Tm;)Lo/BC;

    move-result-object p1

    iget-object v0, p0, Lo/Tm$Application;->c:Lo/Tm;

    invoke-virtual {v0}, Lo/Tm;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;-><init>(Lo/Tm$Application;)V

    check-cast v1, Lo/alN;

    invoke-static {p1, v0, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
