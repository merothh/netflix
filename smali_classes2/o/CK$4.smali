.class Lo/CK$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CK;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/CK;


# direct methods
.method constructor <init>(Lo/CK;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lo/CK$4;->c:Lo/CK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bwSwitch toggled state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BandwidthPrefDialogFragment"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lo/CK$4;->c:Lo/CK;

    invoke-static {p1}, Lo/CK;->d(Lo/CK;)V

    .line 124
    iget-object p1, p0, Lo/CK$4;->c:Lo/CK;

    xor-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lo/CK;->b(Lo/CK;Z)V

    if-nez p2, :cond_0

    .line 127
    iget-object p1, p0, Lo/CK$4;->c:Lo/CK;

    sget p2, Lo/x;->a:I

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->a(I)Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    move-result-object p2

    invoke-static {p1, p2}, Lo/CK;->a(Lo/CK;Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;)V

    :cond_0
    return-void
.end method
