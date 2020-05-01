.class Lo/CK$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic b:Lo/CK;


# direct methods
.method constructor <init>(Lo/CK;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lo/CK$StateListAnimator;->b:Lo/CK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lo/CK$StateListAnimator;->b:Lo/CK;

    invoke-static {v0}, Lo/CK;->e(Lo/CK;)Z

    move-result v0

    const-string v1, "BandwidthPrefDialogFragment"

    if-eqz v0, :cond_0

    const-string p1, "ignore manual selection - in auto mode"

    .line 169
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->i:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 175
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->hN:I

    if-ne p1, v2, :cond_1

    .line 176
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    goto :goto_0

    .line 177
    :cond_1
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->hI:I

    if-ne p1, v2, :cond_2

    .line 178
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->a:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    goto :goto_0

    .line 179
    :cond_2
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->hP:I

    if-ne p1, v2, :cond_3

    .line 180
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->b:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    goto :goto_0

    :cond_3
    const-string p1, "Ignoring click on unknown view"

    .line 182
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    sget-object p1, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->i:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    if-eq v0, p1, :cond_4

    .line 186
    iget-object p1, p0, Lo/CK$StateListAnimator;->b:Lo/CK;

    invoke-static {p1}, Lo/CK;->d(Lo/CK;)V

    .line 187
    iget-object p1, p0, Lo/CK$StateListAnimator;->b:Lo/CK;

    invoke-static {p1, v0}, Lo/CK;->a(Lo/CK;Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;)V

    :cond_4
    return-void
.end method
