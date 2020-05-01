.class Lo/LP$ActionBar;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic c:Lo/LP;


# direct methods
.method public constructor <init>(Lo/LP;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lo/LP$ActionBar;->c:Lo/LP;

    const-string p1, "CastPlayerHelper"

    .line 1137
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 1142
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1144
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1148
    :cond_0
    iget-object p2, p0, Lo/LP$ActionBar;->c:Lo/LP;

    invoke-static {p2}, Lo/LP;->q(Lo/LP;)V

    .line 1149
    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p2, Lo/LP$StateListAnimator;->b:Z

    .line 1150
    iget-object p1, p0, Lo/LP$ActionBar;->c:Lo/LP;

    invoke-static {p1}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object p1

    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object p2

    iget-boolean p2, p2, Lo/LP$StateListAnimator;->d:Z

    invoke-virtual {p1, p2}, Lo/LV;->d(Z)V

    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 1155
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1157
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1161
    :cond_0
    iget-object p1, p0, Lo/LP$ActionBar;->c:Lo/LP;

    invoke-static {p1}, Lo/LP;->q(Lo/LP;)V

    .line 1162
    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lo/LP$StateListAnimator;->b:Z

    .line 1163
    iget-object p1, p0, Lo/LP$ActionBar;->c:Lo/LP;

    invoke-static {p1}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object p1

    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object p2

    iget-boolean p2, p2, Lo/LP$StateListAnimator;->d:Z

    invoke-virtual {p1, p2}, Lo/LV;->d(Z)V

    :cond_1
    :goto_0
    return-void
.end method
