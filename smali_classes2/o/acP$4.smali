.class Lo/acP$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acP;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/acP;


# direct methods
.method constructor <init>(Lo/acP;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lo/acP$4;->d:Lo/acP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    iget-object p1, p0, Lo/acP$4;->d:Lo/acP;

    iget-object p1, p1, Lo/acP;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lo/acP$4;->d:Lo/acP;

    invoke-virtual {v0}, Lo/acP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->Q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lo/acP;->j()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    iget-object v0, p0, Lo/acP$4;->d:Lo/acP;

    invoke-virtual {v0}, Lo/acP;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lo/acP$4;->d:Lo/acP;

    invoke-virtual {v0, p1}, Lo/acP;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
