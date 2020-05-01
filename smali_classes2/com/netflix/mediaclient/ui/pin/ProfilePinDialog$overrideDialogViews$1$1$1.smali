.class final Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ik$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->e(Lo/BC;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1$1;->c:Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1$1;->c:Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->b:Lo/Tm$Application;

    iget-object v0, v0, Lo/Tm$Application;->c:Lo/Tm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Tm;->a(Lo/Tm;Z)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1$1;->c:Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->b:Lo/Tm$Application;

    iget-object v0, v0, Lo/Tm$Application;->c:Lo/Tm;

    invoke-virtual {v0}, Lo/Tm;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1$1;->c:Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/pin/ProfilePinDialog$overrideDialogViews$1$1;->b:Lo/Tm$Application;

    iget-object p1, p1, Lo/Tm$Application;->c:Lo/Tm;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/Tm;->e(Lo/Tm;Z)V

    :cond_1
    return-void
.end method
