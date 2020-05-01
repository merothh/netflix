.class Lo/ko$3$2;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ko$3;->d(Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/ko$3;


# direct methods
.method constructor <init>(Lo/ko$3;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lo/ko$3$2;->d:Lo/ko$3;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 943
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 944
    invoke-interface {p1}, Lo/AW;->B()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 946
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 947
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AZ;

    invoke-interface {p1}, Lo/AZ;->getId()Ljava/lang/String;

    move-result-object p1

    .line 948
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 949
    iget-object p2, p0, Lo/ko$3$2;->d:Lo/ko$3;

    iget-object p2, p2, Lo/ko$3;->e:Lo/ko;

    invoke-static {p2, p1}, Lo/ko;->a(Lo/ko;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
