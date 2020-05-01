.class public final Lo/DnsSdTxtRecord;
.super Lo/IpUtils;
.source ""


# instance fields
.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lo/IpUtils;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic a(Lo/DnsSdTxtRecord;Ljava/lang/Runnable;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lo/DnsSdTxtRecord;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lo/DnsSdTxtRecord;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lo/DnsSdTxtRecord;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lo/DnsSdTxtRecord;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 32
    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lo/DnsSdTxtRecord;->d:Ljava/lang/Runnable;

    .line 34
    :cond_0
    invoke-virtual {p0}, Lo/DnsSdTxtRecord;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    .line 17
    iget-object v0, p0, Lo/DnsSdTxtRecord;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lo/DnsSdTxtRecord$ActionBar;

    invoke-direct {v0, p0}, Lo/DnsSdTxtRecord$ActionBar;-><init>(Lo/DnsSdTxtRecord;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lo/DnsSdTxtRecord;->d:Ljava/lang/Runnable;

    .line 24
    invoke-virtual {p0}, Lo/DnsSdTxtRecord;->d()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/DnsSdTxtRecord;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
