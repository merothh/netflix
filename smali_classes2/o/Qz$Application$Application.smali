.class public final Lo/Qz$Application$Application;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Qz$Application;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Qz$Application;


# direct methods
.method constructor <init>(Lo/Qz$Application;)V
    .locals 0

    iput-object p1, p0, Lo/Qz$Application$Application;->c:Lo/Qz$Application;

    .line 122
    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AA;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1, p2}, Lo/cq;->s(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 129
    iget-object p2, p0, Lo/Qz$Application$Application;->c:Lo/Qz$Application;

    iget-object p2, p2, Lo/Qz$Application;->d:Lo/Qz;

    invoke-static {p2}, Lo/Qz;->e(Lo/Qz;)Ljava/util/HashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    iget-object v0, p0, Lo/Qz$Application$Application;->c:Lo/Qz$Application;

    iget-object v0, v0, Lo/Qz$Application;->e:Lo/BC;

    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile.profileGuid"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {p1}, Lo/aeN;->c()V

    .line 131
    iget-object p1, p0, Lo/Qz$Application$Application;->c:Lo/Qz$Application;

    iget-object p1, p1, Lo/Qz$Application;->d:Lo/Qz;

    iget-object p2, p0, Lo/Qz$Application$Application;->c:Lo/Qz$Application;

    iget-object p2, p2, Lo/Qz$Application;->e:Lo/BC;

    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lo/Qz;->e(Lo/Qz;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    move-object p1, p0

    check-cast p1, Lo/Qz$Application$Application;

    .line 133
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "DownloadedForYouController: error retrieving profile d4u list"

    .line 134
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
