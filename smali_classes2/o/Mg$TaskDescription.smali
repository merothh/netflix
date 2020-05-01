.class Lo/Mg$TaskDescription;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Mg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field private c:Z

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lo/Mg$TaskDescription;->c:Z

    .line 248
    iput-object p2, p0, Lo/Mg$TaskDescription;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public e(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 253
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 255
    iget-boolean v0, p0, Lo/Mg$TaskDescription;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Mg$TaskDescription;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 257
    invoke-interface {p1}, Lo/AW;->B()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 259
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AZ;

    invoke-interface {p1}, Lo/AZ;->getId()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 262
    iget-object p2, p0, Lo/Mg$TaskDescription;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v1, Lo/Mg$Activity;

    iget-object v2, p0, Lo/Mg$TaskDescription;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v3, "nf_mdx"

    invoke-direct {v1, v3, v2}, Lo/Mg$Activity;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const/4 v2, 0x1

    invoke-interface {p2, p1, v0, v2, v1}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    .line 264
    iput-boolean v2, p0, Lo/Mg$TaskDescription;->c:Z

    :cond_0
    return-void
.end method
